IJDB = IJDB or {}

local DEADMINES = {}

DEADMINES.Name = IJ_DB_POI_DEADMINES_NAME
DEADMINES.MapContinentId = "2"
DEADMINES.MapZoneId = "32"
DEADMINES.MinLevel = 16
DEADMINES.MaxLevel = 24
DEADMINES.Entrances = {
    [1] = {
        MapContinentId = "2",
        MapZoneId = "38",
        MapCoordinateX = "42.5",
        MapCoordinateY = "72.7",
        Type = IJLib.EntranceIconType.Down,
    },
}

IJDB.POI.DEADMINES = DEADMINES
