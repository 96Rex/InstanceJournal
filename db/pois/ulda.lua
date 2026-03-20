IJDB = IJDB or {}

local ULDA = {}

ULDA.Name = IJ_DB_POI_ULDA_NAME
ULDA.MapContinentId = "2"
ULDA.MapZoneId = "35"
ULDA.MinLevel = 41
ULDA.MaxLevel = 50
ULDA.Entrances = {
    [1] = {
        MapContinentId = "2",
        MapZoneId = "4",
        MapCoordinateX = "43.0",
        MapCoordinateY = "13.9",
        Type = IJLib.EntranceIconType.Left,
    },
}

IJDB.POI.ULDA = ULDA
