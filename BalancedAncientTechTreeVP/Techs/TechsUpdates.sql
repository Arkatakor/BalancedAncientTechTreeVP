--===================================================================--
-----------------------------------------------------------------------
-- 					TECH DELETION
-----------------------------------------------------------------------
--===================================================================--
-------------------------------------------------------
--	REMOVE TIER 2 PREREQ
-------------------------------------------------------
DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_TRAPPING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_THE_WHEEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_ANIMAL_HUSBANDRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_MINING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-------------------------------------------------------
--	REMOVE TIER 3 PREREQ
-------------------------------------------------------
DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_SAILING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_HORSEBACK_RIDING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_CALENDAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--	archery is military theory in vp
DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_ARCHERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--	masonry is construction in vp
DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_MASONRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_BRONZE_WORKING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-------------------------------------------------------
--	REMOVE TIER 4 PREREQ
-------------------------------------------------------

--DELETE FROM Technology_PrereqTechs 
--WHERE TechType = 'TECH_OPTICS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_WRITING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_MATHEMATICS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--	construciton is masonry in vp
DELETE FROM Technology_PrereqTechs 
WHERE TechType = 'TECH_CONSTRUCTION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


--===================================================================--
-----------------------------------------------------------------------
-- 					TECH INSERTION
-----------------------------------------------------------------------
--===================================================================--
--===================================================================--
---------------------------------------------------------------------
-- 					TIER 2 
-----------------------------------------------------------------------
--===================================================================--
-------------------------------------------------------
--	ANIMAL HUSBANDRY
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_ANIMAL_HUSBANDRY', 'TECH_HUNTING');

-------------------------------------------------------
--	ARCHERY
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_ARCHERY', 'TECH_HUNTING');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_ARCHERY', 'TECH_STONE_TOOLS');

-------------------------------------------------------
--	THE WHEEL
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_THE_WHEEL', 'TECH_STONE_TOOLS');

-------------------------------------------------------
--	MINING
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MINING', 'TECH_STONE_TOOLS');

--===================================================================--
-----------------------------------------------------------------------
-- 					TIER 3
-----------------------------------------------------------------------
--===================================================================--

-------------------------------------------------------
--	SAILING
-------------------------------------------------------
--	Update sailing tech prerequisite to fishing instead of pottery
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_SAILING', 'TECH_FISHING');

-------------------------------------------------------
--	TRADE (VP: HORSEBACK RIDING)
-------------------------------------------------------
--	Update sailing tech prerequisite to fishing instead of pottery
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_HORSEBACK_RIDING', 'TECH_POTTERY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_HORSEBACK_RIDING', 'TECH_MYSTICISM');

-------------------------------------------------------
--	CALENDAR
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CALENDAR', 'TECH_ANIMAL_HUSBANDRY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CALENDAR', 'TECH_ARCHERY');

-------------------------------------------------------
--	MILITARY_THEORY
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MILITARY_THEORY', 'TECH_ARCHERY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MILITARY_THEORY', 'TECH_ANIMAL_HUSBANDRY');

-------------------------------------------------------
--	BRONZE WORKING
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_BRONZE_WORKING', 'TECH_MINING');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_BRONZE_WORKING', 'TECH_THE_WHEEL');

--===================================================================--
-----------------------------------------------------------------------
-- 					TIER 4
-----------------------------------------------------------------------
--===================================================================--
-------------------------------------------------------
--	MATHEMATICS
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MATHEMATICS', 'TECH_CALENDAR');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MATHEMATICS', 'TECH_MILITARY_THEORY');

-------------------------------------------------------
--	MASONRY (VP: CONSTRUCTION)
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MASONRY', 'TECH_THE_WHEEL');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MASONRY', 'TECH_WOOD_WORKING');

-------------------------------------------------------
--	WRITING 
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_WRITING', 'TECH_HORSEBACK_RIDING');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_WRITING', 'TECH_CALENDAR');

-------------------------------------------------------
--	CONSTRUCTION (VP: MASONRY)
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CONSTRUCTION', 'TECH_MASONRY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CONSTRUCTION', 'TECH_BRONZE_WORKING');

--===================================================================--
-----------------------------------------------------------------------
-- 					COORDINATES
-----------------------------------------------------------------------
--===================================================================--

-----------------------------------------------------------------------
--	TIER 1 TECHS
-----------------------------------------------------------------------
UPDATE Technologies Set GridY = 3 WHERE Type = 'TECH_HUNTING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	TIER 2 TECHS
-----------------------------------------------------------------------
UPDATE Technologies Set GridX = 1 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies Set GridY = 1 WHERE Type = 'TECH_POTTERY';
UPDATE Technologies Set GridY = 3 WHERE Type = 'TECH_ANIMAL_HUSBANDRY';
UPDATE Technologies Set GridY = 5 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies Set GridY = 7 WHERE Type = 'TECH_THE_WHEEL';
UPDATE Technologies Set GridY = 6 WHERE Type = 'TECH_WOOD_WORKING';
UPDATE Technologies Set GridY = 9 WHERE Type = 'TECH_MINING';


-----------------------------------------------------------------------
--	TIER 3 TECHS
-----------------------------------------------------------------------
UPDATE Technologies Set GridY = 0 WHERE Type = 'TECH_SAILING';
UPDATE Technologies Set GridY = 2 WHERE Type = 'TECH_HORSEBACK_RIDING';
UPDATE Technologies Set GridY = 3 WHERE Type = 'TECH_CALENDAR';
--	VP's construction.
UPDATE Technologies Set GridY = 7 WHERE Type = 'TECH_MASONRY';


UPDATE Technologies SET Cost =      30 WHERE GridX =  0; --35
UPDATE Technologies SET Cost =     	55 WHERE GridX =  1; --55
UPDATE Technologies SET Cost =		90 WHERE GridX =  2; --105

--===================================================================--
-----------------------------------------------------------------------
-- 					TEXT AND ICONS
-----------------------------------------------------------------------
--===================================================================--
-----------------------------------------------------------------------
-- 					SAILING
-----------------------------------------------------------------------
UPDATE Language_en_US
SET Text = 'Sailing'
WHERE Tag = 'TXT_KEY_TECH_SAILING_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Sailing is the art of harnessing the power of the wind to move a boat over the water. To be successful, sailing required the mastery of a number of diverse skills. First, the culture must be able to construct a seaworthy craft. Second, they must be able to construct some sort of sturdy sheets (sails) which can catch the wind and transmit its energy to the hull. Third they must be able to build the various ropes and cleats and pulleys used to control the sails of the ship, and finally they must be able to successfully navigate the vessel from point to point without getting lost or capsizing or suffering some other misfortune.[NEWLINE][NEWLINE]The earliest recorded evidence of watercraft can be found in illustrations in Egypt which date from around 4,000 BC. As a riparian (river-based) civilization, the Egyptians were excellent sailors. Many of their vessels contained both oars and sails, the former being used when the winds were not strong enough or weren not coming from a favorable direction.[NEWLINE][NEWLINE]By 3000 BC the Egyptians were venturing out into the Mediterranean Sea in their vessels, steering the lengthy journey across the open water to Crete and later Phoenicia. The Egyptians also sailed down the coast of Africa, looking for knowledge, trade and treasure.[NEWLINE][NEWLINE]The earliest warships - biremes and triremes and the like - were powered by oar and sail and possessed rams or beaks on their prows. During battle the helmsman would attempt to ram the enemy vessel at high speed, while avoiding enemy attempts to do the same thing. Some vessels were equipped with archers to fire at enemy craft from longer distance, while others had soldiers aboard; these vessels sought to come alongside the enemy craft so that their soldiers could board the other ship and take it by storm.[NEWLINE][NEWLINE]The Greeks - especially the Athenians and the island colonies - were masters at naval warfare. One of the reasons that they were able to defeat their much larger and more powerful neighbor, Persia, was that the Athenian navy dominated the Aegean Sea and thus constantly threatened the increasingly lengthy supply chain of Persia.'
WHERE Tag = 'TXT_KEY_TECH_SAILING_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Allows land units to [COLOR_POSITIVE_TEXT]Embark[ENDCOLOR] onto water tiles and travel along the coast. Also allows you to build ships, useful for exploration early naval warfare.'
WHERE Tag = 'TXT_KEY_TECH_SAILING_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Technologies SET PortraitIndex = 13,  IconAtlas = 'TECH_ATLAS_1'
WHERE Type = 'TECH_SAILING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
-----------------------------------------------------------------------
-- 					OPTICS
-----------------------------------------------------------------------
UPDATE Language_en_US
SET Text = 'Optics is the study of light and vision. The earliest and most important optical challenges were centered upon aiding the perception of the human eye - letting it see greater distances, or allowing it to look at very small objects, or in darkness. The first lenses were developed by the ancient Egyptians and the Mesopotamians. The oldest lenses, made from polished crystal, date back to 700 BC. The Greeks and Romans created crude lenses by filling glass spheres with water. In "Optics," Euclid described the mathematical rules of perception and examined refraction. In the eighth century AD Islamic scholars studied optics in depth, writing learned treatises on refraction and the construction of lenses and mirrors.[NEWLINE][NEWLINE]The first wearable eyeglasses were invented in Italy in the 12th century, and the first primitive telescopes in the 15th, as was the first microscope. Though not very good by todays standards, these instruments greatly expanded mans ability to perceive the world around him and to navigate the worlds uncharted oceans.'
WHERE Tag = 'TXT_KEY_TECH_OPTICS_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Allows you to build the [COLOR_POSITIVE_TEXT]Lighthouse[ENDCOLOR] in coastal cities, improving [ICON_FOOD] Food output from water tiles, speeding their growth. Also grants you access to the [COLOR_POSITIVE_TEXT]Cargo Ship[ENDCOLOR].'
WHERE Tag = 'TXT_KEY_TECH_OPTICS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Optics'
WHERE Tag = 'TXT_KEY_TECH_OPTICS_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Technologies SET PortraitIndex = 18,  IconAtlas = 'TECH_ATLAS_1'
WHERE Type = 'TECH_OPTICS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
-- 					BOMBARD RANGE FIX
-----------------------------------------------------------------------
UPDATE Civilization_FreeTechs SET TechType = 'TECH_DEFAULT';
UPDATE Technologies SET BombardRange=1 WHERE Type='TECH_DEFAULT';
