UPDATE Technologies SET Cost = 35 WHERE GridX = 0

--	Set shrine requirement to mysticism instead of pottery
UPDATE Buildings SET PrereqTech = 'TECH_MYSTICISM' WHERE BuildingClass = 'BUILDINGCLASS_SHRINE';
--	Set monument to require stone tools
UPDATE Buildings SET PrereqTech = 'TECH_STONE_TOOLS' WHERE BuildingClass = 'BUILDINGCLASS_MONUMENT';
--	VP's 'council' is actually the grove building.
UPDATE Buildings SET PrereqTech = 'TECH_MYSTICISM' WHERE BuildingType = 'BUILDING_GROVE';

--	Remove fish bonus from lighthouse
DELETE FROM Building_ResourceYieldChanges WHERE BuildingType = 'BUILDING_LIGHTHOUSE';

UPDATE Language_en_US SET Text = '+1 [ICON_FOOD] Food from Coast and Ocean Tiles. +1 [ICON_PRODUCTION] Production from Sea Resources worked by this City.[NEWLINE][NEWLINE]City must be built on the coast.' WHERE Tag = 'TXT_KEY_BUILDING_LIGHTHOUSE_HELP';

UPDATE Language_en_US SET Text = 'The Lighthouse can only be constructed in a city next to a coastal tile. It increases the [ICON_FOOD] Food output of water tiles and it increases the [ICON_PRODUCTION] Production output of all sea resources.' WHERE Tag = 'TXT_KEY_BUILDING_LIGHTHOUSE_STRATEGY';

-----------------------------------------------------------------------
--	VP ARCHERY: RESETTING TEXT TO ORIGINAL VALUES
-----------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Archery'
WHERE Tag = 'TXT_KEY_TECH_ARCHERY_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Archery is the technology by which a person uses the spring power stored in a bent stick (or "bow") to shoot a slender pointed projectile (an "arrow") a great distance at rapid speed. Throughout history bows and arrows have been employed in the hunt and in war. Their earliest use is lost in the mists of time, but probably dates from the Paleolithic era (which ended some 14,000 years ago) or even earlier (archaeologists have found stone points in Africa dating 60,000 years ago that may have been arrowheads). Virtually every early culture employed bows and arrows, excepting for the Aboriginal Australians, who appear never to have invented them.[NEWLINE][NEWLINE]Archers have been used in war about as long as there has been war. The early Greeks and Egyptians deployed ranks of archers, as did the earliest known armies from India, Asia, Japan, and the Americas. By the Middle Ages the crossbow and firearms began to replace the bow and arrow in warfare and hunting, and by the 16th century it had all but disappeared from most modern armies. Today target archery survives as a sport in many cultures around the world. Some enthusiasts still hunt with the bow and arrow which, despite its great antiquity, can take down a deer as effectively as it did ten thousand years ago.'
WHERE Tag = 'TXT_KEY_TECH_ARCHERY_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Allows you to build the [COLOR_POSITIVE_TEXT]Barracks[ENDCOLOR], an essential building for early war.'
WHERE Tag = 'TXT_KEY_TECH_ARCHERY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	SAILING: (VP HORSEBACK RIDING)
-----------------------------------------------------------------------

UPDATE Technologies
SET PrereqTech = 'TECH_FISHING' 
WHERE Type = 'TECH_SAILING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--Galley
UPDATE Units SET PrereqTech = 'TECH_SAILING' WHERE Type = 'UNIT_GALLEY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--Embarkation
UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_EMBARKATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_DEFENSIVE_EMBARKATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	OPTICS: (VP SAILING)
-----------------------------------------------------------------------

UPDATE Technologies
SET PrereqTech = 'TECH_SAILING' 
WHERE Type = 'TECH_OPTICS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Optics'
WHERE Tag = 'TXT_KEY_TECH_OPTICS_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	TRADE: (VP HORSEBACK RIDING)
-----------------------------------------------------------------------

--	Insert new prereq techs for trade 
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_HORSEBACK_RIDING', 'TECH_POTTERY')
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_HORSEBACK_RIDING', 'TECH_MYSTICISM');

UPDATE Technologies
SET PrereqTech = 'TECH_SAILING' 
WHERE Type = 'TECH_HORSEBACK_RIDING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );



UPDATE Language_en_US
SET Text = 'Optics'
WHERE Tag = 'TXT_KEY_TECH_OPTICS_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );




-- UPDATE Buildings
-- SET PrereqTech = 'TECH_HORSEBACK_RIDING'
-- WHERE Type = 'BUILDING_MARKET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- UPDATE Buildings
-- SET PrereqTech = 'TECH_HORSEBACK_RIDING'
-- WHERE Type = 'BUILDING_BAZAAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- UPDATE Traits
-- SET FreeUnitPrereqTech = 'TECH_HORSEBACK_RIDING'
-- WHERE Type = 'TRAIT_SUPER_CITY_STATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

-- UPDATE Technologies
-- SET InternationalTradeRoutesChange = '1'
-- WHERE Type = 'TECH_HORSEBACK_RIDING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- UPDATE Language_en_US
-- SET Text = 'Trade'
-- WHERE Tag = 'TXT_KEY_TECH_HORSEBACK_RIDING_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- UPDATE Language_en_US
-- SET Text = 'Trade involves the transfer of the ownership of goods or services from one person or entity to another in exchange for other goods or services or for money. Possible synonyms of "trade" include "commerce" and "financial transaction". Types of trade include barter. A network that allows trade is called a market. The original form of trade, barter, saw the direct exchange of goods and services for other goods and services. Later one side of the barter started to involve precious metals, which gained symbolic as well as practical importance. Modern traders generally negotiate through a medium of exchange, such as money. As a result, buying can be separated from selling, or earning. The invention of money (and later credit, paper money and non-physical money) greatly simplified and promoted trade. Trade between two traders is called bilateral trade, while trade between more than two traders is called multilateral trade.'
-- WHERE Tag = 'TXT_KEY_TECH_HORSEBACK_RIDING_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- UPDATE Language_en_US
-- SET Text = 'Receive an additional [ICON_INTERNATIONAL_TRADE] Trade Route. Allows you to build the [COLOR_POSITIVE_TEXT]Horseman[ENDCOLOR], a fast and powerful mounted unit. Also allows you to build the [COLOR_POSITIVE_TEXT]Market[ENDCOLOR], an excellent source of early [ICON_GOLD] Gold.'
-- WHERE Tag = 'TXT_KEY_TECH_HORSEBACK_RIDING_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- -- Caravans moved to Pottery
	-- UPDATE Units SET PrereqTech = 'TECH_HORSEBACK_RIDING' WHERE Type = 'UNIT_CARAVAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- UPDATE Buildings
-- SET PrereqTech = 'TECH_HORSEBACK_RIDING'
-- WHERE Type = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );




-----------------------------------------------------------------------
--	MILITARY THEORY: Adding building and units to newly created tech
-----------------------------------------------------------------------
UPDATE Buildings
SET PrereqTech = 'TECH_MILITARY_THEORY'
WHERE Type = 'BUILDING_BARRACKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Builds
SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'BUILD_ENCAMPMENT_SHOSHONE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_SONGHAI_MUSLIMCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_GREEK_COMPANIONCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_HORSEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_CARTHAGINIAN_FOREST_ELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_ASSYRIAN_SIEGE_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

