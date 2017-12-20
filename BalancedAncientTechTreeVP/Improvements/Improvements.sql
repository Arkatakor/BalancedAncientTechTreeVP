-----------------------------------------------------------------------
--	WOOD WORKING
-----------------------------------------------------------------------
UPDATE Builds SET PrereqTech = 'TECH_WOOD_WORKING' WHERE Type = 'BUILD_LUMBERMILL';
-----------------------------------------------------------------------
--	FISHING
-----------------------------------------------------------------------
UPDATE Builds SET PrereqTech = 'TECH_FISHING' WHERE Type = 'BUILD_FISHING_BOATS';
-----------------------------------------------------------------------
--	HUNTING 
-----------------------------------------------------------------------
UPDATE Builds SET PrereqTech = 'TECH_HUNTING' WHERE Type = 'BUILD_CAMP';
-----------------------------------------------------------------------
--	POTTERY
-----------------------------------------------------------------------
UPDATE Builds SET PrereqTech = 'TECH_POTTERY' WHERE Type = 'BUILD_TRADING_POST';

--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES 
-----------------------------------------------------------------------
--===================================================================--
UPDATE Improvement_Yields SET Yield = '1' WHERE YieldType = 'YIELD_GOLD' AND ImprovementType = 'IMPROVEMENT_TRADING_POST' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TERRAIN' AND Value= 1 );

UPDATE Improvement_Yields SET Yield = '0' WHERE YieldType = 'YIELD_CULTURE' 
AND ImprovementType = 'IMPROVEMENT_TRADING_POST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TERRAIN' AND Value= 1 );

INSERT INTO Improvement_TechYieldChanges
	(ImprovementType, TechType, YieldType, Yield)
VALUES
	('IMPROVEMENT_TRADING_POST', 'TECH_CURRENCY', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_TRADING_POST', 'TECH_CURRENCY', 'YIELD_GOLD', 2);
