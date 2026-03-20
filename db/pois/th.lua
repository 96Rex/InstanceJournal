IJDB = IJDB or {}

local TH = {}

TH.Name = IJ_DB_POI_TH_NAME
TH.MapContinentId = "1"
TH.MapZoneId = "30"
TH.MinLevel = 50
TH.MaxLevel = 60
TH.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "2",
        MapCoordinateX = "38.5",
        MapCoordinateY = "34.1",
        Type = IJLib.EntranceIconType.Left,
    },
    [2] = {
        MapContinentId = "1",
        MapZoneId = "19",
        MapCoordinateX = "50.6",
        MapCoordinateY = "95.9",
        Type = IJLib.EntranceIconType.Left,
    },
}

IJDB.POI.TH = TH
