--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES 
-----------------------------------------------------------------------
--===================================================================--	
UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_WHEAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_WHEAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_DEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_DEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_BISON'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_BISON'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_FISH'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_FISH'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_COW'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_COW'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_SHEEP'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_SHEEP'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_PEARLS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_PEARLS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_IVORY'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_IVORY'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_FUR'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_FUR'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_CRAB'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_TRUFFLES'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_TRUFFLES'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_BANANA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = NULL
WHERE Type = 'RESOURCE_BANANA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = 'TECH_HUNTING'
WHERE Type = 'RESOURCE_HORSE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = 'TECH_STONE_TOOLS'
WHERE Type = 'RESOURCE_STONE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 1);

UPDATE Resources
SET TechReveal = 'TECH_STONE_TOOLS'
WHERE Type = 'RESOURCE_STONE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

UPDATE Resources
SET TechReveal = 'TECH_OPTICS'
WHERE Type = 'RESOURCE_WHALE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

UPDATE Resources
SET TechReveal = 'TECH_OPTICS'
WHERE Type = 'RESOURCE_WHALE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);
