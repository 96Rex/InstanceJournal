IJDB = IJDB or {}

local WC = {}

WC.Name = IJ_DB_POI_WC_NAME
WC.MapContinentId = "1"
WC.MapZoneId = "33"
WC.MinLevel = 16
WC.MaxLevel = 25
WC.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "27",
        MapCoordinateX = "46.1",
        MapCoordinateY = "35.8",
        Type = IJLib.EntranceIconType.Up,
    },
}

IJDB.POI.WC = WC
