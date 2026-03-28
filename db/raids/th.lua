IJDB = IJDB or {}

local IS = IJLib.ItemSlot
local IT = IJLib.ItemType
local IQ = IJLib.Quality
local IMP = IJLib.MediaPath
local IMPR = IJLib.MediaPathRaids
local IMPP = IJLib.MediaPathPortrait
local IMPF = IJLib.MediaPathFrame
local IMAF = IJLib.AbilityFlags
local IMCL = IJLib.Classes
local IMI = IJLib.MapId
local IZI = IJLib.ZoneId

local instanceMediaAcronym = "th\\"

local TH = {}

TH.Name = IJ_DB_RAID_TH_NAME
TH.Story = IJ_DB_RAID_TH_STORY
TH.Type = IJLib.InstanceType.Raid
TH.Background = IMP .. IMPR .. instanceMediaAcronym .. "background"
TH.GridBackground = IMP .. IMPR .. instanceMediaAcronym .. "grid-background"
TH.MapId = IMI.TimbermawHold
TH.IconScale = 0.8
TH.MinLevel = 60
TH.MaxLevel = 60
TH.Entrances = {
    [1] = {
        MapContinentId = IMI.Kalimdor,
        MapZoneId = IZI.TimbermawHold,
        MapCoordinateX = 16.8,
        MapCoordinateY = 43.2,
    },
}
TH.Bosses = {
    [1] = { -- NOTE: Missing abilities, Missing loot
        Id = "karrsh",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "karrsh" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "karrsh" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_karrsh,
        Story = IJ_DB_RAID_TH_BOSS_STORY_karrsh,
        MapCoordinateX = 31.0,
        MapCoordinateY = 73.5,
    },
    [2] = { -- NOTE: Missing abilities, Missing loot
        Id = "rotgrowl",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "rotgrowl" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "rotgrowl" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_rotgrowl,
        Story = IJ_DB_RAID_TH_BOSS_STORY_rotgrowl,
        MapCoordinateX = 15.1,
        MapCoordinateY = 59.3,
    },
    [3] = { -- NOTE: Missing abilities, Missing loot
        Id = "loktanag",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "loktanag" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "loktanag" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_loktanag,
        Story = IJ_DB_RAID_TH_BOSS_STORY_loktanag,
        MapCoordinateX = 14.7,
        MapCoordinateY = 50.0,
    },
    [4] = { -- NOTE: Missing abilities, Missing loot
        Id = "trioch",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "trioch" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "trioch" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_trioch,
        Story = IJ_DB_RAID_TH_BOSS_STORY_trioch,
        MapCoordinateX = 54.7,
        MapCoordinateY = 64.7,
    },
    [5] = { -- NOTE: Missing abilities, Missing loot
        Id = "selenaxx",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "selenaxx" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "selenaxx" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_selenaxx,
        Story = IJ_DB_RAID_TH_BOSS_STORY_selenaxx,
        MapCoordinateX = 45.7,
        MapCoordinateY = 58.4,

    },
    [6] = { -- NOTE: Missing abilities, Missing loot
        Id = "ormanos",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "ormanos" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "ormanos" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_ormanos,
        Story = IJ_DB_RAID_TH_BOSS_STORY_ormanos,
        MapCoordinateX = 32.4,
        MapCoordinateY = 36.3,
    },
    [7] = { -- NOTE: Missing abilities, Missing loot
        Id = "partath",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "partath" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "partath" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_partath,
        Story = IJ_DB_RAID_TH_BOSS_STORY_partath,
        MapCoordinateX = 22.2,
        MapCoordinateY = 8.4,
    },
    [8] = { -- NOTE: Missing abilities, Missing loot
        Id = "kronn",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "kronn" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "kronn" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_kronn,
        Story = IJ_DB_RAID_TH_BOSS_STORY_kronn,
        MapCoordinateX = 42.4,
        MapCoordinateY = 30.7,

    },
    [9] = { -- NOTE: Missing abilities, Missing loot
        Id = "ursol",
        Portrait = IMP .. IMPR .. instanceMediaAcronym .. "ursol" .. IMPP,
        Frame = IMP .. IMPR .. instanceMediaAcronym .. "ursol" .. IMPF,
        Name = IJ_DB_RAID_TH_BOSS_NAME_ursol,
        Story = IJ_DB_RAID_TH_BOSS_STORY_ursol,
        MapCoordinateX = 49.5,
        MapCoordinateY = 37.8,
    },
}

IJDB.R.TH = TH
