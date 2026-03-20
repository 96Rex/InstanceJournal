IJDB = IJDB or {}

local IS = IJLib.ItemSlot
local IT = IJLib.ItemType
local IQ = IJLib.Quality
local IMP = IJLib.MediaPath
local IMPD = IJLib.MediaPathDungeons
local IMPP = IJLib.MediaPathPortrait
local IMPF = IJLib.MediaPathFrame
local IMAF = IJLib.AbilityFlags
local IMCL = IJLib.Classes

local instanceMediaAcronym = "sfk\\"

local SFK = {}

SFK.Name = IJ_DB_DUNGEON_SFK_NAME
SFK.Story = IJ_DB_DUNGEON_SFK_STORY
SFK.Type = IJLib.InstanceType.Dungeon
SFK.Background = IMP .. IMPD .. instanceMediaAcronym .. "background"
SFK.GridBackground = IMP .. IMPD .. instanceMediaAcronym .. "grid-background"
SFK.MapId = "26"
SFK.IconScale = "1.0"
SFK.MinLevel = 20
SFK.MaxLevel = 28
SFK.Entrances = {
    [1] = {
        MapContinentId = "2",
        MapZoneId = "27",
        MapCoordinateX = "42.8",
        MapCoordinateY = "67.5",
    },
}
SFK.Bosses = {
    [1] = { -- NOTE: Missing abilities
        Id = "3914",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "rethilgore" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "rethilgore" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_3914,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_3914,
        MapCoordinateX = "82.7",
        MapCoordinateY = "77.0",
        MapId = "1",
        MapIsBelow = true,
        Loot = {
            [1] = {
                Id = "80713",
                Icon = "inv_chest_leather_07",
                Name = IJ_LOOT_NAME_80713,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Chest,
                ItemType = IT.Leather,
                DropChance = 35,
                LevelRequirement = 18,
            },
            [2] = {
                Id = "80714",
                Icon = "inv_belt_20",
                Name = IJ_LOOT_NAME_80714,
                Quality = IQ.Rare,
                ItemSlot = IS.Waist,
                ItemType = IT.Mail,
                DropChance = 35,
                LevelRequirement = 18,
            },
        }
    },
    [2] = { -- NOTE: Missing abilities
        Id = "3886",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "razorclaw" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "razorclaw" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_3886,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_3886,
        MapCoordinateX = "45.7",
        MapCoordinateY = "58.0",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "1292",
                Icon = "inv_axe_23",
                Name = IJ_LOOT_NAME_1292,
                Quality = IQ.Rare,
                ItemSlot = IS.OneHand,
                ItemType = IT.Axe,
                DropChance = 33,
                LevelRequirement = 20,
            },
            [2] = {
                Id = "6226",
                Icon = "inv_chest_cloth_24",
                Name = IJ_LOOT_NAME_6226,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Chest,
                ItemType = IT.Cloth,
                DropChance = 33,
                LevelRequirement = 18,
            },
            [3] = {
                Id = "6633",
                Icon = "inv_sword_16",
                Name = IJ_LOOT_NAME_6633,
                Quality = IQ.Uncommon,
                ItemSlot = IS.OneHand,
                ItemType = IT.Sword,
                DropChance = 33,
                LevelRequirement = 18,
            },
        }
    },
    [3] = { -- NOTE: Missing abilities
        Id = "3887",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "silverlaine" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "silverlaine" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_3887,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_3887,
        MapCoordinateX = "37.2",
        MapCoordinateY = "81.6",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "6321",
                Icon = "inv_belt_29",
                Name = IJ_LOOT_NAME_6321,
                Quality = IQ.Rare,
                ItemSlot = IS.Finger,
                DropChance = 50,
                LevelRequirement = 21,
            },
            [2] = {
                Id = "6323",
                Icon = "inv_mace_02",
                Name = IJ_LOOT_NAME_6323,
                Quality = IQ.Uncommon,
                ItemSlot = IS.MainHand,
                ItemType = IT.Mace,
                DropChance = 50,
                LevelRequirement = 20,
            },
            [3] = {
                Id = "80715",
                Icon = "inv_gauntlets_25",
                Name = IJ_LOOT_NAME_80715,
                Quality = IQ.Rare,
                ItemSlot = IS.Hands,
                ItemType = IT.Leather,
                DropChance = 35,
                LevelRequirement = 21,
            },
        }
    },
    [4] = { -- NOTE: Missing abilities
        Id = "61969",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "ironmane" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "ironmane" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_61969,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_61969,
        MapCoordinateX = "12.1",
        MapCoordinateY = "64.7",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "55382",
                Icon = "inv_helmet_53",
                Name = IJ_LOOT_NAME_55382,
                Quality = IQ.Rare,
                ItemSlot = IS.Head,
                ItemType = IT.Cloth,
                DropChance = 25,
                LevelRequirement = 20,
            },
            [2] = {
                Id = "55383",
                Icon = "spell_holy_greaterblessingofsalvation",
                Name = IJ_LOOT_NAME_55383,
                Quality = IQ.Rare,
                ItemSlot = IS.HeldInOffHand,
                DropChance = 25,
                LevelRequirement = 20,
            },
            [3] = {
                Id = "55384",
                Icon = "inv_sword_25",
                Name = IJ_LOOT_NAME_55384,
                Quality = IQ.Rare,
                ItemSlot = IS.OneHand,
                ItemType = IT.Sword,
                DropChance = 25,
                LevelRequirement = 20,
            },
            [4] = {
                Id = "55385",
                Icon = "inv_jewelry_ring_22",
                Name = IJ_LOOT_NAME_55385,
                Quality = IQ.Rare,
                ItemSlot = IS.Finger,
                DropChance = 25,
                LevelRequirement = 20,
            },
        }
    },
    [5] = { -- NOTE: Missing abilities
        Id = "4278",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "springvale" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "springvale" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_4278,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_4278,
        MapCoordinateX = "47.0",
        MapCoordinateY = "66.1",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "3191",
                Icon = "inv_axe_06",
                Name = IJ_LOOT_NAME_3191,
                Quality = IQ.Uncommon,
                ItemSlot = IS.TwoHand,
                ItemType = IT.TwoHandedAxe,
                DropChance = 50,
                LevelRequirement = 21,
            },
            [2] = {
                Id = "6320",
                Icon = "inv_shield_03",
                Name = IJ_LOOT_NAME_6320,
                Quality = IQ.Rare,
                ItemSlot = IS.OffHand,
                ItemType = IT.Shield,
                DropChance = 50,
                LevelRequirement = 23,
            },
            [3] = {
                Id = "80717",
                Icon = "inv_boots_chain_02",
                Name = IJ_LOOT_NAME_80717,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Feet,
                ItemType = IT.Mail,
                DropChance = 35,
                LevelRequirement = 22,
            },
        }
    },
    [6] = { -- NOTE: Missing abilities
        Id = "4279",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "odo" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "odo" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_4279,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_4279,
        MapCoordinateX = "76.6",
        MapCoordinateY = "70.9",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "6318",
                Icon = "inv_staff_27",
                Name = IJ_LOOT_NAME_6318,
                Quality = IQ.Rare,
                ItemSlot = IS.TwoHand,
                ItemType = IT.Staff,
                DropChance = 50,
                LevelRequirement = 21,
            },
            [2] = {
                Id = "6319",
                Icon = "inv_belt_03",
                Name = IJ_LOOT_NAME_6319,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Waist,
                ItemType = IT.Leather,
                DropChance = 50,
                LevelRequirement = 21,
            },
        }
    },
    [7] = { -- NOTE: Missing abilities
        Id = "3872",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "deathsworn" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "deathsworn" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_3872,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_3872,
        MapCoordinateX = "78.0",
        MapCoordinateY = "51.0",
        MapId = "1",
        IsRare = true,
        Loot = {
            [1] = {
                Id = "6641",
                Icon = "inv_sword_17",
                Name = IJ_LOOT_NAME_6641,
                Quality = IQ.Uncommon,
                ItemSlot = IS.TwoHand,
                ItemType = IT.TwoHandedSword,
                DropChance = 50,
                LevelRequirement = 21,
            },
            [2] = {
                Id = "6642",
                Icon = "inv_chest_chain_05",
                Name = IJ_LOOT_NAME_6642,
                Quality = IQ.Rare,
                ItemSlot = IS.Chest,
                ItemType = IT.Mail,
                DropChance = 50,
                LevelRequirement = 20,
            },
        }
    },
    [8] = { -- NOTE: Missing abilities
        Id = "4274",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "fenrus" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "fenrus" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_4274,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_4274,
        MapCoordinateX = "68.9",
        MapCoordinateY = "34.3",
        MapId = "1",
        MapIsBelow = true,
        Loot = {
            [1] = {
                Id = "3230",
                Icon = "inv_bracer_07",
                Name = IJ_LOOT_NAME_3230,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Wrist,
                ItemType = IT.Leather,
                DropChance = 50,
                LevelRequirement = 21,
            },
            [2] = {
                Id = "6340",
                Icon = "inv_misc_pelt_wolf_02",
                Name = IJ_LOOT_NAME_6340,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Back,
                ItemType = IT.Cloth,
                DropChance = 50,
                LevelRequirement = 21,
            },
        }
    },
    [9] = { -- NOTE: Missing abilities
        Id = "3927",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "nandos" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "nandos" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_3927,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_3927,
        MapCoordinateX = "70.5",
        MapCoordinateY = "28.9",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "80716",
                Icon = "inv_weapon_shortblade_27",
                Name = IJ_LOOT_NAME_80716,
                Quality = IQ.Rare,
                ItemSlot = IS.MainHand,
                ItemType = IT.FistWeapon,
                DropChance = 25,
                LevelRequirement = 23,
            },
            [2] = {
                Id = "6314",
                Icon = "inv_misc_cape_10",
                Name = IJ_LOOT_NAME_6314,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Back,
                ItemType = IT.Cloth,
                DropChance = 25,
                LevelRequirement = 22,
            },
            [3] = {
                Id = "3748",
                Icon = "inv_shoulder_05",
                Name = IJ_LOOT_NAME_3748,
                Quality = IQ.Rare,
                ItemSlot = IS.Shoulder,
                ItemType = IT.Cloth,
                DropChance = 50,
                LevelRequirement = 23,
            },
        }
    },
    [10] = { -- NOTE: Missing abilities
        Id = "4275",
        Portrait = IMP .. IMPD .. instanceMediaAcronym .. "arugal" .. IMPP,
        Frame = IMP .. IMPD .. instanceMediaAcronym .. "arugal" .. IMPF,
        Name = IJ_DB_DUNGEON_SFK_BOSS_NAME_4275,
        Story = IJ_DB_DUNGEON_SFK_BOSS_STORY_4275,
        MapCoordinateX = "73.8",
        MapCoordinateY = "6.9",
        MapId = "1",
        Loot = {
            [1] = {
                Id = "6220",
                Icon = "inv_weapon_shortblade_25",
                Name = IJ_LOOT_NAME_6220,
                Quality = IQ.Rare,
                ItemSlot = IS.OneHand,
                ItemType = IT.Dagger,
                DropChance = 33,
                LevelRequirement = 24,
            },
            [2] = {
                Id = "6324",
                Icon = "inv_chest_cloth_31",
                Name = IJ_LOOT_NAME_6324,
                Quality = IQ.Rare,
                ItemSlot = IS.Chest,
                ItemType = IT.Cloth,
                DropChance = 33,
                LevelRequirement = 24,
            },
            [3] = {
                Id = "6392",
                Icon = "inv_belt_10",
                Name = IJ_LOOT_NAME_6392,
                Quality = IQ.Rare,
                ItemSlot = IS.Waist,
                ItemType = IT.Cloth,
                DropChance = 33,
                LevelRequirement = 24,
            },
            [4] = {
                Id = "51217",
                Icon = "inv_misc_ribbon_01",
                Name = IJ_LOOT_NAME_51217,
                Quality = IQ.Uncommon,
                ItemSlot = IS.Transmog,
                DropChance = 1,
            },
        }
    },
}

IJDB.DG.SFK = SFK
