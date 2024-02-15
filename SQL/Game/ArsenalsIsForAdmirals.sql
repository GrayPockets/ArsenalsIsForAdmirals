-- The Great Lighthouse requires an adjacent Arsenal, swap the tech position with the Colossus

UPDATE "Buildings"
SET
	"Cost"				= 290,							-- Originally 400
	"PrereqTech"		= 'TECH_CELESTIAL_NAVIGATION'	-- Originally TECH_SHIPBUILDING
WHERE  "BuildingType" = 'BUILDING_COLOSSUS';

UPDATE "Buildings"
SET
	"AdjacentDistrict"	= 'DISTRICT_ARSENAL',	-- Originally DISTRICT_HARBOR
	"Cost"				= 400,					-- Originally 290
	"PrereqTech"		= 'TECH_SHIPBUILDING'	-- Originally TECH_CELESTIAL_NAVIGATION
WHERE "BuildingType" = 'BUILDING_GREAT_LIGHTHOUSE'; 

DELETE FROM "BuildingPrereqs" -- Originally BUILDING_LIGHTHOUSE
WHERE "Building" = 'BUILDING_GREAT_LIGHTHOUSE';

-- Colossus gives Great Merchant Points instead

UPDATE "Building_GreatPersonPoints"
SET "GreatPersonClassType" = 'GREAT_PERSON_CLASS_MERCHANT'
WHERE "BuildingType" = 'BUILDING_COLOSSUS';

--	The Statue of Liberty requires an adjacent Waterfront

UPDATE "Buildings"
SET "AdjacentDistrict" = 'DISTRICT_WATERFRONT' -- Originally DISTRICT_HARBOR
WHERE "BuildingType" = 'BUILDING_STATUE_LIBERTY';

-- Harbors and Harbor buildings no longer give Great Admiral Points
-- Leave them on the Royal Navy Dockyard as part of it's unique bonus

DELETE FROM "District_GreatPersonPoints"
WHERE "DistrictType" IN ('DISTRICT_HARBOR', 'DISTRICT_COTHON');

-- Harbor buildings no longer give Great Admiral Points

DELETE FROM "Building_GreatPersonPoints"
WHERE "BuildingType" IN ('BUILDING_LIGHTHOUSE', 'BUILDING_SHIPYARD', 'BUILDING_SEAPORT');

-- Remove Harbor Project

DELETE FROM "Project_GreatPersonPoints"
WHERE "ProjectType" = 'PROJECT_ENHANCE_DISTRICT_HARBOR';

DELETE FROM "Project_YieldConversions"
WHERE "ProjectType" = 'PROJECT_ENHANCE_DISTRICT_HARBOR';

DELETE FROM "Projects"
WHERE "ProjectType" = 'PROJECT_ENHANCE_DISTRICT_HARBOR';

DELETE FROM "Types"
WHERE "Type" = 'PROJECT_ENHANCE_DISTRICT_HARBOR';

-- Create Arsenal Project

INSERT INTO "Types"
	(	"Type", 							"Kind"			)
VALUES
	(	'PROJECT_ENHANCE_DISTRICT_ARSENAL',	'KIND_PROJECT'	);

INSERT INTO "Projects"
	(	"ProjectType", 						"Name", 										"ShortName", 										"Description", 										"PopupText",	"Cost",	"CostProgressionModel",				"CostProgressionParam1",	"PrereqCivic",	"PrereqDistrict",	"RequiredBuilding",	"VisualBuildingType",	"SpaceRace",	"OuterDefenseRepair",	"MaxPlayerInstances",	"AmenitiesWhileActive",	"PrereqResource",	"AdvisorType",		"WMD",	"UnlocksFromEffect"	)
VALUES
	(	'PROJECT_ENHANCE_DISTRICT_ARSENAL',	'LOC_PROJECT_ENHANCE_DISTRICT_ARSENAL_NAME',	'LOC_PROJECT_ENHANCE_DISTRICT_ARSENAL_SHORT_NAME', 	'LOC_PROJECT_ENHANCE_DISTRICT_ARSENAL_DESCRIPTION',	NULL,			25, 	'COST_PROGRESSION_GAME_PROGRESS',	1500,						NULL, 			'DISTRICT_ARSENAL',	NULL, 				NULL,					0,				0,						NULL,					NULL,					NULL,				'ADVISOR_CONQUEST',	0,		0					);

INSERT INTO "Project_GreatPersonPoints"
	(	"ProjectType",						"GreatPersonClassType",			"Points",	"PointProgressionModel",			"PointProgressionParam1"	)
VALUES
	(	'PROJECT_ENHANCE_DISTRICT_ARSENAL',	'GREAT_PERSON_CLASS_ADMIRAL',	10,			'COST_PROGRESSION_GAME_PROGRESS',	800							);

INSERT INTO "Project_YieldConversions"
	(	"ProjectType",						"YieldType",	"PercentOfProductionRate"	)
VALUES
	(	'PROJECT_ENHANCE_DISTRICT_ARSENAL',	'YIELD_GOLD',	15							);
