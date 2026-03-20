IJDB = IJDB or {}

local WHC = {}

WHC.Name = IJ_DB_POI_WHC_NAME
WHC.MapContinentId = "1"
WHC.MapZoneId = "34"
WHC.MinLevel = 26
WHC.MaxLevel = 30
WHC.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "28",
        MapCoordinateX = "64.6",
        MapCoordinateY = "45.9",
        Type = IJLib.EntranceIconType.Up,
    },
}

IJDB.POI.WHC = WHC
