IJDB = IJDB or {}

local TT = {}

TT.Name = IJ_DB_POI_TT_NAME
TT.MapContinentId = "1"
TT.MapZoneId = "31"
TT.MinLevel = 48
TT.MaxLevel = 60
TT.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "11",
        MapCoordinateX = "65.4",
        MapCoordinateY = "7.7",
        Type = IJLib.EntranceIconType.Up,
    },
    [2] = {
        MapContinentId = "1",
        MapZoneId = "18",
        MapCoordinateX = "35.7",
        MapCoordinateY = "73.7",
        Type = IJLib.EntranceIconType.Down,
    },
    [3] = {
        MapContinentId = "1",
        MapZoneId = "35",
        MapCoordinateX = "27.1",
        MapCoordinateY = "36.1",
        Type = IJLib.EntranceIconType.Left,
    },
}

IJDB.POI.TT = TT
