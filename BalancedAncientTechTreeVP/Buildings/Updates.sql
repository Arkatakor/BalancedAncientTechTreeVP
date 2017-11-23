--	Set shrine requirement to mysticism instead of pottery
UPDATE Buildings SET PrereqTech = 'TECH_MYSTICISM' WHERE BuildingClass = 'BUILDINGCLASS_SHRINE';
--	Set monument to require stone tools
UPDATE Buildings SET PrereqTech = 'TECH_STONE_TOOLS' WHERE BuildingClass = 'BUILDINGCLASS_MONUMENT';

--	Remove fish bonus from lighthouse
DELETE FROM Building_ResourceYieldChanges WHERE BuildingType = 'BUILDING_LIGHTHOUSE';

UPDATE Language_en_US SET Text = '+1 [ICON_FOOD] Food from Coast and Ocean Tiles. +1 [ICON_PRODUCTION] Production from Sea Resources worked by this City.[NEWLINE][NEWLINE]City must be built on the coast.' 
WHERE Tag = 'TXT_KEY_BUILDING_LIGHTHOUSE_HELP';

UPDATE Language_en_US SET Text = 'The Lighthouse can only be constructed in a city next to a coastal tile. It increases the [ICON_FOOD] Food output of water tiles and it increases the [ICON_PRODUCTION] Production output of all sea resources.' 
WHERE Tag = 'TXT_KEY_BUILDING_LIGHTHOUSE_STRATEGY';

--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES 
-----------------------------------------------------------------------
--===================================================================--

UPDATE Technologies SET Cost = 35 WHERE GridX = 0;

-----------------------------------------------------------------------
--	VP: MYSTICISM
-----------------------------------------------------------------------
--	VP's 'council' is actually the grove building.
UPDATE Buildings 
SET PrereqTech = 'TECH_MYSTICISM' WHERE BuildingType = 'BUILDING_GROVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_MYSTICISM'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-----------------------------------------------------------------------
--	VP: OPTICS: (VP OPTICS)
-----------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Optics'
WHERE Tag = 'TXT_KEY_TECH_OPTICS_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	VP: TRADE: (VP HORSEBACK RIDING)
-----------------------------------------------------------------------
UPDATE Buildings SET PrereqTech = 'TECH_HORSEBACK_RIDING' WHERE BuildingClass = 'BUILDINGCLASS_FURRIER';

-----------------------------------------------------------------------
--	VP: MILITARY THEORY: Adding building and units to newly created tech
-----------------------------------------------------------------------
UPDATE Buildings
SET PrereqTech = 'TECH_MILITARY_THEORY'
WHERE BuildingClass = 'BUILDINGCLASS_BARRACKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Builds
SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'BUILD_ENCAMPMENT_SHOSHONE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_SONGHAI_MUSLIMCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_GREEK_COMPANIONCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_HORSEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_CARTHAGINIAN_FOREST_ELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_ASSYRIAN_SIEGE_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

