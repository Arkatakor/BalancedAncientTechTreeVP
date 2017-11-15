UPDATE Units SET PrereqTech = 'TECH_FISHING' WHERE Class = 'UNITCLASS_WORKBOAT';
UPDATE Units SET PrereqTech = 'TECH_HUNTING' WHERE Class = 'UNITCLASS_SCOUT';

-----------------------------------------------------------------------
--	VP: Updates
-----------------------------------------------------------------------

UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_BARBARIAN_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_INCAN_SLINGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--	Light axemen
UPDATE Units SET ObsoleteTech = 'TECH_ARCHERY' WHERE Class = 'UNITCLASS_LIGHT_AXEMAN';
UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_ARCHER' WHERE Class = 'UNITCLASS_LIGHT_AXEMAN';
