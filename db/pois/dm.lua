IJDB = IJDB or {}

local DM = {}

DM.Name = IJ_DB_POI_DM_NAME
DM.MapContinentId = "1"
DM.MapZoneId = "8"
DM.MinLevel = 55
DM.MaxLevel = 60
DM.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "12",
        MapCoordinateX = "59.1",
        MapCoordinateY = "43.3",
        Type = IJLib.EntranceIconType.Up,
    },
}

IJDB.POI.DM = DM
