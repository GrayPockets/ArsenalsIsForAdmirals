-- Arsenal Project Icons

DELETE FROM "IconDefinitions"
WHERE "Name" = 'ICON_PROJECT_ENHANCE_DISTRICT_HARBOR';

INSERT OR REPLACE INTO "IconDefinitions"
	(	"Name",										"Atlas",				"Index"	)
VALUES
	(	'ICON_PROJECT_ENHANCE_DISTRICT_ARSENAL',	'ICON_ATLAS_PROJECTS',	12		);
