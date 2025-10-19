MACRO map_attributes
; label, map, border block, connections
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3, \2_HEIGHT, \2_WIDTH
	dba \1_BlockData, \1_MapScriptHeader
	db \4
ENDM

	map_attributes NewBarkTown, NEW_BARK_TOWN, $5, 0

	map_attributes VioletCity, VIOLET_CITY, $5, NORTH | SOUTH | WEST
	connection north, VioletOutskirts, VIOLET_OUTSKIRTS, 0
	connection south, Route32, ROUTE_32, 0
	connection west, Route36, ROUTE_36, 0

	map_attributes AzaleaTown, AZALEA_TOWN, $5, WEST | EAST
	connection west, Route34, ROUTE_34, -18
	connection east, Route33, ROUTE_33, 0

	map_attributes GoldenrodCity, GOLDENROD_CITY, $35, NORTH | SOUTH | EAST
	connection north, Route35, ROUTE_35, 5
	connection south, Route34, ROUTE_34, 7
	connection east, MagnetTunnelWest, MAGNET_TUNNEL_WEST, 0

	map_attributes EcruteakCity, ECRUTEAK_CITY, $5, SOUTH | EAST
	connection south, Route37, ROUTE_37, 5
	connection east, Route42, ROUTE_42, 9

	map_attributes MahoganyTown, MAHOGANY_TOWN, $71, NORTH | WEST | EAST
	connection north, Route43, ROUTE_43, 0
	connection west, Route42, ROUTE_42, 0
	connection east, Route44, ROUTE_44, 0

	map_attributes LakeOfRage, LAKE_OF_RAGE, $5, SOUTH
	connection south, Route43, ROUTE_43, 5

	map_attributes BlackthornCity, BLACKTHORN_CITY, $71, SOUTH
	connection south, Route45, ROUTE_45, -2

	map_attributes Route32, ROUTE_32, $5, NORTH | SOUTH | WEST
	connection north, VioletCity, VIOLET_CITY, 0
	connection south, Route33, ROUTE_33, 0
	connection west, MagnetTunnelEast, MAGNET_TUNNEL_EAST, 9

	map_attributes Route33, ROUTE_33, $5, NORTH | WEST
	connection north, Route32, ROUTE_32, 0
	connection west, AzaleaTown, AZALEA_TOWN, 0

	map_attributes Route34, ROUTE_34, $5, NORTH | WEST | EAST
	connection north, GoldenrodCity, GOLDENROD_CITY, -7
	connection west, Route34Coast, ROUTE_34_COAST, 0
	connection east, AzaleaTown, AZALEA_TOWN, 18

	map_attributes Route34Coast, ROUTE_34_COAST, $35, SOUTH | EAST
	connection south, StormyBeach, STORMY_BEACH, 0
	connection east, Route34, ROUTE_34, 0

	map_attributes StormyBeach, STORMY_BEACH, $35, NORTH
	connection north, Route34Coast, ROUTE_34_COAST, 0

	map_attributes Route35, ROUTE_35, $5, NORTH | SOUTH
	connection north, Route36, ROUTE_36, 0
	connection south, GoldenrodCity, GOLDENROD_CITY, -5

	map_attributes Route36, ROUTE_36, $5, NORTH | SOUTH | EAST
	connection north, Route37, ROUTE_37, 12
	connection south, Route35, ROUTE_35, 0
	connection east, VioletCity, VIOLET_CITY, 0

	map_attributes Route37, ROUTE_37, $5, NORTH | SOUTH
	connection north, EcruteakCity, ECRUTEAK_CITY, -5
	connection south, Route36, ROUTE_36, -12

	map_attributes Route40, ROUTE_40, $35, 0

	map_attributes Route42, ROUTE_42, $5, SOUTH | WEST | EAST
	connection south, VioletOutskirts, VIOLET_OUTSKIRTS, 5
	connection west, EcruteakCity, ECRUTEAK_CITY, -9
	connection east, MahoganyTown, MAHOGANY_TOWN, 0

	map_attributes Route43, ROUTE_43, $5, NORTH | SOUTH
	connection north, LakeOfRage, LAKE_OF_RAGE, -5
	connection south, MahoganyTown, MAHOGANY_TOWN, 0

	map_attributes Route44, ROUTE_44, $71, WEST
	connection west, MahoganyTown, MAHOGANY_TOWN, 0

	map_attributes Route45, ROUTE_45, $71, NORTH | WEST
	connection north, BlackthornCity, BLACKTHORN_CITY, 2
	connection west, Route46, ROUTE_46, 37

	map_attributes Route46, ROUTE_46, $5, EAST
	connection east, Route45, ROUTE_45, -37

	map_attributes PewterCity, PEWTER_CITY, $f, EAST
	connection east, Route3, ROUTE_3, 5

	map_attributes Route1, ROUTE_1, $f, SOUTH
	connection south, PalletTown, PALLET_TOWN, 1

	map_attributes PalletTown, PALLET_TOWN, $f, NORTH | SOUTH
	connection north, Route1, ROUTE_1, -1
	connection south, Route21, ROUTE_21, 0

	map_attributes Route21, ROUTE_21, $43, NORTH | SOUTH | EAST
	connection north, PalletTown, PALLET_TOWN, 0
	connection south, CinnabarIsland, CINNABAR_ISLAND, 0
	connection east, UragaChannelWest, URAGA_CHANNEL_WEST, 19

	map_attributes CinnabarIsland, CINNABAR_ISLAND, $43, NORTH | EAST
	connection north, Route21, ROUTE_21, 0
	connection east, Route20, ROUTE_20, 2

	map_attributes Route20, ROUTE_20, $43, WEST | EAST
	connection west, CinnabarIsland, CINNABAR_ISLAND, -2
	connection east, Route19, ROUTE_19, -20

	map_attributes Route19, ROUTE_19, $43, WEST
	connection west, Route20, ROUTE_20, 20

	map_attributes UragaChannelWest, URAGA_CHANNEL_WEST, $43, WEST
	connection west, Route21, ROUTE_21, -19

	map_attributes Route11, ROUTE_11, $f, WEST
	connection west, VermilionCity, VERMILION_CITY, -5

	map_attributes VermilionCity, VERMILION_CITY, $43, NORTH | EAST
	connection north, Route6, ROUTE_6, 3
	connection east, Route11, ROUTE_11, 5

	map_attributes Route6, ROUTE_6, $f, SOUTH
	connection south, VermilionCity, VERMILION_CITY, -3

	map_attributes CeruleanCity, CERULEAN_CITY, $f, NORTH | WEST
	connection north, Route24, ROUTE_24, 0
	connection west, Route4, ROUTE_4, 2

	map_attributes Route24, ROUTE_24, $2c, SOUTH | EAST
	connection south, CeruleanCity, CERULEAN_CITY, 0
	connection east, Route25, ROUTE_25, 0

	map_attributes Route25, ROUTE_25, $2c, WEST | EAST
	connection west, Route24, ROUTE_24, 0
	connection east, CeruleanCape, CERULEAN_CAPE, 0

	map_attributes CeruleanCape, CERULEAN_CAPE, $2c, WEST
	connection west, Route25, ROUTE_25, 0

	map_attributes Route3, ROUTE_3, $2c, WEST
	connection west, PewterCity, PEWTER_CITY, -5

	map_attributes Route4, ROUTE_4, $2c, EAST
	connection east, CeruleanCity, CERULEAN_CITY, -2

	map_attributes Route32Coast, ROUTE_32_COAST, $35, 0

	map_attributes VioletOutskirts, VIOLET_OUTSKIRTS, $5, NORTH | SOUTH
	connection north, Route42, ROUTE_42, -5
	connection south, VioletCity, VIOLET_CITY, 0

	map_attributes MagnetTunnelEast, MAGNET_TUNNEL_EAST, $5, EAST
	connection east, Route32, ROUTE_32, -9

	map_attributes MagnetTunnelWest, MAGNET_TUNNEL_WEST, $5, WEST
	connection west, GoldenrodCity, GOLDENROD_CITY, 0

	map_attributes Route23, ROUTE_23, $2c, NORTH
	connection north, IndigoPlateau, INDIGO_PLATEAU, 0

	map_attributes IndigoPlateau, INDIGO_PLATEAU, $2c, SOUTH
	connection south, Route23, ROUTE_23, 0

	map_attributes Hollowport, HOLLOWPORT, $5, NORTH
	connection north, Route101, ROUTE_101, 2

	map_attributes Route101, ROUTE_101, $5, SOUTH
	connection south, Hollowport, HOLLOWPORT, -2


	map_attributes FieldLab, FIELD_LAB, $0, 0
	map_attributes FieldLab2F, FIELD_LAB_2F, $0, 0
	map_attributes EchoingCave, ECHOING_CAVE, $0, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $0, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $0, 0
	map_attributes HollowportRival1F, HOLLOWPORT_RIVAL_1F, $0, 0
	map_attributes HollowportRival2F, HOLLOWPORT_RIVAL_2F, $0, 0
	map_attributes HollowportNeighbor, HOLLOWPORT_NEIGHBOR, $0, 0
	map_attributes Route101House, ROUTE_101_HOUSE, $0, 0
	map_attributes Route101Cave, ROUTE_101_CAVE, $0, 0
	map_attributes Route102, ROUTE_102, $5, 0
	map_attributes Route101102Gate, ROUTE_101_102_GATE, $0, 0
	map_attributes Route102OlsteetonGate, ROUTE_102_OLSTEETON_GATE, $0, 0
    map_attributes Olsteeton, OLSTEETON, $5, 0
	map_attributes OlsteetonGym1F, OLSTEETON_GYM_1F, $0, 0
	map_attributes OlsteetonGym2F, OLSTEETON_GYM_2F, $0, 0
	map_attributes OlsteetonGym3F, OLSTEETON_GYM_3F, $0, 0
	map_attributes OlsteetonPokeCenter, OLSTEETON_POKE_CENTER, $0, 0
	map_attributes OlsteetonMall1, OLSTEETON_MALL_1, $0, 0
	map_attributes OlsteetonMall2, OLSTEETON_MALL_2, $0, 0
	map_attributes OlsteetonMall3, OLSTEETON_MALL_3, $0, 0
	map_attributes OlsteetonMart, OLSTEETON_MART, $0, 0	
	map_attributes RiverfrontApt1F, RIVERFRONT_APT_1F, $0, 0
	map_attributes RiverfrontApt2F, RIVERFRONT_APT_2F, $0, 0
	map_attributes RiverfrontApt2FRoom1, RIVERFRONT_APT_2F_ROOM_1, $0, 0
	map_attributes RiverfrontApt2FRoom2, RIVERFRONT_APT_2F_ROOM_2, $0, 0
	map_attributes RiverfrontApt2FRoom3, RIVERFRONT_APT_2F_ROOM_3, $0, 0
	map_attributes RiverfrontApt3F, RIVERFRONT_APT_3F, $0, 0
	map_attributes RiverfrontApt3FRoom1, RIVERFRONT_APT_3F_ROOM_1, $0, 0
	map_attributes RiverfrontApt3FRoom2, RIVERFRONT_APT_3F_ROOM_2, $0, 0
	map_attributes RiverfrontApt4F, RIVERFRONT_APT_4F, $0, 0
	map_attributes RiverfrontApt4FRoom1, RIVERFRONT_APT_4F_ROOM_1, $0, 0
	map_attributes RiverfrontApt4FRoom3, RIVERFRONT_APT_4F_ROOM_3, $0, 0
	map_attributes RiverfrontApt5F, RIVERFRONT_APT_5F, $0, 0
	map_attributes RiverfrontAptRoof, RIVERFRONT_APT_ROOF, $68, 0
	map_attributes RiverfrontAptElevator, RIVERFRONT_APT_ELEVATOR, $0, 0
	map_attributes OlsteetonDiner, OLSTEETON_DINER, $0, 0	
	map_attributes OlsteetonArcade, OLSTEETON_ARCADE, $0, 0
	map_attributes OlsteetonTrainStation, OLSTEETON_TRAIN_STATION, $0, 0
	map_attributes OlsteetonNameRater, OLSTEETON_NAME_RATER, $0, 0
	map_attributes OlsteetonFisherHouse, OLSTEETON_FISHER_HOUSE, $0, 0
	map_attributes OlsteetonQuickHouse, OLSTEETON_QUICK_HOUSE, $0, 0
	map_attributes OlsteetonGymHouse, OLSTEETON_GYM_HOUSE, $0, 0
	map_attributes OlsteetonForestGate, OLSTEETON_FOREST_GATE, $0, 0
	map_attributes NationalForest1, NATIONAL_FOREST_1, $53, 0
	map_attributes OlsteetonUniGate, OLSTEETON_UNI_GATE, $0, 0
	map_attributes OlsteetonRoute103Gate, OLSTEETON_ROUTE_103_GATE, $0, 0
	map_attributes OlsteetonUni, OLSTEETON_UNI, $35, 0
	map_attributes OlsteetonUniLibrary1F, OLSTEETON_UNI_LIBRARY_1F, $0, 0
	map_attributes OlsteetonUniLibrary2F, OLSTEETON_UNI_LIBRARY_2F, $0, 0
	map_attributes OlsteetonUniScienceCenter, OLSTEETON_UNI_SCIENCE_CENTER, $0, 0
	map_attributes OlsteetonUniNurseDept, OLSTEETON_UNI_NURSE_DEPT, $0, 0
	map_attributes OlsteetonUniWaterLab, OLSTEETON_UNI_WATER_LAB, $0, 0
	map_attributes OlsteetonUniOffice, OLSTEETON_UNI_OFFICE, $0, 0
	map_attributes OlsteetonUniDeansOffice, OLSTEETON_UNI_DEANS_OFFICE, $0, 0
	map_attributes OlsteetonUniOfficeSpruce, OLSTEETON_UNI_OFFICE_SPRUCE, $0, 0
	map_attributes OlsteetonUniOfficePoplar, OLSTEETON_UNI_OFFICE_POPLAR, $0, 0
	map_attributes OlsteetonUniOfficePawpaw, OLSTEETON_UNI_OFFICE_PAWPAW, $0, 0
	map_attributes OlsteetonUniOfficeLounge, OLSTEETON_UNI_OFFICE_LOUNGE, $0, 0
	map_attributes OlsteetonUniOfficeTA, OLSTEETON_UNI_OFFICE_TA, $0, 0
	map_attributes OlsteetonUniClockTower1F, OLSTEETON_UNI_CLOCK_TOWER_1F, $0, 0
	map_attributes OlsteetonUniClockTower2F, OLSTEETON_UNI_CLOCK_TOWER_2F, $0, 0
	map_attributes OlsteetonUniClockTower3F, OLSTEETON_UNI_CLOCK_TOWER_3F, $0, 0
	map_attributes OlsteetonUniClassroomBldg, OLSTEETON_UNI_CLASSROOM_BLDG, $0, 0
	map_attributes OlsteetonUniClassroomBiology, OLSTEETON_UNI_CLASSROOM_BIOLOGY, $0, 0
	map_attributes OlsteetonUniClassroomArt, OLSTEETON_UNI_CLASSROOM_ART, $0, 0
	map_attributes OlsteetonUniClassroomBusiness, OLSTEETON_UNI_CLASSROOM_BUSINESS, $0, 0
	map_attributes OlsteetonUniClassroomStrategy, OLSTEETON_UNI_CLASSROOM_STRATEGY, $0, 0
	map_attributes OlsteetonUniClassroomHistory, OLSTEETON_UNI_CLASSROOM_HISTORY, $0, 0
	map_attributes OlsteetonUniClassroomTheory, OLSTEETON_UNI_CLASSROOM_THEORY, $0, 0
	map_attributes OlsteetonUniDormWest1F, OLSTEETON_UNI_DORM_WEST_1F, $0, 0
	map_attributes OlsteetonUniDormWest2F, OLSTEETON_UNI_DORM_WEST_2F, $0, 0
	map_attributes OlsteetonUniDormWest2FRoom2, OLSTEETON_UNI_DORM_WEST_2F_ROOM_2, $0, 0
	map_attributes OlsteetonUniDormWest2FRoom3, OLSTEETON_UNI_DORM_WEST_2F_ROOM_3, $0, 0
	map_attributes OlsteetonUniDormWest3F, OLSTEETON_UNI_DORM_WEST_3F, $0, 0
	map_attributes OlsteetonUniDormWest3FRoom1, OLSTEETON_UNI_DORM_WEST_3F_ROOM_1, $0, 0
	map_attributes OlsteetonUniDormWest3FRoom3, OLSTEETON_UNI_DORM_WEST_3F_ROOM_3, $0, 0
	map_attributes OlsteetonUniDormWestElevator, OLSTEETON_UNI_DORM_WEST_ELEVATOR, $0, 0
	map_attributes OlsteetonUniDiningHall, OLSTEETON_UNI_DINING_HALL, $0, 0
	map_attributes OlsteetonUniDormEast1F, OLSTEETON_UNI_DORM_EAST_1F, $0, 0
	map_attributes OlsteetonUniDormEast2F, OLSTEETON_UNI_DORM_EAST_2F, $0, 0
	map_attributes OlsteetonUniDormEast2FRoom1, OLSTEETON_UNI_DORM_EAST_2F_ROOM_1, $0, 0
	map_attributes OlsteetonUniDormEast2FRoom3, OLSTEETON_UNI_DORM_EAST_2F_ROOM_3, $0, 0
	map_attributes OlsteetonUniDormEast3F, OLSTEETON_UNI_DORM_EAST_3F, $0, 0
	map_attributes OlsteetonUniDormEast3FRoom2, OLSTEETON_UNI_DORM_EAST_3F_ROOM_2, $0, 0
	map_attributes OlsteetonUniDormEast3FRoom3, OLSTEETON_UNI_DORM_EAST_3F_ROOM_3, $0, 0
	map_attributes OlsteetonUniDormEastElevator, OLSTEETON_UNI_DORM_EAST_ELEVATOR, $0, 0
	map_attributes OlsteetonUniGymDept, OLSTEETON_UNI_GYM_DEPT, $0, 0
	map_attributes OlsteetonAbandonedMill, OLSTEETON_ABANDONED_MILL, $0, 0
	map_attributes OlsteetonAbandonedMillOutside, OLSTEETON_ABANDONED_MILL_OUTSIDE, $0F, 0


	;johto maps
	map_attributes SproutTower1F, SPROUT_TOWER_1F, $0, 0
	map_attributes SproutTower2F, SPROUT_TOWER_2F, $0, 0
	map_attributes SproutTower3F, SPROUT_TOWER_3F, $0, 0
	map_attributes TinTower1F, TIN_TOWER_1F, $0, 0
	map_attributes TinTower2F, TIN_TOWER_2F, $0, 0
	map_attributes TinTower3F, TIN_TOWER_3F, $0, 0
	map_attributes TinTower4F, TIN_TOWER_4F, $0, 0
	map_attributes TinTower5F, TIN_TOWER_5F, $0, 0
	map_attributes TinTower6F, TIN_TOWER_6F, $0, 0
	map_attributes TinTower7F, TIN_TOWER_7F, $0, 0
	map_attributes TinTower8F, TIN_TOWER_8F, $0, 0
	map_attributes TinTower9F, TIN_TOWER_9F, $0, 0
	map_attributes TinTower10F, TIN_TOWER_10F, $0, 0
	map_attributes BurnedTower1F, BURNED_TOWER_1F, $0, 0
	map_attributes BurnedTowerB1F, BURNED_TOWER_B1F, $9, 0
	map_attributes NationalPark, NATIONAL_PARK, $0, 0
	map_attributes NationalParkBugContest, NATIONAL_PARK_BUG_CONTEST, $0, 0
	map_attributes RadioTower1F, RADIO_TOWER_1F, $0, 0
	map_attributes RadioTower2F, RADIO_TOWER_2F, $0, 0
	map_attributes RadioTower3F, RADIO_TOWER_3F, $0, 0
	map_attributes RadioTower4F, RADIO_TOWER_4F, $0, 0
	map_attributes RadioTower5F, RADIO_TOWER_5F, $0, 0
	map_attributes UnionCave1F, UNION_CAVE_1F, $9, 0
	map_attributes UnionCaveB1FNorth, UNION_CAVE_B1F_NORTH, $9, 0
	map_attributes UnionCaveB1FSouth, UNION_CAVE_B1F_SOUTH, $9, 0
	map_attributes UnionCaveB2F, UNION_CAVE_B2F, $9, 0
	map_attributes SlowpokeWellEntrance, SLOWPOKE_WELL_ENTRANCE, $9, 0
	map_attributes SlowpokeWellB1F, SLOWPOKE_WELL_B1F, $9, 0
	map_attributes SlowpokeWellB2F, SLOWPOKE_WELL_B2F, $9, 0
	map_attributes OlivineLighthouse1F, OLIVINE_LIGHTHOUSE_1F, $0, 0
	map_attributes OlivineLighthouse2F, OLIVINE_LIGHTHOUSE_2F, $0, 0
	map_attributes OlivineLighthouse3F, OLIVINE_LIGHTHOUSE_3F, $0, 0
	map_attributes OlivineLighthouse4F, OLIVINE_LIGHTHOUSE_4F, $0, 0
	map_attributes OlivineLighthouse5F, OLIVINE_LIGHTHOUSE_5F, $0, 0
	map_attributes OlivineLighthouse6F, OLIVINE_LIGHTHOUSE_6F, $0, 0
	map_attributes MahoganyMart1F, MAHOGANY_MART_1F, $0, 0
	map_attributes TeamRocketBaseB1F, TEAM_ROCKET_BASE_B1F, $0, 0
	map_attributes TeamRocketBaseB2F, TEAM_ROCKET_BASE_B2F, $0, 0
	map_attributes TeamRocketBaseB3F, TEAM_ROCKET_BASE_B3F, $0, 0
	map_attributes IlexForest, ILEX_FOREST, $35, 0
	map_attributes MurkySwamp, MURKY_SWAMP, $35, 0
	map_attributes MagnetTunnelInside, MAGNET_TUNNEL_INSIDE, $9, 0
	map_attributes WarehouseEntrance, WAREHOUSE_ENTRANCE, $0, 0
	map_attributes UndergroundPathSwitchRoomEntrances, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, $0, 0
	map_attributes GoldenrodDeptStoreB1F, GOLDENROD_DEPT_STORE_B1F, $0, 0
	map_attributes UndergroundWarehouse, UNDERGROUND_WAREHOUSE, $0, 0
	map_attributes MountMortar1FOutside, MOUNT_MORTAR_1F_OUTSIDE, $9, 0
	map_attributes MountMortar1FInside, MOUNT_MORTAR_1F_INSIDE, $9, 0
	map_attributes MountMortar2FInside, MOUNT_MORTAR_2F_INSIDE, $9, 0
	map_attributes MountMortarB1F, MOUNT_MORTAR_B1F, $9, 0
	map_attributes IcePath1F, ICE_PATH_1F, $9, 0
	map_attributes IcePathB1F, ICE_PATH_B1F, $19, 0
	map_attributes IcePathB2FMahoganySide, ICE_PATH_B2F_MAHOGANY_SIDE, $19, 0
	map_attributes IcePathB2FBlackthornSide, ICE_PATH_B2F_BLACKTHORN_SIDE, $19, 0
	map_attributes IcePathB3F, ICE_PATH_B3F, $19, 0
	map_attributes WhirlIslandNW, WHIRL_ISLAND_NW, $9, 0
	map_attributes WhirlIslandNE, WHIRL_ISLAND_NE, $9, 0
	map_attributes WhirlIslandSW, WHIRL_ISLAND_SW, $9, 0
	map_attributes WhirlIslandCave, WHIRL_ISLAND_CAVE, $9, 0
	map_attributes WhirlIslandSE, WHIRL_ISLAND_SE, $f, 0
	map_attributes WhirlIslandB1F, WHIRL_ISLAND_B1F, $9, 0
	map_attributes WhirlIslandB2F, WHIRL_ISLAND_B2F, $2e, 0
	map_attributes WhirlIslandLugiaChamber, WHIRL_ISLAND_LUGIA_CHAMBER, $f, 0
	map_attributes SilverCaveRoom1, SILVER_CAVE_ROOM_1, $9, 0
	map_attributes SilverCaveRoom2, SILVER_CAVE_ROOM_2, $9, 0
	map_attributes SilverCaveRoom3, SILVER_CAVE_ROOM_3, $0, 0
	map_attributes SilverCaveItemRooms, SILVER_CAVE_ITEM_ROOMS, $9, 0
	map_attributes DarkCaveVioletEntrance, DARK_CAVE_VIOLET_ENTRANCE, $9, 0
	map_attributes DarkCaveBlackthornEntrance, DARK_CAVE_BLACKTHORN_ENTRANCE, $9, 0
	map_attributes DragonsDen1F, DRAGONS_DEN_1F, $9, 0
	map_attributes DragonsDenB1F, DRAGONS_DEN_B1F, $71, 0
	map_attributes DragonShrine, DRAGON_SHRINE, $0, 0
	map_attributes TohjoFalls, TOHJO_FALLS, $9, 0
	map_attributes GiovannisCave, GIOVANNIS_CAVE, $9, 0
	map_attributes MahoganyRedGyaradosSpeechHouse, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, $0, 0
	map_attributes MahoganyGym, MAHOGANY_GYM, $0, 0
	map_attributes MahoganyPokeCenter1F, MAHOGANY_POKECENTER_1F, $0, 0
	map_attributes Route42EcruteakGate, ROUTE_42_ECRUTEAK_GATE, $0, 0
	map_attributes DiglettsCave, DIGLETTS_CAVE, $9, 0
	map_attributes MountMoon1F, MOUNT_MOON_1F, $9, 0
	map_attributes MountMoonB1F, MOUNT_MOON_B1F, $9, 0
	map_attributes MountMoonB2F, MOUNT_MOON_B2F, $9, 0
	map_attributes Underground, UNDERGROUND, $0, 0
	map_attributes RockTunnel1F, ROCK_TUNNEL_1F, $9, 0
	map_attributes RockTunnelB1F, ROCK_TUNNEL_B1F, $9, 0
	map_attributes RockTunnel2F, ROCK_TUNNEL_2F, $9, 0
	map_attributes VictoryRoad1F, VICTORY_ROAD_1F, $9, 0
	map_attributes VictoryRoad2F, VICTORY_ROAD_2F, $9, 0
	map_attributes VictoryRoad3F, VICTORY_ROAD_3F, $9, 0
	map_attributes EcruteakHouse, ECRUTEAK_HOUSE, $0, 0
	map_attributes WiseTriosRoom, WISE_TRIOS_ROOM, $0, 0
	map_attributes EcruteakPokeCenter1F, ECRUTEAK_POKECENTER_1F, $0, 0
	map_attributes EcruteakLugiaSpeechHouse, ECRUTEAK_LUGIA_SPEECH_HOUSE, $0, 0
	map_attributes DanceTheatre, DANCE_THEATRE, $0, 0
	map_attributes EcruteakMart, ECRUTEAK_MART, $0, 0
	map_attributes EcruteakGym, ECRUTEAK_GYM, $0, 0
	map_attributes EcruteakItemfinderHouse, ECRUTEAK_ITEMFINDER_HOUSE, $0, 0
	map_attributes ValeriesHouse, VALERIES_HOUSE, $0, 0
	map_attributes EcruteakCherishBallHouse, ECRUTEAK_CHERISH_BALL_HOUSE, $0, 0
	map_attributes EcruteakDestinyKnotHouse, ECRUTEAK_DESTINY_KNOT_HOUSE, $0, 0
	map_attributes BlackthornGym1F, BLACKTHORN_GYM_1F, $0, 0
	map_attributes BlackthornGym2F, BLACKTHORN_GYM_2F, $0, 0
	map_attributes BlackthornDragonSpeechHouse, BLACKTHORN_DRAGON_SPEECH_HOUSE, $0, 0
	map_attributes BlackthornEmysHouse, BLACKTHORN_EMYS_HOUSE, $0, 0
	map_attributes BlackthornMart, BLACKTHORN_MART, $0, 0
	map_attributes BlackthornPokeCenter1F, BLACKTHORN_POKECENTER_1F, $0, 0
	map_attributes MoveDeletersHouse, MOVE_DELETERS_HOUSE, $0, 0
	map_attributes CinnabarPokeCenter1F, CINNABAR_POKECENTER_1F, $0, 0
	map_attributes SeafoamIslands1F, SEAFOAM_ISLANDS_1F, $9, 0
	map_attributes SeafoamGym, SEAFOAM_GYM, $9, 0
	map_attributes SeafoamIslandsB1F, SEAFOAM_ISLANDS_B1F, $9, 0
	map_attributes SeafoamIslandsB2F, SEAFOAM_ISLANDS_B2F, $9, 0
	map_attributes SeafoamIslandsB3F, SEAFOAM_ISLANDS_B3F, $9, 0
	map_attributes SeafoamIslandsB4F, SEAFOAM_ISLANDS_B4F, $9, 0
	map_attributes CeruleanGymBadgeSpeechHouse, CERULEAN_GYM_BADGE_SPEECH_HOUSE, $0, 0
	map_attributes CeruleanPoliceStation, CERULEAN_POLICE_STATION, $0, 0
	map_attributes CeruleanTradeSpeechHouse, CERULEAN_TRADE_SPEECH_HOUSE, $0, 0
	map_attributes CeruleanPokeCenter1F, CERULEAN_POKECENTER_1F, $0, 0
	map_attributes CeruleanGym, CERULEAN_GYM, $0, 0
	map_attributes CeruleanMart, CERULEAN_MART, $0, 0
	map_attributes CeruleanBikeShop, CERULEAN_BIKE_SHOP, $0, 0
	map_attributes CeruleanBerryPowderHouse, CERULEAN_BERRY_POWDER_HOUSE, $0, 0
	map_attributes CeruleanCoupleHouse, CERULEAN_COUPLE_HOUSE, $0, 0
	map_attributes CeruleanWaterShowSpeechHouse, CERULEAN_WATER_SHOW_SPEECH_HOUSE, $0, 0
	map_attributes Route3PokeCenter1F, ROUTE_3_POKECENTER_1F, $0, 0
	map_attributes Route10PokeCenter1F, ROUTE_10_POKECENTER_1F, $0, 0
	map_attributes PowerPlant, POWER_PLANT, $0, 0
	map_attributes BillsHouse, BILLS_HOUSE, $0, 0
	map_attributes AzaleaPokeCenter1F, AZALEA_POKECENTER_1F, $0, 0
	map_attributes CharcoalKiln, CHARCOAL_KILN, $0, 0
	map_attributes AzaleaMart, AZALEA_MART, $0, 0
	map_attributes KurtsHouse, KURTS_HOUSE, $0, 0
	map_attributes AzaleaGym, AZALEA_GYM, $0, 0
	map_attributes LakeOfRageHiddenPowerHouse, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, $0, 0
	map_attributes LakeOfRageMagikarpHouse, LAKE_OF_RAGE_MAGIKARP_HOUSE, $0, 0
	map_attributes Route43MahoganyGate, ROUTE_43_MAHOGANY_GATE, $0, 0
	map_attributes Route43Gate, ROUTE_43_GATE, $0, 0
	map_attributes VioletMart, VIOLET_MART, $0, 0
	map_attributes VioletGym, VIOLET_GYM, $0, 0
	map_attributes EarlsPokemonAcademy, EARLS_POKEMON_ACADEMY, $0, 0
	map_attributes VioletNicknameSpeechHouse, VIOLET_NICKNAME_SPEECH_HOUSE, $0, 0
	map_attributes VioletPokeCenter1F, VIOLET_POKECENTER_1F, $0, 0
	map_attributes VioletOnixTradeHouse, VIOLET_ONIX_TRADE_HOUSE, $0, 0
	map_attributes VioletOutskirtsHouse, VIOLET_OUTSKIRTS_HOUSE, $0, 0
	map_attributes Route32RuinsOfAlphGate, ROUTE_32_RUINS_OF_ALPH_GATE, $0, 0
	map_attributes Route32PokeCenter1F, ROUTE_32_POKECENTER_1F, $0, 0
	map_attributes Route32CoastHouse, ROUTE_32_COAST_HOUSE, $0, 0
	map_attributes Route35GoldenrodGate, ROUTE_35_GOLDENROD_GATE, $0, 0
	map_attributes Route35NationalParkGate, ROUTE_35_NATIONAL_PARK_GATE, $0, 0
	map_attributes Route36RuinsOfAlphGate, ROUTE_36_RUINS_OF_ALPH_GATE, $0, 0
	map_attributes Route36NationalParkGate, ROUTE_36_NATIONAL_PARK_GATE, $0, 0
	map_attributes Route36VioletGate, ROUTE_36_VIOLET_GATE, $0, 0
	map_attributes GoldenrodGym, GOLDENROD_GYM, $0, 0
	map_attributes GoldenrodBikeShop, GOLDENROD_BIKE_SHOP, $0, 0
	map_attributes GoldenrodHappinessRater, GOLDENROD_HAPPINESS_RATER, $0, 0
	map_attributes GoldenrodBillsHouse, GOLDENROD_BILLS_HOUSE, $0, 0
	map_attributes GoldenrodMagnetTrainStation, GOLDENROD_MAGNET_TRAIN_STATION, $0, 0
	map_attributes GoldenrodFlowerShop, GOLDENROD_FLOWER_SHOP, $0, 0
	map_attributes GoldenrodPPSpeechHouse, GOLDENROD_PP_SPEECH_HOUSE, $0, 0
	map_attributes GoldenrodNameRater, GOLDENROD_NAME_RATER, $0, 0
	map_attributes GoldenrodDeptStore1F, GOLDENROD_DEPT_STORE_1F, $0, 0
	map_attributes GoldenrodDeptStore2F, GOLDENROD_DEPT_STORE_2F, $0, 0
	map_attributes GoldenrodDeptStore3F, GOLDENROD_DEPT_STORE_3F, $0, 0
	map_attributes GoldenrodDeptStore4F, GOLDENROD_DEPT_STORE_4F, $0, 0
	map_attributes GoldenrodDeptStore5F, GOLDENROD_DEPT_STORE_5F, $0, 0
	map_attributes GoldenrodDeptStore6F, GOLDENROD_DEPT_STORE_6F, $0, 0
	map_attributes GoldenrodDeptStoreElevator, GOLDENROD_DEPT_STORE_ELEVATOR, $0, 0
	map_attributes GoldenrodDeptStoreRoof, GOLDENROD_DEPT_STORE_ROOF, $24, 0
	map_attributes GoldenrodGameCorner, GOLDENROD_GAME_CORNER, $0, 0
	map_attributes GoldenrodPokecomCenter1F, GOLDENROD_POKECOM_CENTER_1F, $0, 0
	map_attributes GoldenrodPokecomCenterOffice, GOLDENROD_POKECOM_CENTER_OFFICE, $0, 0
	map_attributes IlexForestAzaleaGate, ILEX_FOREST_AZALEA_GATE, $0, 0
	map_attributes Route34IlexForestGate, ROUTE_34_ILEX_FOREST_GATE, $0, 0
	map_attributes DayCare, DAYCARE, $0, 0
	map_attributes GoldenrodHoneyHouse, GOLDENROD_HONEY_HOUSE, $0, 0
	map_attributes GoldenrodNetBallHouse, GOLDENROD_NET_BALL_HOUSE, $0, 0
	map_attributes GoldenrodBandHouse, GOLDENROD_BAND_HOUSE, $0, 0
	map_attributes GoldenrodMuseum1F, GOLDENROD_MUSEUM_1F, $0, 0
	map_attributes GoldenrodMuseum2F, GOLDENROD_MUSEUM_2F, $0, 0
	map_attributes VermilionHouseFishingSpeechHouse, VERMILION_HOUSE_FISHING_SPEECH_HOUSE, $0, 0
	map_attributes VermilionPokeCenter1F, VERMILION_POKECENTER_1F, $0, 0
	map_attributes PokemonFanClub, POKEMON_FAN_CLUB, $0, 0
	map_attributes VermilionMagnetTrainSpeechHouse, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, $0, 0
	map_attributes VermilionMart, VERMILION_MART, $0, 0
	map_attributes VermilionHouseDiglettsCaveSpeechHouse, VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, $0, 0
	map_attributes VermilionGym, VERMILION_GYM, $0, 0
	map_attributes Route6SaffronGate, ROUTE_6_SAFFRON_GATE, $0, 0
	map_attributes Route6UndergroundEntrance, ROUTE_6_UNDERGROUND_ENTRANCE, $0, 0
	map_attributes Route11Gate, ROUTE_11_GATE, $0, 0
	map_attributes Route11Gate2F, ROUTE_11_GATE_2F, $0, 0
	map_attributes VermilionPollutionSpeechHouse, VERMILION_POLLUTION_SPEECH_HOUSE, $0, 0
	map_attributes VermilionSSAnneSpeechHouse, VERMILION_S_S_ANNE_SPEECH_HOUSE, $0, 0
	map_attributes BattleFactory1F, BATTLE_FACTORY_1F, $0, 0
	map_attributes BattleFactoryHallway, BATTLE_FACTORY_HALLWAY, $0, 0
	map_attributes BattleFactoryBattleRoom, BATTLE_FACTORY_BATTLE_ROOM, $0, 0
	map_attributes RedsHouse1F, REDS_HOUSE_1F, $0, 0
	map_attributes RedsHouse2F, REDS_HOUSE_2F, $0, 0
	map_attributes BluesHouse1F, BLUES_HOUSE_1F, $0, 0
	map_attributes BluesHouse2F, BLUES_HOUSE_2F, $0, 0
	map_attributes OaksLab, OAKS_LAB, $0, 0
	map_attributes PewterNidoranSpeechHouse, PEWTER_NIDORAN_SPEECH_HOUSE, $0, 0
	map_attributes PewterGym, PEWTER_GYM, $0, 0
	map_attributes PewterMart, PEWTER_MART, $0, 0
	map_attributes PewterPokeCenter1F, PEWTER_POKECENTER_1F, $0, 0
	map_attributes PewterSnoozeSpeechHouse, PEWTER_SNOOZE_SPEECH_HOUSE, $0, 0
	map_attributes OlivinePort, OLIVINE_PORT, $a, 0
	map_attributes VermilionPort, VERMILION_PORT, $a, 0
	map_attributes FastShip1F, FAST_SHIP_1F, $0, 0
	map_attributes FastShipCabins_NNW_NNE_NE, FAST_SHIP_CABINS_NNW_NNE_NE, $0, 0
	map_attributes FastShipCabins_SW_SSW_NW, FAST_SHIP_CABINS_SW_SSW_NW, $0, 0
	map_attributes FastShipCabins_SE_SSE_CaptainsCabin, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, $0, 0
	map_attributes FastShipB1F, FAST_SHIP_B1F, $0, 0
	map_attributes MountMoonSquare, MOUNT_MOON_SQUARE, $2d, 0
	map_attributes MountMoonGiftShop, MOUNT_MOON_GIFT_SHOP, $0, 0
	map_attributes TinTowerRoof, TIN_TOWER_ROOF, $1, 0
	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $0, 0
	map_attributes WillsRoom, WILLS_ROOM, $0, 0
	map_attributes KogasRoom, KOGAS_ROOM, $0, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $0, 0
	map_attributes KarensRoom, KARENS_ROOM, $0, 0
	map_attributes LancesRoom, LANCES_ROOM, $0, 0
	map_attributes HallOfFame, HALL_OF_FAME, $0, 0
	map_attributes PokeCenter2F, POKECENTER_2F, $0, 0
	map_attributes TradeCenter, TRADE_CENTER, $0, 0
	map_attributes Colosseum, COLOSSEUM, $0, 0
	map_attributes HiddenTreeGrotto, HIDDEN_TREE_GROTTO, $35, 0
	map_attributes HiddenCaveGrotto, HIDDEN_CAVE_GROTTO, $9, 0
	map_attributes BattleTower1F, BATTLE_TOWER_1F, $0, 0
	map_attributes BattleTower2F, BATTLE_TOWER_2F, $0, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $0, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $0, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $0, 0
	map_attributes Route40BattleTowerGate, ROUTE_40_BATTLE_TOWER_GATE, $0, 0
	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $5, 0
	map_attributes ElmsLab, ELMS_LAB, $0, 0
	map_attributes PlayersNeighborsHouse, PLAYERS_NEIGHBORS_HOUSE, $0, 0
	map_attributes LyrasHouse1F, LYRAS_HOUSE_1F, $0, 0
	map_attributes LyrasHouse2F, LYRAS_HOUSE_2F, $0, 0
	map_attributes ElmsHouse, ELMS_HOUSE, $0, 0
	map_attributes BellchimeTrail, BELLCHIME_TRAIL, $5, 0
	map_attributes PewterMuseumOfScience1F, PEWTER_MUSEUM_OF_SCIENCE_1F, $0, 0
	map_attributes PewterMuseumOfScience2F, PEWTER_MUSEUM_OF_SCIENCE_2F, $0, 0
	map_attributes CeruleanCave1F, CERULEAN_CAVE_1F, $9, 0
	map_attributes CeruleanCave2F, CERULEAN_CAVE_2F, $9, 0
	map_attributes CeruleanCaveB1F, CERULEAN_CAVE_B1F, $9, 0
	map_attributes CinnabarVolcano1F, CINNABAR_VOLCANO_1F, $9, 0
	map_attributes CinnabarVolcanoB1F, CINNABAR_VOLCANO_B1F, $9, 0
	map_attributes CinnabarVolcanoB2F, CINNABAR_VOLCANO_B2F, $9, 0
	map_attributes PokemonMansion1F, POKEMON_MANSION_1F, $0, 0
	map_attributes PokemonMansionB1F, POKEMON_MANSION_B1F, $45, 0
	map_attributes CinnabarLab, CINNABAR_LAB, $0, 0
	map_attributes ScaryCave1F, SCARY_CAVE_1F, $9, 0
	map_attributes ScaryCaveB1F, SCARY_CAVE_B1F, $9, 0
	map_attributes ScaryCaveShipwreck, SCARY_CAVE_SHIPWRECK, $9, 0
	map_attributes Route19BeachHouse, ROUTE_19_BEACH_HOUSE, $0, 0