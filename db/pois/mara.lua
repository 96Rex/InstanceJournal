IJDB = IJDB or {}

local MARA = {}

MARA.Name = IJ_DB_POI_MARA_NAME
MARA.MapContinentId = "1"
MARA.MapZoneId = "17"
MARA.MinLevel = 43
MARA.MaxLevel = 54
MARA.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "7",
        MapCoordinateX = "29.2",
        MapCoordinateY = "63.0",
        Type = IJLib.EntranceIconType.Left,
    },
}

IJDB.POI.MARA = MARA
