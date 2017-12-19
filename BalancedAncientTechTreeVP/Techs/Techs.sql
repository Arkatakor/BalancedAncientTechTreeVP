-----------------------------------------------------------------------
--	FISHING 
-----------------------------------------------------------------------
INSERT INTO Technologies (Type, Cost, Description, Civilopedia, Help, Era, Trade, GoodyTech, GridX, GridY, Quote, PortraitIndex, IconAtlas, AudioIntro, AudioIntroHeader) 
VALUES ('TECH_FISHING', 20, 'TXT_KEY_TECH_FISHING_TITLE', 'TXT_KEY_TECH_FISHING_DESC', 'TXT_KEY_TECH_FISHING_HELP', 'ERA_ANCIENT', 1, 0, 0, 0, 
'TXT_KEY_TECH_FISHING_QUOTE', 0, 'ANCIENT_TECH_ICON_ATLAS', 'AS2D_TECH_FISHING', 'AS2D_TECH_FISHING');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_FISHING_TITLE', 'Fishing');
INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_FISHING_HELP', 
'Allows you to build work boats, useful for exploration and harvesting resources in the water like [ICON_RES_FISH] [COLOR_POSITIVE_TEXT]Fish[ENDCOLOR] and [ICON_RES_PEARLS] [COLOR_POSITIVE_TEXT]Pearls[ENDCOLOR].');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_FISHING_QUOTE', 
'[NEWLINE][TAB][TAB]"Give a man a fish and you feed him for a day. Teach a man to fish and you feed him for a lifetime."[NEWLINE][TAB][TAB]  - Lao Tzu[NEWLINE][TAB]');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_FISHING_DESC', 'Man has long relied on the sea to provide sustenance. The most primitive people gathered mollusks and crabs from the sand; eventually they learned to make spears to capture the rich foodstuffs out of reach of hand. The fishing technology allows sophisticated advancements in fishing: building small coastal fishing vessels, weaving and deploying large fishing nets, constructing crab traps, and so forth.[NEWLINE][NEWLINE]Fishing is a major industry in the world today, and hundreds of thousands of pounds of fish are taken from the sea every day. However, this has put a serious strain on the ocean''s ecology, and continued unfettered fishing may soon overwhelm and destroy this precious resource.');

--	Audio
INSERT INTO Audio_Sounds (SoundID, Filename, LoadType) 
VALUES ('SND_TECH_FISHING', 'TechFishing', 'DynamicResident');

INSERT INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume) 
VALUES ('AS2D_TECH_FISHING', 'SND_TECH_FISHING', 'GAME_SPEECH', 80, 80);

--	Update Help tool tips for sailing to no longer include part with acquiring resources
UPDATE Language_en_US Set Text = 'Used to establish lucrative sea-based Trade Routes. Also allows you to build military and economic ships, useful for exploration' 
WHERE Tag = 'TXT_KEY_TECH_SAILING_HELP';



-----------------------------------------------------------------------
--	HUNTING 
-----------------------------------------------------------------------
INSERT INTO Technologies (Type, Cost, Description, Civilopedia, Help, Era, Trade, GoodyTech, GridX, GridY, Quote, PortraitIndex, IconAtlas, AudioIntro, AudioIntroHeader) 
VALUES ('TECH_HUNTING', 20, 'TXT_KEY_TECH_HUNTING_TITLE', 'TXT_KEY_TECH_HUNTING_DESC', 'TXT_KEY_TECH_HUNTING_HELP', 'ERA_ANCIENT', 1, 0, 0, 4, 
'TXT_KEY_TECH_HUNTING_QUOTE', 1, 'ANCIENT_TECH_ICON_ATLAS', 'AS2D_TECH_HUNTING', 'AS2D_TECH_HUNTING');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_HUNTING_TITLE', 'Hunting');
INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_HUNTING_HELP', 
'Allows your Workers to construct [COLOR_POSITIVE_TEXT]Camps[ENDCOLOR] on sources of [ICON_RES_DEER] Deer, [ICON_RES_IVORY] Ivory, [ICON_RES_FUR] Fur and [ICON_RES_TRUFFLES] Truffles.');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_HUNTING_QUOTE', 
'[NEWLINE][TAB][TAB]"If you chase two rabbits, you will lose them both."[NEWLINE][TAB][TAB]  - Native American saying[NEWLINE][TAB]');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_HUNTING_DESC', 'Man has long relied on the sea to provide sustenance. The most primitive people gathered mollusks and crabs from the sand; eventually they learned to make spears to capture the rich foodstuffs out of reach of hand. The fishing technology allows sophisticated advancements in fishing: building small coastal fishing vessels, weaving and deploying large fishing nets, constructing crab traps, and so forth.[NEWLINE]Hunting is a major industry in the world today, and hundreds of thousands of pounds of fish are taken from the sea every day. However, this has put a serious strain on the ocean''s ecology, and continued unfettered fishing may soon overwhelm and destroy this precious resource.');

--	Audio
INSERT INTO Audio_Sounds (SoundID, Filename, LoadType) 
VALUES ('SND_TECH_HUNTING', 'TechHunting', 'DynamicResident');

INSERT INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume) 
VALUES ('AS2D_TECH_HUNTING', 'SND_TECH_HUNTING', 'GAME_SPEECH', 80, 80);

--	Update Help tool tips for trapping to no longer include part with acquiring resources
UPDATE Language_en_US Set Text = 'Allows you to build the [COLOR_POSITIVE_TEXT]Circus[ENDCOLOR] which increases the happiness in your population provided there is an improved source of [ICON_RES_HORSE] horse or [ICON_RES_IVORY] ivory in the city vicinity.' 
WHERE Tag = 'TXT_KEY_TECH_TRAPPING_HELP';

-----------------------------------------------------------------------
--	MYSTICISM 
-----------------------------------------------------------------------
INSERT INTO Technologies (Type, Cost, Description, Civilopedia, Help, Era, Trade, GoodyTech, GridX, GridY, Quote, PortraitIndex, IconAtlas, AudioIntro, AudioIntroHeader) 
VALUES ('TECH_MYSTICISM', 20, 'TXT_KEY_TECH_MYSTICISM_TITLE', 'TXT_KEY_TECH_MYSTICISM_DESC', 'TXT_KEY_TECH_MYSTICISM_HELP', 'ERA_ANCIENT', 1, 0, 0, 2, 
'TXT_KEY_TECH_MYSTICISM_QUOTE', 2, 'ANCIENT_TECH_ICON_ATLAS', 'AS2D_TECH_MYSTICISM', 'AS2D_TECH_MYSTICISM');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MYSTICISM_TITLE', 'Mysticism');
INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MYSTICISM_HELP', 
'Allows you to build the elder council and shrine.  Also leads to writing.');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MYSTICISM_QUOTE', 
'[NEWLINE][TAB][TAB]"Nature herself has imprinted on the minds of all the idea of God."[NEWLINE][TAB][TAB]  - Cicero[NEWLINE][TAB]');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MYSTICISM_DESC', 'People of the ancient world were fascinated and awed by the forces of nature surrounding them. Earthquakes, storms and other phenomena were generally regarded as signs from heaven. Individuals and groups arose to formulate explanations for these events, and pass the knowledge along to the tribe. The priests and priestesses of mysticism, who were often called oracles, claimed union with the divine through meditation and trance-like contemplation. Primitive mysticism offered mankind the first, tenuous links with the powers that shaped their world, and represented the first move toward the organized polytheistic and monotheistic religions to come.');

--	Audio
INSERT INTO Audio_Sounds (SoundID, Filename, LoadType) 
VALUES ('SND_TECH_MYSTICISM', 'TechMysticism', 'DynamicResident');

INSERT INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume) 
VALUES ('AS2D_TECH_MYSTICISM', 'SND_TECH_MYSTICISM', 'GAME_SPEECH', 80, 80);

-----------------------------------------------------------------------
--	STONE_TOOLS 
-----------------------------------------------------------------------
INSERT INTO Technologies (Type, Cost, Description, Civilopedia, Help, Era, Trade, GoodyTech, GridX, GridY, Quote, PortraitIndex, IconAtlas, AudioIntro, AudioIntroHeader) 
VALUES ('TECH_STONE_TOOLS', 20, 'TXT_KEY_TECH_STONE_TOOLS_TITLE', 'TXT_KEY_TECH_STONE_TOOLS_DESC', 'TXT_KEY_TECH_STONE_TOOLS_HELP', 'ERA_ANCIENT', 1, 0, 0, 5, 
'TXT_KEY_TECH_STONE_TOOLS_QUOTE', 0, 'EXTENDED_RESOURCE_ATLAS', 'AS2D_TECH_STONE_TOOLS', 'AS2D_TECH_STONE_TOOLS');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_STONE_TOOLS_TITLE', 'Stone Tools');
INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_STONE_TOOLS_HELP', 
'Allows you to build monument and axe warrior.  Leads to mining.');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_STONE_TOOLS_QUOTE', 
'[NEWLINE][TAB][TAB]"The man who moves a mountain begins by carrying away small stones."[NEWLINE][TAB][TAB]  - Confucius[NEWLINE][TAB]');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_STONE_TOOLS_DESC', 'Stone tools predate human history. It appears as if the first stone tools were used by Paranthropus, an ancestor of man who lived about two million years ago. [NEWLINE][NEWLINE]Most stone tools are created by chipping or grinding. The former is used when working with crystalline materials such as flint, chert and obsidian. The worker taps the stone with a harder stone, carefully chipping off stone flakes until the stone has been properly shaped. Mesoamerican tribes used this method to make their sharp and deadly obsidian swords. [NEWLINE][NEWLINE]The grinding method is used when working with harder and coarser materials such as basalt and granite. This is a long and tedious process in which the toolmaker repeatedly grinds away the stone with a harder material or with sand, sometimes using water as a lubricant. Many of the earliest European stone axes were made using this process.');

--	Audio
INSERT INTO Audio_Sounds (SoundID, Filename, LoadType) 
VALUES ('SND_TECH_STONE_TOOLS', 'TechStoneTools', 'DynamicResident');

INSERT INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume) 
VALUES ('AS2D_TECH_STONE_TOOLS', 'SND_TECH_STONE_TOOLS', 'GAME_SPEECH', 80, 80);

-----------------------------------------------------------------------
--	WOOD_WORKING 
-----------------------------------------------------------------------
INSERT INTO Technologies (Type, Cost, Description, Civilopedia, Help, Era, Trade, GoodyTech, GridX, GridY, Quote, PortraitIndex, IconAtlas, AudioIntro, AudioIntroHeader) 
VALUES ('TECH_WOOD_WORKING', 35, 'TXT_KEY_TECH_WOOD_WORKING_TITLE', 'TXT_KEY_TECH_WOOD_WORKING_DESC', 'TXT_KEY_TECH_WOOD_WORKING_HELP', 'ERA_ANCIENT', 1, 0, 1, 6, 
'TXT_KEY_TECH_WOOD_WORKING_QUOTE', 3, 'ANCIENT_TECH_ICON_ATLAS', null, 'AS2D_TECH_WOOD_WORKING');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_WOOD_WORKING_TITLE', 'Wood Working');
INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_WOOD_WORKING_HELP', 
'Allows you to build carpenter building and lumbermill improvement over forest tiles.');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_WOOD_WORKING_QUOTE', 
'[NEWLINE][TAB][TAB]"The best carpenters make the fewest chips."[NEWLINE][TAB][TAB]  - English proverb, c.1500s[NEWLINE][TAB]');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_WOOD_WORKING_DESC', 'Along with stone, clay and animal parts, wood was one of the first materials worked by early humans. Microwear analysis of the Mousterian stone tools used by the Neanderthals show that many were used to work wood. The development of civilization was closely tied to the development of increasingly greater degrees of skill in working these materials.[NEWLINE][NEWLINE]Among early finds of wooden tools are the worked sticks from Kalambo Falls, Clacton-on-Sea and Lehringen. The spears from Schöningen (Germany) provide some of the first examples of wooden hunting gear. Flint tools were used for carving. Since Neolithic times, carved wooden vessels are known, for example, from the Linear Pottery culture wells at Kückhofen and Eythra.[NEWLINE][NEWLINE]Examples of Bronze Age wood-carving include tree trunks worked into coffins from northern Germany and Denmark and wooden folding-chairs. The site of Fellbach-Schmieden in Germany has provided fine examples of wooden animal statues from the Iron Age Wooden idols from the La Tène period are known from a sanctuary at the source of the Seine in France.');

--	Audio
--INSERT INTO Audio_Sounds (SoundID, Filename, LoadType) 
--VALUES ('SND_TECH_WOOD_WORKING', 'TechMysticism', 'DynamicResident');

--INSERT INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume) 
--VALUES ('AS2D_TECH_WOOD_WORKING', 'SND_TECH_WOOD_WORKING', 'GAME_SPEECH', 80, 80);
--===================================================================--
-----------------------------------------------------------------------
-- 					VP UPDATES 
-----------------------------------------------------------------------
--===================================================================--

-----------------------------------------------------------------------
--	VP ARCHERY: RESETTING TEXT TO ORIGINAL VALUES
-----------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Archery'
WHERE Tag = 'TXT_KEY_TECH_ARCHERY_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Archery is the technology by which a person uses the spring power stored in a bent stick (or "bow") to shoot a slender pointed projectile (an "arrow") a great distance at rapid speed. Throughout history bows and arrows have been employed in the hunt and in war. Their earliest use is lost in the mists of time, but probably dates from the Paleolithic era (which ended some 14,000 years ago) or even earlier (archaeologists have found stone points in Africa dating 60,000 years ago that may have been arrowheads). Virtually every early culture employed bows and arrows, excepting for the Aboriginal Australians, who appear never to have invented them.[NEWLINE][NEWLINE]Archers have been used in war about as long as there has been war. The early Greeks and Egyptians deployed ranks of archers, as did the earliest known armies from India, Asia, Japan, and the Americas. By the Middle Ages the crossbow and firearms began to replace the bow and arrow in warfare and hunting, and by the 16th century it had all but disappeared from most modern armies. Today target archery survives as a sport in many cultures around the world. Some enthusiasts still hunt with the bow and arrow which, despite its great antiquity, can take down a deer as effectively as it did ten thousand years ago.'
WHERE Tag = 'TXT_KEY_TECH_ARCHERY_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Allows you to build the [COLOR_POSITIVE_TEXT]Barracks[ENDCOLOR], an essential building for early war.'
WHERE Tag = 'TXT_KEY_TECH_ARCHERY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	VP: MILITARY THEORY
-----------------------------------------------------------------------
INSERT INTO Technologies (Type, Cost, Description, Civilopedia, Help, Era, Trade, GoodyTech, GridX, GridY, Quote, PortraitIndex, IconAtlas, AudioIntro, AudioIntroHeader) 
VALUES ('TECH_MILITARY_THEORY', 80, 'TXT_KEY_TECH_MILITARY_THEORY_TITLE', 'TXT_KEY_TECH_MILITARY_THEORY_DESC', 'TXT_KEY_TECH_MILITARY_THEORY_HELP', 'ERA_ANCIENT', 1, 0, 2, 5, 
'TXT_KEY_TECH_MILITARY_THEORY_QUOTE', 5, 'ANCIENT_TECH_ICON_ATLAS', 'AS2D_TECH_MILITARY_THEORY', 'AS2D_TECH_MILITARY_THEORY');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MILITARY_THEORY_TITLE', 'Military Theory');
INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MILITARY_THEORY_HELP', 
'Allows you to build the [COLOR_POSITIVE_TEXT]Barracks[ENDCOLOR], an essential building for early war.');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MILITARY_THEORY_QUOTE', 
'[NEWLINE][TAB][TAB]"The supreme art of war is to subdue the enemy without fighting."[NEWLINE][TAB][TAB]  - Sun Tzu[NEWLINE][TAB]');

INSERT INTO Language_en_US (Tag, Text) VALUES ('TXT_KEY_TECH_MILITARY_THEORY_DESC', 'Military theory is the analysis of normative behavior and trends in military affairs and military history, beyond simply describing events in war, Military theories, especially since the influence of Clausewitz in the nineteenth century, attempt to encapsulate the complex cultural, political and economic relationships between societies and the conflicts they create. Theories and conceptions of warfare have varied in different places throughout human history. The Chinese Sun Tzu is recognized by scholars to be one of the earliest military theorists. His now-iconic Art of War laid the foundations for operational planning, tactics, strategy and logistics. In India, Chanakya (350 – 275 BCE) laid the foundations of military theory through his seminal text called Arthashastra. While the views of Clausewitz, Sun Tzu and Kautilya are not directly applicable to the modern battlefield, they are still referenced and acknowledged by military theorists for the insights they provide, which are then adapted to modern times.');

-----------------------------------------------------------------------
--	VP: MYSTICISM
-----------------------------------------------------------------------
UPDATE Language_en_US SET Text = 'Allows you to build the elder council and shrine.  Also leads to writing.' 
WHERE Tag = 'TXT_KEY_TECH_MYSTICISM_HELP';

-----------------------------------------------------------------------
--	SAILING: (VP HORSEBACK RIDING)
-----------------------------------------------------------------------
--UPDATE Technologies
--SET PrereqTech = 'TECH_FISHING' 
--WHERE Type = 'TECH_SAILING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


--Embarkation
UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_EMBARKATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE UnitPromotions SET TechPrereq = 'TECH_SAILING' WHERE Type = 'PROMOTION_DEFENSIVE_EMBARKATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-----------------------------------------------------------------------
--	OPTICS: (VP SAILING)
-----------------------------------------------------------------------

UPDATE Technologies
SET PrereqTech = 'TECH_SAILING' 
WHERE Type = 'TECH_OPTICS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Optics'
WHERE Tag = 'TXT_KEY_TECH_OPTICS_TITLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

