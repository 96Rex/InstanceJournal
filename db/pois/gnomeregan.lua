IJDB = IJDB or {}

local GNOMEREGAN = {}

GNOMEREGAN.Name = IJ_DB_POI_GNOMEREGAN_NAME
GNOMEREGAN.MapContinentId = "2"
GNOMEREGAN.MapZoneId = "16"
GNOMEREGAN.MinLevel = 28
GNOMEREGAN.MaxLevel = 37
GNOMEREGAN.Entrances = {
    [1] = {
        MapContinentId = "2",
        MapZoneId = "10",
        MapCoordinateX = "24.4",
        MapCoordinateY = "39.6",
        Type = IJLib.EntranceIconType.Left,
    },
}

IJDB.POI.GNOMEREGAN = GNOMEREGAN
