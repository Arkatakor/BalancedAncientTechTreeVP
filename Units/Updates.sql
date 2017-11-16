UPDATE Units SET PrereqTech = 'TECH_FISHING' WHERE Class = 'UNITCLASS_WORKBOAT';
UPDATE Units SET PrereqTech = 'TECH_HUNTING' WHERE Class = 'UNITCLASS_SCOUT';

-----------------------------------------------------------------------
--	VP: Updates
-----------------------------------------------------------------------

-----------------------------------------------------------------------
--	VP: ARCHERY
-----------------------------------------------------------------------

UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_BARBARIAN_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_INCAN_SLINGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--	Light axemen
UPDATE Units SET ObsoleteTech = 'TECH_ARCHERY' WHERE Class = 'UNITCLASS_LIGHT_AXEMAN';
UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_ARCHER' WHERE Class = 'UNITCLASS_LIGHT_AXEMAN';

-----------------------------------------------------------------------
--	VP: SAILING: 
-----------------------------------------------------------------------
--Galley
UPDATE Units SET PrereqTech = 'TECH_SAILING' WHERE Type = 'UNIT_GALLEY' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--Embarkation
UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_EMBARKATION' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_DEFENSIVE_EMBARKATION' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
