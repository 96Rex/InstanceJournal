IJDB = IJDB or {}

local BRM = {}

BRM.Name = IJ_DB_POI_BRM_NAME
BRM.MapContinentId = "2"
BRM.MapZoneId = "6"
BRM.MinLevel = 50
BRM.MaxLevel = 60
BRM.Entrances = {
    [1] = {
        MapContinentId = "2",
        MapZoneId = "26",
        MapCoordinateX = "35.5",
        MapCoordinateY = "84.4",
        Type = IJLib.EntranceIconType.Down,
    },
    [2] = {
        MapContinentId = "2",
        MapZoneId = "8",
        MapCoordinateX = "29.5",
        MapCoordinateY = "38.1",
        Type = IJLib.EntranceIconType.Up,
    },
}

IJDB.POI.BRM = BRM
