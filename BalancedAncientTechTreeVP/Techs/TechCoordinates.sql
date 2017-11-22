--	Relocate tech coordinates
UPDATE Technologies Set GridY = 1 WHERE Type = 'TECH_AGRICULTURE';
UPDATE Technologies Set GridY = 4 WHERE Type = 'TECH_ANIMAL_HUSBANDRY';
UPDATE Technologies Set GridY = 5 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies Set GridY = 3 WHERE Type = 'TECH_HUNTING';
UPDATE Technologies Set GridY = 6 WHERE Type = 'TECH_THE_WHEEL';

--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES 
-----------------------------------------------------------------------
--===================================================================--

-----------------------------------------------------------------------
--	TIER 1 TECHS
-----------------------------------------------------------------------
UPDATE Technologies Set GridY = 3 WHERE Type = 'TECH_HUNTING';

-----------------------------------------------------------------------
--	TIER 2 TECHS
-----------------------------------------------------------------------
UPDATE Technologies Set GridX = 1 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies Set GridY = 1 WHERE Type = 'TECH_POTTERY';
UPDATE Technologies Set GridY = 3 WHERE Type = 'TECH_ANIMAL_HUSBANDRY';
UPDATE Technologies Set GridY = 6 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies Set GridY = 7 WHERE Type = 'TECH_WOOD_WORKING';
UPDATE Technologies Set GridY = 8 WHERE Type = 'TECH_MINING';


-----------------------------------------------------------------------
--	TIER 3 TECHS
-----------------------------------------------------------------------
UPDATE Technologies Set GridY = 0 WHERE Type = 'TECH_SAILING';
UPDATE Technologies Set GridY = 2 WHERE Type = 'TECH_HORSEBACK_RIDING';
--	VP's construction.
UPDATE Technologies Set GridY = 8 WHERE Type = 'TECH_MASONRY';