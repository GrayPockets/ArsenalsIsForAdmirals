-- Torre de Belem gives Great Merchant Points instead

UPDATE "Building_GreatPersonPoints"
SET "GreatPersonClassType" = 'GREAT_PERSON_CLASS_MERCHANT'
WHERE "BuildingType" = 'BUILDING_TORRE_DE_BELEM';
