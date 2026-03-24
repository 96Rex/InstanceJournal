--填充首页副本网格
function IJ_PopulateInstanceGrid()
    local grid = IJ_InstanceGridChild
    local scroll = IJ_InstanceGridScroll

    if not grid then
        return
    end

    for _, btn in pairs(IJ_InstanceButtons) do
        btn:Hide()
    end

    local list = {}
    local sourceList = {}

    if IJ_ShowRaids and IJDB and IJDB.R then
        sourceList = IJDB.R
    elseif not IJ_ShowRaids and IJDB and IJDB.DG then
        sourceList = IJDB.DG
    end

    local currentFilter = IJ_ShowRaids and IJ_FilterContinent_Raid or IJ_FilterContinent_Dungeon

    for _, entry in pairs(sourceList) do
        local shouldAdd = false

        -- ================== 修改代码开始 ==================
        if currentFilter == "ALL" then
            shouldAdd = true
        else
            -- 检查副本是否有入口
            if entry.Entrances then
                -- 遍历所有入口，只要有一个在当前大陆就显示
                for _, ent in pairs(entry.Entrances) do
                    local continentId = ent.MapContinentId
                    
                    if continentId then
                        if currentFilter == IJLib.Continents.Kalimdor and continentId == 1 then
                            shouldAdd = true
                            break
                        elseif currentFilter == IJLib.Continents.EasternKingdoms and continentId == 2 then
                            shouldAdd = true
                            break
                        end
                    end
                end
            else
                -- 没有入口的副本（如世界BOSS）总是显示
                shouldAdd = true
            end
        end
        -- ================== 修改代码结束 ==================

        if shouldAdd then
            table.insert(list, entry)
        end
    end
	
	-- 列表排序(名字A到Z)
    -- table.sort(list, function(a, b)
        -- return (a.Name or "") < (b.Name or "")
    -- end)
	
	-- 列表排序(按等级)
	-- table.sort(list, function(a, b)
		-- local aLevel = a.MinLevel or 0
		-- local bLevel = b.MinLevel or 0
		-- if aLevel ~= bLevel then
			-- return aLevel < bLevel  -- 按最低等级排序
		-- end
		-- return (a.Name or "") < (b.Name or "")
	-- end)
	

	-- 自定义排序
	local priorityOrder = {
		--副本
		["怒焰裂谷"] = 1,
		["霜鬃山谷"] = 2,
		["哀嚎洞穴"] = 3,
		["死亡矿井"] = 4,

		["影牙城堡"] = 5,
		["黑暗深渊"] = 6,
		["监狱"] = 7,
		["风角峡谷"] = 8,

		["龙喉居所"] = 9,
		["诺莫瑞根"] = 10,
		["剃刀沼泽"] = 11,
		["剃刀高地"] = 12,

		["血色修道院（墓地）"] = 13,
		["血色修道院（图书馆）"] = 14,
		["血色修道院（军械库）"] = 15,
		["血色修道院（大教堂）"] = 16,
		
		["新月林地"] = 17,
		["风暴废墟"] = 18,
		["奥达曼"] = 19,
		["祖尔法拉克"] = 20,

		["吉尔尼斯城"] = 21,
		["玛拉顿"] = 22,
		["沉没的神庙"] = 23,
		["仇恨熔炉"] = 24,

		["黑石深渊"] = 25,
		["厄运之槌（东）"] = 26,
		["厄运之槌（西）"] = 27,
		["厄运之槌（北）"] = 28,
		
		["黑石塔下层"] = 29,
		["黑石塔上层"] = 30,
		["通灵学院"] = 31,
		["斯坦索姆"] = 32,
		
		["卡拉赞墓穴"] = 33,
		["暴风城地牢"] = 34,
		["黑色沼泽"] = 35,

		--团本
		
		["卡拉赞大厅"] = 1,
		["安其拉废墟"] = 2,
		["祖尔格拉布"] = 3,
		["奥妮克希亚的巢穴"] = 4,

		["熔火之心"] = 5,
		["黑翼之巢"] = 6,
		["纳克萨玛斯"] = 7,
		["翡翠圣殿"] = 8,

		["木喉要塞"] = 9,
		["安其拉神殿"] = 10,
		["卡拉赞之塔"] = 11,
		["世界BOSS"] = 12,


	}
	table.sort(list, function(a, b)
		local aOrder = priorityOrder[a.Name] or 999
		local bOrder = priorityOrder[b.Name] or 999
		if aOrder ~= bOrder then
			return aOrder < bOrder
		end
		return (a.Name or "") < (b.Name or "")
	end)


    local col = 0
    local row = 0
    local pad = 12
    local topPad = 0
    local bottomPad = 12

    for i, entry in ipairs(list) do
        local btn = IJ_InstanceButtons[i]

        if not btn then
            btn = CreateFrame("Button", "IJ_InstBtn" .. i, grid)
            btn:SetWidth(IJ_INSTANCE_BTN_W)
            btn:SetHeight(IJ_INSTANCE_BTN_H)

            local bg = btn:CreateTexture(nil, "BACKGROUND")
            bg:SetPoint("TOPLEFT", btn, "TOPLEFT", 0, 0)
            bg:SetPoint("BOTTOMRIGHT", btn, "BOTTOMRIGHT", 0, 0)
            btn.bg = bg

            local name = btn:CreateFontString(nil, "OVERLAY", "IJ_QuestTitleFont")
            name:SetWidth(IJ_INSTANCE_BTN_W - 24)
            name:SetHeight(0)
            name:SetPoint("TOP", btn, "TOP", 0, -15)
            name:SetJustifyV("TOP")
            name:SetTextColor(0.9, 0.78, 0.3)
            name:SetShadowColor(0, 0, 0)
            btn.nameText = name

            local hl = btn:CreateTexture(nil, "HIGHLIGHT")
            hl:SetPoint("TOPLEFT", btn, "TOPLEFT", 2, -2)
            hl:SetPoint("BOTTOMRIGHT", btn, "BOTTOMRIGHT", -2, 2)
            hl:SetTexture("Interface\\QuestFrame\\UI-QuestLogTitleHighlight")
            hl:SetBlendMode("ADD")
            hl:SetVertexColor(0.6, 0.55, 0.2, 0.5)

            btn:SetNormalTexture("")
            IJ_SetDarkBackdrop(btn, 2)

            btn:SetBackdropColor(0, 0, 0, 0)

            btn:SetScript("OnClick", function()
                IJ_ShowEncounter(this.entry)
            end)

            IJ_InstanceButtons[i] = btn
        end

        if entry.GridBackground and entry.GridBackground ~= "" then
            btn.bg:SetTexture(entry.GridBackground)
            btn.bg:SetTexCoord(0, 0.68, 0, 0.75)
            btn.bg:SetVertexColor(1, 1, 1, 1)
        end

        btn.nameText:SetText(entry.Name)
        btn.entry = entry
        btn:ClearAllPoints()
        btn:SetPoint("TOPLEFT", col * (IJ_INSTANCE_BTN_W + pad) + pad + 6,
            -(topPad + row * (IJ_INSTANCE_BTN_H + pad)))
        btn:Show()

        col = col + 1

        if col >= IJ_INSTANCE_COLS then
            col = 0
            row = row + 1
        end
    end

    local totalRows = math.ceil(math.max(1, table.getn(list)) / IJ_INSTANCE_COLS)
    local totalHeight = topPad + (totalRows * IJ_INSTANCE_BTN_H) + ((totalRows - 1) * pad) + bottomPad

    grid:SetHeight(math.max(scroll:GetHeight(), totalHeight))

    if scroll.UpdateScrollBar then
        scroll:UpdateScrollBar()
    end
end
--填充具体副本信息
function IJ_PopulateInstanceInfo(instance)
    local child = IJ_InstanceChild

    if not child then
        return
    end

    if IJ_InstanceStoryText then
        IJ_InstanceStoryText:SetText(instance.Story or "")
    end

    if IJ_InstanceBackgroundTitleBackgroundLabel then
        IJ_InstanceBackgroundTitleBackgroundLabel:SetText(instance.Name or "")
    end

    if IJ_InstanceBackground and instance.Background then
        if not IJ_InstanceBackground.bgTexture then
            IJ_InstanceBackground.bgTexture = IJ_InstanceBackground:CreateTexture(nil, "BACKGROUND")
            IJ_InstanceBackground.bgTexture:SetPoint("TOPLEFT", IJ_InstanceBackground, "TOPLEFT", 0, 0)
            IJ_InstanceBackground.bgTexture:SetPoint("BOTTOMRIGHT", IJ_InstanceBackground, "BOTTOMRIGHT", 0, 0)
        end

        IJ_InstanceBackground.bgTexture:SetTexture(instance.Background)
        IJ_InstanceBackground.bgTexture:SetTexCoord(0, 0.76953125, 0, 0.6640625)
    end

    local textHeight = IJ_InstanceStoryText and IJ_InstanceStoryText:GetHeight() or 0
    child:SetHeight(textHeight - 16)

    if IJ_InstanceScroll and IJ_InstanceScroll.UpdateScrollBar then
        IJ_InstanceScroll:UpdateScrollBar()
    end
end
--填充具体领主列表
function IJ_PopulateBossList(instance)
    local child = IJ_BossListChild

    if not child then
        return
    end

    for _, btn in pairs(IJ_BossButtons) do
        btn:Hide()
    end

    local bosses = instance.Bosses or {}
    local yOffset = 10

    for i, boss in ipairs(bosses) do
        local btn = IJ_BossButtons[i]

        if not btn then
            btn = CreateFrame("Button", "IJ_BossBtn" .. i, child)
            btn:SetWidth(IJ_BOSS_LIST_W - 40)
            btn:SetHeight(IJ_BOSS_BTN_H)

            btn:SetNormalTexture(IJLib.MediaPath .. "ui\\boss-bar")
            if btn:GetNormalTexture() then
                btn:GetNormalTexture():SetDrawLayer("BACKGROUND")
                btn:GetNormalTexture():SetTexCoord(0, 0.6484, 0, 1)
            end

            btn:SetPushedTexture(IJLib.MediaPath .. "ui\\boss-bar-dw")
            if btn:GetPushedTexture() then
                btn:GetPushedTexture():SetDrawLayer("BORDER")
                btn:GetPushedTexture():SetTexCoord(0, 0.6484, 0, 1)
            end

            local hl = btn:CreateTexture(nil, "BORDER")
            hl:SetTexture(IJLib.MediaPath .. "ui\\boss-bar-hl")
            hl:SetTexCoord(0, 0.6484, 0, 1)
            hl:SetBlendMode("ADD")
            hl:SetAllPoints(btn)
            hl:Hide()
            btn.customHighlight = hl

            local bossFrame = btn:CreateTexture(nil, "OVERLAY")
            bossFrame:SetWidth(64)
            bossFrame:SetHeight(64)
            bossFrame:SetPoint("LEFT", 8, 12)
            btn.bossFrame = bossFrame

            local nameT = btn:CreateFontString(nil, "OVERLAY", "IJ_GameFontNormalSemiLarge")
            nameT:SetPoint("LEFT", bossFrame, "RIGHT", 10, -12)
            nameT:SetWidth(IJ_BOSS_LIST_W - 137)
            nameT:SetJustifyH("LEFT")
            nameT:SetTextColor(0.9, 0.78, 0.67)
            btn.nameText = nameT

            btn:SetScript("OnEnter", function()
                this.customHighlight:Show()
            end)

            btn:SetScript("OnLeave", function()
                if not this.isBossSelected then
                    this.customHighlight:Hide()
                end
            end)

            btn:SetScript("OnClick", function()
                PlaySound("igAbiliityPageTurn")
                IJ_ShowBoss(this.boss)
            end)

            IJ_BossButtons[i] = btn
        end

        btn.bossFrame:SetTexture(boss.Frame)

        local bossName = boss.Name

        if boss.IsRare and boss.IsRare == true then
            bossName = bossName .. IJLib.Colors.LightGray.Hex .. " [" .. IJ_GUI_RARE .. "]|r"
        end

        btn.nameText:SetText(bossName)
        btn.boss = boss

        btn:ClearAllPoints()
        btn:SetPoint("TOPLEFT", 8, -yOffset)
        btn:Show()

        yOffset = yOffset + IJ_BOSS_BTN_H + 10
    end

    child:SetHeight(math.max(IJ_CONTENT_H, yOffset))

    if IJ_BossListScroll.UpdateScrollBar then
        IJ_BossListScroll:UpdateScrollBar()
    end

    if bosses[1] then
        IJ_ShowBoss(bosses[1])
        IJ_IsIstanceTabActive = true
        IJ_UpdateInfoTabs()
    end
end
--点击领主时
function IJ_ShowBoss(boss)
    if IJ_BossPortraitTex then
        IJ_BossPortraitTex:SetTexture(boss.Portrait)
    end

    if IJ_BossNameLabel then
        IJ_BossNameLabel:SetText(boss.Name)
    end

    if IJ_BossStoryText then
        IJ_BossStoryText:SetText(boss.Story or "")
        IJ_BossStoryText:SetWidth(IJ_INFO_W - 40)
        IJ_BossStoryText:SetHeight(0)
    end

    IJ_PopulateOverview(boss)
    IJ_PopulateLoot(boss, false)

    if IJ_IsIstanceTabActive then
        IJ_IsIstanceTabActive = false
    end

	IJ_ActiveInfoTab = 2--默认打开战利品列表 20260323 Tokai
    IJ_UpdateInfoTabs()


    -- ================== 修复下拉列表勾选状态 ==================
    -- 更新BOSS下拉菜单的状态
    if IJ_BossNavDropDown then
        UIDropDownMenu_SetSelectedValue(IJ_BossNavDropDown, boss)
        UIDropDownMenu_SetText(boss.Name or "", IJ_BossNavDropDown)
    end
    
    -- 更新BOSS导航栏
    if IJ_BossNavBar and IJ_BossNavBar.text then
        IJ_BossNavBar.text:SetText(boss.Name or "")
    end

    -- 更新全局变量
    IJ_CurrentBoss = boss
    -- ================== 修复下拉列表勾选状态 ==================

    local selectedIndex = nil

    for i, btn in ipairs(IJ_BossButtons) do
        if btn:GetNormalTexture() then
            btn:GetNormalTexture():SetVertexColor(1, 1, 1, 1)
        end

        if btn.boss == boss then
            btn.isBossSelected = true
            btn.customHighlight:Show()

            selectedIndex = i
        else
            btn.isBossSelected = false
            btn.customHighlight:Hide()
        end
    end

    if selectedIndex and IJ_BossListScroll and IJ_BossListScroll.bar then
        local btnTop = 10 + (selectedIndex - 1) * (IJ_BOSS_BTN_H + 10)
        local btnBottom = btnTop + IJ_BOSS_BTN_H
        local scrollBar = IJ_BossListScroll.bar
        local currentScroll = scrollBar:GetValue()
        local viewHeight = IJ_BossListScroll:GetHeight()
        local minVal, maxVal = scrollBar:GetMinMaxValues()
        local newScroll = currentScroll

        if btnTop < currentScroll then
            newScroll = btnTop - 10
        elseif btnBottom > currentScroll + viewHeight then
            newScroll = btnBottom - viewHeight + 10
        end

        if newScroll < minVal then
            newScroll = minVal
        end

        if newScroll > maxVal then
            newScroll = maxVal
        end

        scrollBar:SetValue(newScroll)
    end
end
--点击副本时
function IJ_ShowEncounter(instance)
    IJ_SelectedInstance = instance

    -- ================== 修复下拉列表勾选状态 ==================
    -- 更新副本下拉菜单的状态
    if IJ_InstanceNavDropDown then
        UIDropDownMenu_SetSelectedValue(IJ_InstanceNavDropDown, instance)
        UIDropDownMenu_SetText(instance.Name or "", IJ_InstanceNavDropDown)
    end
    
    -- 清除BOSS下拉菜单的选中状态
    if IJ_BossNavDropDown then
        UIDropDownMenu_SetSelectedValue(IJ_BossNavDropDown, nil)
        UIDropDownMenu_SetText("", IJ_BossNavDropDown)
    end
    
    -- 清除BOSS相关状态
    IJ_CurrentBoss = nil
    
    -- 清除BOSS导航栏
    if IJ_BossNavBar and IJ_BossNavBar.text then
        IJ_BossNavBar.text:SetText("")
    end
    
    -- 清除BOSS名字栏
    if IJ_BossNameLabel then
        IJ_BossNameLabel:SetText("")
    end
    -- ================== 修复下拉列表勾选状态 ==================

    if IJ_SearchResultsPanel then
        IJ_SearchResultsPanel:Hide()
    end

    if IJ_InstanceSelectPanel then
        IJ_InstanceSelectPanel:Hide()
    end

    if IJ_EncounterPanel then
        IJ_EncounterPanel:Show()
    end

    if IJ_EncounterTitleText then
        IJ_EncounterTitleText:SetText(instance.Name or "")
    end

    if IJ_HomeButton then
        IJ_HomeButton:Enable()
    end
	
    IJ_PopulateInstanceInfo(instance)
    IJ_PopulateBossList(instance)
	
	-- ================== 修复下拉列表勾选状态 ==================
    -- 更新导航栏
    IJ_UpdateNavBars()
    -- ================== 修复下拉列表勾选状态 ==================
end
--点击首页时
function IJ_ShowInstanceSelect()
    if IJ_SearchResultsPanel then
        IJ_SearchResultsPanel:Hide()
    end

    if IJ_EncounterPanel then
        IJ_EncounterPanel:Hide()
    end

    if IJ_BossListScroll then
        IJ_BossListScroll:Show()
    end

    if IJ_InfoPanel then
        IJ_InfoPanel:Show()
    end

    if IJ_InstanceSelectPanel then
        IJ_InstanceSelectPanel:Show()
    end

    if IJ_HomeButton then
        IJ_HomeButton:Disable()
    end

    if IJ_InstanceSelectHeader then
        IJ_InstanceSelectHeader:SetText(IJ_ShowRaids and IJ_GUI_TABRAIDS or IJ_GUI_TABDUNGEONS)
    end
	
    local currentFilter = IJ_ShowRaids and IJ_FilterContinent_Raid or IJ_FilterContinent_Dungeon

    if IJ_ContinentFilterDropDown then
        UIDropDownMenu_SetSelectedValue(IJ_ContinentFilterDropDown, currentFilter)
        local displayText = (currentFilter == "ALL") and IJ_GUI_ALLCONTINENTS or currentFilter
        UIDropDownMenu_SetText(displayText, IJ_ContinentFilterDropDown)
    end

    IJ_PopulateInstanceGrid()
    IJ_UpdateNavBars()
end
