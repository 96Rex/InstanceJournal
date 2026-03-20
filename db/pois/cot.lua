IJDB = IJDB or {}

local COT = {}

COT.Name = IJ_DB_POI_COT_NAME
COT.MapContinentId = "1"
COT.MapZoneId = "4"
COT.MinLevel = 60
COT.MaxLevel = 60
COT.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "24",
        MapCoordinateX = "66.3",
        MapCoordinateY = "49.7",
        Type = IJLib.EntranceIconType.Right,
    },
}

IJDB.POI.COT = COT
