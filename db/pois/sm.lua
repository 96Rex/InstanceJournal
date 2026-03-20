IJDB = IJDB or {}

local SM = {}

SM.Name = IJ_DB_POI_SM_NAME
SM.MapContinentId = "2"
SM.MapZoneId = "25"
SM.MinLevel = 30
SM.MaxLevel = 45
SM.Entrances = {
    [1] = {
        MapContinentId = "2",
        MapZoneId = "34",
        MapCoordinateX = "83.0",
        MapCoordinateY = "33.6",
        Type = IJLib.EntranceIconType.Right,
    },
}

IJDB.POI.SM = SM
