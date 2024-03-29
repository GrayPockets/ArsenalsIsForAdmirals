-- Arsenal Project Icons

DELETE FROM "IconDefinitions"
WHERE "Name" = 'ICON_PROJECT_ENHANCE_DISTRICT_HARBOR';

INSERT INTO "IconTextureAtlases"
	(	"Name",							"IconSize",	"IconsPerRow",	"IconsPerColumn",	"FileName"				)
VALUES
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	256,		1,				1,					'ArsenalProject_256'	),
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	128,		1,				1,					'ArsenalProject_128'	),
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	80,			1,				1,					'ArsenalProject_80'		),
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	70,			1,				1,					'ArsenalProject_70'		),
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	50,			1,				1,					'ArsenalProject_50'		),
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	38,			1,				1,					'ArsenalProject_38'		),
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	32,			1,				1,					'ArsenalProject_32'		),
	(	'ICON_ATLAS_ARSENAL_PROJECTS',	30,			1,				1,					'ArsenalProject_30'		);

INSERT OR REPLACE INTO "IconDefinitions"
	(	"Name",										"Atlas",						"Index"	)
VALUES
	(	'ICON_PROJECT_ENHANCE_DISTRICT_ARSENAL',	'ICON_ATLAS_ARSENAL_PROJECTS',	0		);
