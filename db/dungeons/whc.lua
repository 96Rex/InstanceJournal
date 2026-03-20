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

local instanceMediaAcronym = "whc\\"

local WHC = {}

WHC.Name = IJ_DB_DUNGEON_WHC_NAME
WHC.Story = IJ_DB_DUNGEON_WHC_STORY
WHC.Type = IJLib.InstanceType.Dungeon
WHC.Background = IMP .. IMPD .. instanceMediaAcronym .. "background"
WHC.GridBackground = IMP .. IMPD .. instanceMediaAcronym .. "grid-background"
WHC.MapId = "45"
WHC.IconScale = "1.0"
WHC.MinLevel = 26
WHC.MaxLevel = 30
WHC.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "34",
        MapCoordinateX = "68.7",
        MapCoordinateY = "25.7",
    },
}
WHC.Bosses = {
    [1] = { -- NOTE: Missing abilities, Missing Loot
        Id = "pathun",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "pathun" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "pathun" .. IMPF,
        Name = IJ_DB_DUNGEON_WHC_BOSS_NAME_pathun,
        Story = IJ_DB_DUNGEON_WHC_BOSS_STORY_pathun,
        MapCoordinateX = "33.1",
        MapCoordinateY = "44.3",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "33025",
                Icon = "INV_Weapon_Bow_05",
                Name = IJ_LOOT_NAME_33025,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Ranged,
                ItemType = IT.Bow,
                DropChance = 25,
            },
        },
    },
    [2] = { -- NOTE: Missing abilities, Missing Loot
        Id = "ahgktos",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "ahgktos" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "ahgktos" .. IMPF,
        Name = IJ_DB_DUNGEON_WHC_BOSS_NAME_ahgktos,
        Story = IJ_DB_DUNGEON_WHC_BOSS_STORY_ahgktos,
        MapCoordinateX = "26.3",
        MapCoordinateY = "9.7",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "33024",
                Icon = "INV_Weapon_ShortBlade_02",
                Name = IJ_LOOT_NAME_33024,
                Quality = IQ.Rare,
                ItemSlot = IS.OneHand,
                ItemType = IT.Dagger,
                DropChance = 25,
            },
        },
    },
    [3] = { -- NOTE: Missing abilities, Missing Loot
        Id = "vortalus",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "vortalus" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "vortalus" .. IMPF,
        Name = IJ_DB_DUNGEON_WHC_BOSS_NAME_vortalus,
        Story = IJ_DB_DUNGEON_WHC_BOSS_STORY_vortalus,
        MapCoordinateX = "36.8",
        MapCoordinateY = "62.0",
        MapId = "1",
        MapIsBelow = true,
        Loot = {
            [1] = {
                Id = "33030",
                Icon = "INV_Gauntlets_04",
                Name = IJ_LOOT_NAME_33030,
                Quality = IQ.Rare,
                ItemSlot = IS.Hands,
                ItemType = IT.Mail,
                DropChance = 25,
            },
        },
        -- NOTE: Gust of wind, Chain Lightning
    },
    [4] = { -- NOTE: Missing abilities, Missing Loot
        Id = "walgan",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "walgan" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "walgan" .. IMPF,
        Name = IJ_DB_DUNGEON_WHC_BOSS_NAME_walgan,
        Story = IJ_DB_DUNGEON_WHC_BOSS_STORY_walgan,
        MapCoordinateX = "18.2",
        MapCoordinateY = "68.7",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "33082",
                Icon = "INV_Weapon_Rifle_05",
                Name = IJ_LOOT_NAME_33082,
                Quality = IQ.Rare,
                ItemSlot = IS.TwoHand,
                ItemType = IT.TwoHandedAxe,
                DropChance = 25,
            },
        },
    },
    [5] = { -- NOTE: Missing abilities, Missing Loot
        Id = "narlgom",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "narlgom" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "narlgom" .. IMPF,
        Name = IJ_DB_DUNGEON_WHC_BOSS_NAME_narlgom,
        Story = IJ_DB_DUNGEON_WHC_BOSS_STORY_narlgom,
        MapCoordinateX = "36.8",
        MapCoordinateY = "56.8",
        MapId = "1",
        MapIsBelow = true,
        Loot = {
            [1] = {
                Id = "42276",
                Icon = "INV_Pants_12",
                Name = IJ_LOOT_NAME_42276,
                Quality = IQ.Rare,
                ItemSlot = IS.Legs,
                ItemType = IT.Leather,
                DropChance = 25,
            },
        },
    },
    [6] = { -- NOTE: Missing abilities, Missing Loot
        Id = "stormhoof",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "stormhoof" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "stormhoof" .. IMPF,
        Name = IJ_DB_DUNGEON_WHC_BOSS_NAME_stormhoof,
        Story = IJ_DB_DUNGEON_WHC_BOSS_STORY_stormhoof,
        MapCoordinateX = "40.5",
        MapCoordinateY = "56.0",
        MapId = "1",
        MapIsBelow = true,
        Loot = {
            [1] = {
                Id = "33043",
                Icon = "INV_Banner_01",
                Name = IJ_LOOT_NAME_33043,
                Quality = IQ.Rare,
                ItemSlot = IS.Head,
                ItemType = IT.Mail,
                DropChance = 25,
            },
        },
        -- NOTE: Corruption
    },
    [7] = {     -- NOTE: Missing abilities, Missing Loot
        Id = "shalk",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "shalk" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "shalk" .. IMPF,
        Name = IJ_DB_DUNGEON_WHC_BOSS_NAME_shalk,
        Story = IJ_DB_DUNGEON_WHC_BOSS_STORY_shalk,
        MapCoordinateX = "48.6",
        MapCoordinateY = "44.0",
        MapId = "1",
    },
}

IJDB.DG.WHC = WHC
