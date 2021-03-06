-- Insert SQL Rules Here 
-----------------------------------------------------------------------
--	FISHING 
-----------------------------------------------------------------------
UPDATE Technology_Flavors SET TechType = 'TECH_FISHING' WHERE TechType = 'TECH_SAILING' 
AND FlavorType = 'FLAVOR_NAVAL_TILE_IMPROVEMENT';

-----------------------------------------------------------------------
--	HUNTING 
-----------------------------------------------------------------------
--	let the AI know this is for tile improvement
UPDATE Technology_Flavors SET TechType = 'TECH_HUNTING' WHERE TechType = 'TECH_TRAPPING' 
AND FlavorType = 'FLAVOR_TILE_IMPROVEMENT';
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_HUNTING','FLAVOR_WONDER', 3);

-----------------------------------------------------------------------
--	MYSTICISM
-----------------------------------------------------------------------
--	let the AI know this is for religion
--	Let AI know that this tech offers small science boost
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_MYSTICISM','FLAVOR_SCIENCE', 1);

--	Update religion indicator for AI; pottery no longer offers religion (shrine), mysticism does
UPDATE Technology_Flavors SET TechType = 'TECH_MYSTICISM' WHERE TechType = 'TECH_POTTERY' AND FlavorType = 'FLAVOR_RELIGION';

-----------------------------------------------------------------------
--	STONE_TOOLS 
-----------------------------------------------------------------------
--	Let AI know that this tech offers small culture boost (through monument)
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_STONE_TOOLS','FLAVOR_CULTURE', 4);
--	For axe warrior
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_STONE_TOOLS','FLAVOR_DEFENSE', 3);
--	For knossos
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_STONE_TOOLS','FLAVOR_WONDER', 3);

-----------------------------------------------------------------------
--	WOOD_WORKING 
-----------------------------------------------------------------------
UPDATE Technology_Flavors SET TechType = 'TECH_WOOD_WORKING' WHERE TechType = 'TECH_CONSTRUCTION' 
AND FlavorType = 'FLAVOR_TILE_IMPROVEMENT';

--	Let AI know that this tech offers produciton boost (through lubmer mill and carpenter)
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_WOOD_WORKING','FLAVOR_PRODUCTION', 8);

--	Remove production trait from consturction
DELETE FROM Technology_Flavors WHERE TechType = 'TECH_CONSTRUCTION' AND FlavorType = 'FLAVOR_PRODUCTION';

--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES
-----------------------------------------------------------------------
--===================================================================--
-----------------------------------------------------------------------
--	VP: POTTERY
-----------------------------------------------------------------------
--	removing reglious flavor
DELETE FROM Technology_Flavors WHERE TechType = 'TECH_POTTERY' AND FlavorType = 'FLAVOR_RELIGION' 
AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-----------------------------------------------------------------------
--	VP: MYSTICISM
-----------------------------------------------------------------------
--	increase religous flavor of mysticism from 10 to 15 (it is assumed 10 from vanilla civ)
UPDATE Technology_Flavors SET Flavor = 15 WHERE TechType = 'TECH_MYSTICISM' AND FlavorType = 'FLAVOR_RELIGION';

-----------------------------------------------------------------------
--	VP: TRADE (TECH_HORSEBACK_RIDING)
-----------------------------------------------------------------------
--	surprisingly not in vp
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_HORSEBACK_RIDING','FLAVOR_GOLD', 10);

-----------------------------------------------------------------------
--	VP: ARCHERY
-----------------------------------------------------------------------
--	artemites now moved to archery so add wonder flavor
INSERT INTO Technology_Flavors (TechType, FlavorType, Flavor) VALUES('TECH_ARCHERY','FLAVOR_WONDER', 2);