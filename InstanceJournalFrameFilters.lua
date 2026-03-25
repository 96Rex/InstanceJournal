function IJ_ClassFilterDropDown_Initialize()
    local info = {}
    info.text = IJ_GUI_ALLCLASSES
    info.value = "ALL"
    info.func = IJ_ClassFilter_OnClick
    info.checked = (IJ_FilterClass == "ALL")
    UIDropDownMenu_AddButton(info)

    for _, name in pairs(IJLib.Classes) do
        local color = IJLib.ClassColorLinks[name]
        local displayName = name

        if color and color.Hex then
            displayName = color.Hex .. name .. "|r"
        end

        info = {}
        info.text = displayName
        info.value = name
        info.func = IJ_ClassFilter_OnClick
        info.checked = (IJ_FilterClass == name)
        UIDropDownMenu_AddButton(info)
    end
end

function IJ_ClassFilter_OnClick()
    UIDropDownMenu_SetSelectedValue(IJ_ClassFilterDropDown, this.value)

    local displayText = this.value
    if this.value == "ALL" then
        displayText = IJ_GUI_ALLCLASSES
    else
        local color = IJLib.ClassColorLinks[this.value]
        if color and color.Hex then
            displayText = color.Hex .. this.value .. "|r"
        end
    end

    UIDropDownMenu_SetText(displayText, IJ_ClassFilterDropDown)
    IJ_FilterClass = this.value

    if IJ_ActiveInfoTab == 2 then
        if IJ_IsIstanceTabActive and IJ_SelectedInstance then
            IJ_PopulateLoot(IJ_SelectedInstance, true)
        elseif IJ_CurrentBoss then
            IJ_PopulateLoot(IJ_CurrentBoss, false)
        end
    end
end

function IJ_SlotFilterDropDown_Initialize()
    local info = {}
    info.text = IJ_GUI_ALLSLOTS
    info.value = "ALL"
    info.func = IJ_SlotFilter_OnClick
    info.checked = (IJ_FilterSlot == "ALL")
    UIDropDownMenu_AddButton(info)

    if IJ_AvailableSlots then
        table.sort(IJ_AvailableSlots, function(a, b)
            if a == IJLib.ItemSlot.Other then
                return false
            end

            if b == IJLib.ItemSlot.Other then
                return true
            end

            return a < b
        end)

        for _, slotVal in ipairs(IJ_AvailableSlots) do
            info = {}
            info.text = slotVal
            info.value = slotVal
            info.func = IJ_SlotFilter_OnClick
            info.checked = (IJ_FilterSlot == slotVal)
            UIDropDownMenu_AddButton(info)
        end
    end
end

function IJ_SlotFilter_OnClick()
    UIDropDownMenu_SetSelectedValue(IJ_SlotFilterDropDown, this.value)
    UIDropDownMenu_SetText(this.value == "ALL" and IJ_GUI_ALLSLOTS or this.value, IJ_SlotFilterDropDown)
    IJ_FilterSlot = this.value

    if IJ_ActiveInfoTab == 2 then
        if IJ_IsIstanceTabActive and IJ_SelectedInstance then
            IJ_PopulateLoot(IJ_SelectedInstance, true)
        elseif IJ_CurrentBoss then
            IJ_PopulateLoot(IJ_CurrentBoss, false)
        end
    end
end

function IJ_ContinentFilterDropDown_Initialize()
    local info = {}
    local currentFilter = IJ_ShowRaids and IJ_FilterContinent_Raid or IJ_FilterContinent_Dungeon

    info.text = IJ_GUI_ALLCONTINENTS
    info.value = "ALL"
    info.func = IJ_ContinentFilter_OnClick
    info.checked = (currentFilter == "ALL")
    UIDropDownMenu_AddButton(info)

    for _, contName in pairs(IJLib.Continents) do
        info = {}
        info.text = contName
        info.value = contName
        info.func = IJ_ContinentFilter_OnClick
        info.checked = (currentFilter == contName)
        UIDropDownMenu_AddButton(info)
    end
end

function IJ_ContinentFilter_OnClick()
    if IJ_ShowRaids then
        IJ_FilterContinent_Raid = this.value
    else
        IJ_FilterContinent_Dungeon = this.value
    end

    UIDropDownMenu_SetSelectedValue(IJ_ContinentFilterDropDown, this.value)
    UIDropDownMenu_SetText(this.value == "ALL" and IJ_GUI_ALLCONTINENTS or this.value, IJ_ContinentFilterDropDown)

    IJ_PopulateInstanceGrid()
end

function IJ_InstanceNavDropDown_Initialize()
    local list = {}

    if IJ_ShowRaids and IJDB then
        local raids = IJDB.R or IJDB.R

        if raids then
            for _, r in pairs(raids) do
                table.insert(list, r)
            end
        end
    elseif not IJ_ShowRaids and IJDB and IJDB.DG then
        for _, dg in pairs(IJDB.DG) do
            table.insert(list, dg)
        end
    end

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

    for _, instance in ipairs(list) do
        local info = {}
        info.text = instance.Name
        info.value = instance
        info.func = function()
            UIDropDownMenu_SetSelectedValue(IJ_InstanceNavDropDown, this.value)
            IJ_ShowEncounter(this.value)
        end

        info.checked = (IJ_SelectedInstance == instance)
        UIDropDownMenu_AddButton(info)
    end
end

function IJ_BossNavDropDown_Initialize()
    if not IJ_SelectedInstance or not IJ_SelectedInstance.Bosses then
        return
    end

    local list = {}

    for _, boss in ipairs(IJ_SelectedInstance.Bosses) do
        table.insert(list, boss)
    end

    for _, boss in ipairs(list) do
        local info = {}
        info.text = boss.Name
        info.value = boss
        info.func = function()
            UIDropDownMenu_SetSelectedValue(IJ_BossNavDropDown, this.value)
            IJ_ShowBoss(this.value)
        end

        info.checked = (IJ_CurrentBoss == boss)
        UIDropDownMenu_AddButton(info)
    end
end

function IJ_UpdateNavBars()
    if not IJ_InstanceNavBar or not IJ_BossNavBar then
        return
    end

    if IJ_InstanceSelectPanel and IJ_InstanceSelectPanel:IsShown() then
        IJ_InstanceNavBar:Hide()
        IJ_BossNavBar:Hide()

        return
    end

    if IJ_SearchResultsPanel and IJ_SearchResultsPanel:IsShown() then
        IJ_InstanceNavBar:Hide()
        IJ_BossNavBar:Hide()

        return
    end

    if IJ_SelectedInstance then
        IJ_InstanceNavBar:Show()
        IJ_InstanceNavBar.text:SetText(IJ_SelectedInstance.Name)

        local textWidth = IJ_InstanceNavBar.text:GetStringWidth()
        local bodyWidth = 10 + textWidth + 2 + 24 + 4

        IJ_InstanceNavBar.body:SetWidth(bodyWidth)
        IJ_InstanceNavBar:SetWidth(bodyWidth + 26)

        if IJ_IsIstanceTabActive then
            IJ_InstanceNavBar.sel:Show()
            IJ_InstanceNavBar:Disable()
            IJ_InstanceNavBar.hl:Hide()
        else
            IJ_InstanceNavBar.sel:Hide()
            IJ_InstanceNavBar:Enable()
        end
    else
        IJ_InstanceNavBar:Hide()
    end

    if IJ_CurrentBoss and not IJ_IsIstanceTabActive then
        IJ_BossNavBar:Show()
        IJ_BossNavBar.text:SetText(IJ_CurrentBoss.Name)

        local textWidth = IJ_BossNavBar.text:GetStringWidth()
        local bodyWidth = 10 + textWidth + 2 + 24 + 4

        IJ_BossNavBar.body:SetWidth(bodyWidth)
        IJ_BossNavBar:SetWidth(bodyWidth + 26)
        IJ_BossNavBar.sel:Show()
        IJ_BossNavBar:Disable()
        IJ_BossNavBar.hl:Hide()
    else
        IJ_BossNavBar:Hide()
    end
end
