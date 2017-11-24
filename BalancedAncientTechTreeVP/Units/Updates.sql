UPDATE Units SET PrereqTech = 'TECH_FISHING' WHERE Class = 'UNITCLASS_WORKBOAT';
UPDATE Units SET PrereqTech = 'TECH_HUNTING' WHERE Class = 'UNITCLASS_SCOUT';


--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES 
-----------------------------------------------------------------------
--===================================================================--

-----------------------------------------------------------------------
--	VP: Updates
-----------------------------------------------------------------------

-----------------------------------------------------------------------
--	VP: ARCHERY
-----------------------------------------------------------------------

UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_BARBARIAN_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Class = 'UNITCLASS_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
--UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_INCAN_SLINGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--	Light axemen
UPDATE Units SET ObsoleteTech = 'TECH_ARCHERY' WHERE Class = 'UNITCLASS_LIGHT_AXEMAN';
UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_ARCHER' WHERE Class = 'UNITCLASS_LIGHT_AXEMAN';

-----------------------------------------------------------------------
--	VP: SAILING: 
-----------------------------------------------------------------------
--Trireme
UPDATE Units SET PrereqTech = 'TECH_SAILING' WHERE Class = 'UNITCLASS_TRIREME' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Units SET PrereqTech = 'TECH_SAILING' WHERE Type = 'UNIT_CARTHAGINIAN_QUINQUEREME' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Units SET PrereqTech = 'TECH_SAILING' WHERE Type = 'UNIT_BYZANTINE_DROMON' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--Embarkation
UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_EMBARKATION' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_DEFENSIVE_EMBARKATION' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


-----------------------------------------------------------------------
--	VP: MILITARY THEORY: Adding building and units to newly created tech
-----------------------------------------------------------------------
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_SONGHAI_MUSLIMCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_GREEK_COMPANIONCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_HORSEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_CARTHAGINIAN_FOREST_ELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
UPDATE Units SET PrereqTech = 'TECH_MILITARY_THEORY' WHERE Type = 'UNIT_ASSYRIAN_SIEGE_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

