IJDB = IJDB or {}

local GATES = {}

GATES.Name = IJ_DB_POI_GATES_NAME
GATES.MapContinentId = "1"
GATES.MapZoneId = "14"
GATES.MinLevel = 60
GATES.MaxLevel = 60
GATES.Entrances = {
    [1] = {
        MapContinentId = "1",
        MapZoneId = "22",
        MapCoordinateX = "29.3",
        MapCoordinateY = "94.3",
        Type = IJLib.EntranceIconType.Down,
    },
}

IJDB.POI.GATES = GATES
