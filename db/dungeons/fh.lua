IJDB = IJDB or {}

local IS = IJLib.ItemSlot
local IT = IJLib.ItemType
local IQ = IJLib.Quality
local IC = IJLib.Challenges
local IMP = IJLib.MediaPath
local IMPD = IJLib.MediaPathDungeons
local IMPP = IJLib.MediaPathPortrait
local IMPF = IJLib.MediaPathFrame
local IMAF = IJLib.AbilityFlags

local instanceMediaAcronym = "fh\\"

local FH = {}

FH.Name = IJ_DB_DUNGEON_FH_NAME
FH.Story = IJ_DB_DUNGEON_FH_STORY
FH.Type = IJLib.InstanceType.Dungeon
FH.Background = IMP .. IMPD .. instanceMediaAcronym .. "background"
FH.GridBackground = IMP .. IMPD .. instanceMediaAcronym .. "grid-background"
FH.MapId = "46"
FH.IconScale = "1.0"
FH.MinLevel = 13
FH.MaxLevel = 20
FH.Entrances = {
    [1] = {
        MapContinentId = "2",
        MapZoneId = "10",
        MapCoordinateX = "66.9",
        MapCoordinateY = "40.3",
    },
}
FH.Bosses = {
    [1] = { -- NOTE: Missing abilities, Missing Loot
        Id = "tansha",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "tansha" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "tansha" .. IMPF,
        Name = IJ_DB_DUNGEON_FH_BOSS_NAME_tansha,
        Story = IJ_DB_DUNGEON_FH_BOSS_STORY_tansha,
        MapCoordinateX = "16.2",
        MapCoordinateY = "14.5",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "162",
                Icon = "INV_Misc_Cape_12",
                Name = IJ_LOOT_NAME_162,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Back,
                ItemType = IT.Cloth,
                DropChance = 25,
            },
        },
    },
    [2] = { -- NOTE: Missing abilities, Missing Loot
        Id = "ubukaz",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "ubukaz" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "ubukaz" .. IMPF,
        Name = IJ_DB_DUNGEON_FH_BOSS_NAME_ubukaz,
        Story = IJ_DB_DUNGEON_FH_BOSS_STORY_ubukaz,
        MapCoordinateX = "52.4",
        MapCoordinateY = "39.4",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "150",
                Icon = "INV_Gauntlets_11",
                Name = IJ_LOOT_NAME_150,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Hands,
                ItemType = IT.Mail,
                DropChance = 25,
            },
        },
    },
    [3] = { -- NOTE: Missing abilities, Missing Loot
        Id = "kanza",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "kanza" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "kanza" .. IMPF,
        Name = IJ_DB_DUNGEON_FH_BOSS_NAME_kanza,
        Story = IJ_DB_DUNGEON_FH_BOSS_STORY_kanza,
        MapCoordinateX = "32.4",
        MapCoordinateY = "45.8",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "205",
                Icon = "INV_Weapon_Shortblade_04",
                Name = IJ_LOOT_NAME_205,
                Quality = IQ.Uncommon,
                ItemSlot = IS.OneHand,
                ItemType = IT.Dagger,
                DropChance = 25,
            },
        },
        -- NOTE: Has blizzard ability
    },
    [4] = { -- NOTE: Missing abilities, Missing Loot
        Id = "hailar",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "hailar" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "hailar" .. IMPF,
        Name = IJ_DB_DUNGEON_FH_BOSS_NAME_hailar,
        Story = IJ_DB_DUNGEON_FH_BOSS_STORY_hailar,
        MapCoordinateX = "30.5",
        MapCoordinateY = "86.1",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "110",
                Icon = "INV_Weapon_Shortblade_07",
                Name = IJ_LOOT_NAME_110,
                Quality = IQ.Rare,
                ItemSlot = IS.MainHand,
                ItemType = IT.Sword,
                DropChance = 25,
            },
        },
    },
}

IJDB.DG.FH = FH
