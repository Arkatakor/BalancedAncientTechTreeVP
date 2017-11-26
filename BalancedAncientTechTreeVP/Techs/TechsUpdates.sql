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
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MILITARY_THEORY', 'TECH_THE_WHEEL');

-------------------------------------------------------
--	BRONZE WORKING
-------------------------------------------------------
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_BRONZE_WORKING', 'TECH_MINING');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_BRONZE_WORKING', 'TECH_WOOD_WORKING');

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
UPDATE Technologies Set GridY = 4 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies Set GridY = 5 WHERE Type = 'TECH_THE_WHEEL';
UPDATE Technologies Set GridY = 7 WHERE Type = 'TECH_WOOD_WORKING';
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


