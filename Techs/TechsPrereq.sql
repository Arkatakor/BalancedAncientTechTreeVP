-- Insert SQL Rules Here 

--	resource improvements 
UPDATE Builds SET PrereqTech = 'TECH_FISHING' WHERE Type = 'BUILD_FISHING_BOATS';
UPDATE Builds SET PrereqTech = 'TECH_HUNTING' WHERE Type = 'BUILD_CAMP';

--	remove tier 2 prereq
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_POTTERY';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_ANIMAL_HUSBANDRY';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_ARCHERY';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_THE_WHEEL';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_WOOD_WORKING';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_MINING';

--	remove tier 3 prereq
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_SAILING';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_TRADE';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_CALENDAR';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_MILITARY_THEORY';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_CONSTRUCTION';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_BRONZE_WORKING';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_WOOD_WORKING';
DELETE FROM Technology_PrereqTechs WHERE TechType = 'TECH_MINING';

						
--	Tier 2 prereq techs

INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_POTTERY', 'TECH_AGRICULTURE');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_ANIMAL_HUSBANDRY', 'TECH_HUNTING');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_ARCHERY', 'TECH_HUNTING');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_THE_WHEEL', 'TECH_STONE_TOOLS');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_WOOD_WORKING', 'TECH_STONE_TOOLS');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MINING', 'TECH_STONE_TOOLS');

											NEXT ERA
Fishing 		--> 					Sailing	--> 				->Optics
Agriculture 	-->	Pottery			-->	Trade						-> Writing	
Mysticism		-->					-->	Trade			
Hunting			-->	Animal Husbandry--> Calender
									--> Calender (archery)
				-->	Archery (artemetis) --> Military Theory
									--> Military Theory (the wheel)
Stone Tools		--> The wheel		--> Construction
				--> Wood Working	--> Construction		
				-->	Mining			-->	Bronze Working

--	Tier 3 prereq techs]
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_SAILING', 'TECH_FISHING');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_SAILING', 'TECH_POTTERY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_TRADE', 'TECH_POTTERY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_TRADE', 'TECH_MYSTICISM');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CALENDAR', 'TECH_ANIMAL_HUSBANDRY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CALENDAR', 'TECH_ARCHERY');

INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MILITARY_THEORY', 'TECH_ARCHERY');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_MILITARY_THEORY', 'TECH_THE_WHEEL');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CONSTRUCTION', 'TECH_THE_WHEEL');
INSERT INTO Technology_PrereqTechs (TechType, PrereqTech) VALUES ('TECH_CONSTRUCTION', 'TECH_WOOD_WORKING');

-- UPDATE Technology_PrereqTechs Set PrereqTech = 'TECH_FISHING' WHERE TechType = 'TECH_SAILING';
-- UPDATE Technology_PrereqTechs Set PrereqTech = 'TECH_AGRICULTURE' WHERE TechType = 'TECH_POTTERY';
-- UPDATE Technology_PrereqTechs Set PrereqTech = 'TECH_HUNTING' WHERE TechType = 'TECH_ANIMAL_HUSBANDRY';
-- UPDATE Technology_PrereqTechs Set PrereqTech = 'TECH_HUNTING' WHERE TechType = 'TECH_ARCHERY';
-- UPDATE Technology_PrereqTechs Set PrereqTech = 'TECH_STONE_TOOLS' WHERE TechType = 'TECH_THE_WHEEL';
-- UPDATE Technology_PrereqTechs Set PrereqTech = 'TECH_STONE_TOOLS' WHERE TechType = 'TECH_WOOD_WORKING';
-- UPDATE Technology_PrereqTechs Set PrereqTech = 'TECH_STONE_TOOLS' WHERE TechType = 'TECH_MINING';