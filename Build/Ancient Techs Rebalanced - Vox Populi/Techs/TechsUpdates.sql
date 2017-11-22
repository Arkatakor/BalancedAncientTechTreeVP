-- Insert SQL Rules Here 
--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES 
-----------------------------------------------------------------------
--===================================================================--
-----------------------------------------------------------------------
--	VP: TRAPPING (REMOVAL)
-----------------------------------------------------------------------
DELETE FROM Technologies WHERE Type = 'TECH_TRAPPING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
DELETE FROM Technology_PrereqTechs WHERE PrereqTech = 'TECH_TRAPPING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
DELETE FROM Technology_PrereqTechs WHERE PrereqTech = 'TECH_TRAPPING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_TRAPPING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
DELETE FROM Technology_Flavors WHERE TechType = 'TECH_TRAPPING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	VP: REMOVE FREE TECHS FROM AI
-----------------------------------------------------------------------
DELETE FROM HandicapInfo_AIFreeTechs;

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