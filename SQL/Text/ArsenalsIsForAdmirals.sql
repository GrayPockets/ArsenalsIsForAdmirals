-- Great Lighthouse

UPDATE "LocalizedText"
SET "Text" = '+1 [ICON_Movement] Movement for all naval units[NEWLINE][NEWLINE]Must be built on the Coast, and adjacent to land and an Arsenal.'
WHERE "Language" = 'en_US'
	AND "Tag" = 'LOC_BUILDING_GREAT_LIGHTHOUSE_DESCRIPTION';

-- Statue of Liberty

UPDATE "LocalizedText"
SET "Text" = '+4 Diplomatic Victory Points when built. All your cities within 6 tiles are always 100% Loyal. [NEWLINE][NEWLINE]Must be built on the Coast, adjacent to land and a Waterfront district.'
WHERE "Language" = 'en_US'
	AND "Tag" = 'LOC_BUILDING_STATUE_LIBERTY_EXPANSION2_DESCRIPTION';

-- Arsenal Project

INSERT INTO "LocalizedText"
	(	"Language",	"Tag",												"Text"																															)
VALUES
	(	'en_US',	'LOC_PROJECT_ENHANCE_DISTRICT_ARSENAL_NAME',		'Arsenal Training'																												),
	(	'en_US',	'LOC_PROJECT_ENHANCE_DISTRICT_ARSENAL_SHORT_NAME',	'Arsenal Training'																												),
	(	'en_US',	'LOC_PROJECT_ENHANCE_DISTRICT_ARSENAL_DESCRIPTION',	'District-based project which provides [ICON_Gold] Gold every turn and [ICON_GreatAdmiral] Great Admiral points once finished.'	);

-- Removed Harbor Project

DELETE FROM "LocalizedText"
WHERE "Language" = 'en_US'
	AND "Tag" IN ('LOC_PROJECT_ENHANCE_DISTRICT_HARBOR_NAME', 'LOC_PROJECT_ENHANCE_DISTRICT_HARBOR_SHORT_NAME', 'LOC_PROJECT_ENHANCE_DISTRICT_HARBOR_DESCRIPTION');
