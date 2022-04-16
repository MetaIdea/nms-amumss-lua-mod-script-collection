GameVersion = "3_68"
ModeName = "UniqueSpaceShips"
Author = "Jackty89"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModeName..GameVersion..".pak",
["MOD_DESCRIPTION"]			= "Rework of all Spaceships and their bonuses and price",   
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--Reduce launch cost for Shuttle
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShuttleTakeOffMod",	"0.10"}	-- Original 0.66 => 25% * 0.66 = 16.5% launch cost - Mod 25% * 0.10 = 2.5%
							}
						}
						
					}

				}, 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						-- DEV note Invetory Slots for SMALL = C <-> sub B, MEDIUM B <-> sub A, LARGE A <-> sub S
						-- DEV note Tech Slots, range between C <-> sub A (highest vanilla was 12 for explo) blanance to personal preference
						-- DEV note Invetory uses grids to calculate size so if size was set to 12 the game will use a 4x4 grid
							-- The invetory grid will go column by column with a min row height of 4 (so minimal grid size could be  4x1)
								--If all 8 columns are filled in it will fill row by row adding 8 slots in 1 go
							-- For technology grid will go row by row with a minimal column length if 7 (so minimal gridsize is 1x7)
                        
						-- START CHANGES EXPLORER SHIP
                        -- DECREASED max invetory slots to C = 16 B= 20 A = 24 S = 28
						-- No Bonus in SHIP DAMAGE
                        -- Boost to Hyperdrive range C = 100-250, B = 250-500, A = 500-1000, S = 1000-1500
                        -- Minor boost to tech slots C = 14 B = 21 A = 28 S = 35
						{
							["PRECEDING_KEY_WORDS"] = {"SciSmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"8"}, 		-- Original "15"
								{"MaxSlots",	"13"}, 		-- Original "19"
                                {"MinExtraTech",	"5"}, 	-- Original "3"
								{"MaxExtraTech",	"16"} 	-- Original "5"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"SciMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"10"}, 		-- Original "20"
								{"MaxSlots",	"15"}, 		-- Original "29"
                                {"MinExtraTech",	"14"}, 	-- Original "5"
								{"MaxExtraTech",	"24"} 	-- Original "8"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"SciLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"13"},		-- Original "30"
								{"MaxSlots",	"18"},		-- Original "38"
                                {"MinExtraTech",	"20"}, 	-- Original "8"
								{"MaxExtraTech",	"30"} 	-- Original "12"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Scientific","MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"24","16"}, 	-- Original "24"	- C Class	-	Modded	16	Grid	=	4x4
								{"32","20"}, 	-- Original "32"	- B Class	-	Modded	20	Grid	=	4x5
                                {"40","24"}, 	-- Original "40"	- A Class	-	Modded	24	Grid	=	4x6
								{"48","24"} 	-- Original "48"	- S Class	-	Modded	24	Grid	=	4x6
							}
						},
                        {   
                            --Max tech slots per class (without the generation bonuses)
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Scientific","MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--Order mixed as script will overwrite already "changed" values   	
								{"21","35"}, 	-- Original "21"	- S Class	-	Modded	35	Grid	=	5x7
								{"14","28"}, 	-- Original "14"	- A Class	-	Modded	28	Grid	=	4x7
								{"7","21"}, 	-- Original "7"		- B Class	-	Modded	21	Grid	=	3x7
								{"0","14"} 		-- Original "0"		- C Class	-	Modded	14	Grid	=	2x7
							}
						},
						--Stat Changes for C class explorer
						{   
							-- Patch 3.38 Should target lines 993-999   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","100"}, 	-- Original "7" -	Modded 100
								{"Max","150"} 	-- Original "15" -	Modded 150
							}
						},
						--Stat Changes for B class explorer
						{
							-- Patch 3.38 Should target lines 1018-1024  
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","150"}, 	-- Original "7" -	Modded 150
								{"Max","250"} 	-- Original "15" -	Modded 250
							}
						},
						{   
							-- Patch 3.38 Should target lines 1011-1017 
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Max","5"}, 	-- Original "8" -	Modded 5
							}
						},
						--Stat Changes for A class explorer
						{
							-- Patch 3.38 Should target lines 1043-1049    
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","250"}, 	-- Original "7" -	Modded 250
								{"Max","500"} 	-- Original "15" -	Modded 500
							}
						},						
						{   
							-- Patch 3.38 Should target lines 1036-1042  
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","6"}, 	-- Original "10" -	Modded 6
								{"Max","10"} 	-- Original "15" -	Modded 10
							}
						},
						--Stat Changes for S class explorer
						{
							-- Patch 3.38 Should target lines 1068-1074   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","500"}, 	-- Original "60" -	Modded 500
								{"Max","750"} 	-- Original "80" -	Modded 750
							}
						},
						{   
							-- Patch 3.38 Should target lines 1061-1067  
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","10"}, 	-- Original "20" -	Modded 10
								{"Max","25"} 	-- Original "25" -	Modded unchanged
							}
						},
						-- STOP CHANGES EXPLORER SHIP
						
						-- START CHANGES HAULER SHIP
                        -- Only Ship with Max intentory slots
						-- MINOR Bonus in SHIP DAMAGE C = 0-5, B = 5-10, A = 10-15, S = 15-25
						-- NO hypderdrive bonus
                        -- BOOST to SHIELD C = 25-49, B = 50-74, A = 75-149, S = 150-250
                        -- DECREASE in TechSlots C->S = 7
						{
							["PRECEDING_KEY_WORDS"] = {"DrpLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxExtraTech",	"7"} 	-- Original "8"
							}
						},
                        {   
                            --Max tech slots per class (without the generation bonuses)
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Dropship","MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--Order mixed as script will overwrite already "changed" values   	
								{"21","7"}, 	-- Original "21"	- S Class	-	Modded	7	Grid	=	1x7
								{"14","7"} 	-- Original "14"	- A Class	-	Modded	7	Grid	=	1x7
							}
						},
						--Stat Changes for C class Hauler
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Max","5"} 	-- Original "0"	-	Modded 5
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","25"},	-- Original	"12"	-	Modded 25
								{"Max","50"} 	-- Original "20"	-	Modded 49
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","0"}, 
								{"Max","0"} 	-- Original "5" -	Modded 0
							}
						},
						--Stat Changes for B class Hauler
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","5"},		-- Original "0"	-	Modded 5
								{"Max","10"} 	-- Original "5"	-	Modded 10
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","50"},	-- Original	"25"	-	Modded 25
								{"Max","75"} 	-- Original "35"	-	Modded 49
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","0"},		-- Original	"5"	-	Modded 0
								{"Max","0"} 	-- Original "10" -	Modded 0
							}
						},
						--Stat Changes for A class Hauler
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","10"},	-- Original "0"	-	Modded 5
								{"Max","15"} 	-- Original "5"	-	Modded 10
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","75"},	-- Original	"40"	-	Modded 75
								{"Max","150"} 	-- Original "50"	-	Modded 150
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","0"},	-- Original	"15"	-	Modded 0
								{"Max","0"} 	-- Original "25"	-	Modded 0
							}
						},
						--Stat Changes for S class Hauler						
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","15"},	-- Original "10"	-	Modded 5
								{"Max","25"} 	-- Original "20"	-	Modded 25
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","150"},	-- Original	"65"	-	Modded 150
								{"Max","250"} 	-- Original "85"	-	Modded 250
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","0"},	-- Original	"30"	-	Modded 0
								{"Max","0"} 	-- Original "35"	-	Modded 0
							}
						},
						-- STOP CHANGES HAULER SHIP

						-- START CHANGES FIGHTER SHIP
                        -- DECREASED INVENTORY SLOTS
						-- BOOST in SHIP DAMAGE C = 25-50, B = 50-100, A = 100-150, S = 150-250
						-- NO hypderdrive bonus
                        -- MINOR BOOST to SHIELD C = 0-25, B = 25-50, A = 50-100, S = 100-150
                        -- MINOR BOOST in TechSlots C = 7, B = 14, A = 21, S = 28
						{
							["PRECEDING_KEY_WORDS"] = {"FgtSmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"8"}, 		-- Original "15"
								{"MaxSlots",	"12"}, 		-- Original "19"
                                {"MinExtraTech",	"6"}, 	-- Original "3"
								{"MaxExtraTech",	"12"} 	-- Original "5"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"FgtMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"12"}, 		-- Original "20"
								{"MaxSlots",	"18"}, 		-- Original "29"
                                {"MinExtraTech",	"12"}, 	-- Original "3"
								{"MaxExtraTech",	"18"} 	-- Original "5"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"FgtLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"18"},		-- Original "30"
								{"MaxSlots",	"24"},		-- Original "38"
                                {"MinExtraTech",	"18"}, 	-- Original "8"
								{"MaxExtraTech",	"24"} 	-- Original "12"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Fighter","MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"24","20"}, 	-- Original "24"	- C Class	-	Modded	16	Grid	=	4x5
								{"32","24"}, 	-- Original "32"	- B Class	-	Modded	20	Grid	=	4x6
                                {"40","28"}, 	-- Original "40"	- A Class	-	Modded	24	Grid	=	4x7
								{"48","28"} 	-- Original "48"	- S Class	-	Modded	28	Grid	=	4x7
							}
						},
                        {   
                            --Max tech slots per class (without the generation bonuses)
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Fighter","MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--Order mixed as script will overwrite already "changed" values   	
								{"21","28"}, 	-- Original "21"	- S Class	-	Modded	7	Grid	=	4x7
								{"14","21"}, 	-- Original "14"	- A Class	-	Modded	7	Grid	=	3x7
								{"7","14"}, 	-- Original "7"		- B Class	-	Modded	7	Grid	=	2x7
								{"0","7"} 		-- Original "0"		- C Class	-	Modded	7	Grid	=	1x7
							}
						},
						--Stat Changes for C class Fighter
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","25"},	-- Original "5"		-	Modded 5
								{"Max","50"} 	-- Original "10"	-	Modded 5
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Max","25"} 	-- Original "0"	-	Modded 25
							}
						},
						--Stat Changes for B class Fighter
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","50"},	-- Original "15"	-	Modded 50
								{"Max","100"} 	-- Original "30"	-	Modded 100
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","25"},	-- Original	"5"		-	Modded 25
								{"Max","50"} 	-- Original "10"	-	Modded 50
							}
						},
						--Stat Changes for A class Fighter
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","100"},	-- Original "35"	-	Modded 100
								{"Max","150"} 	-- Original "50"	-	Modded 150
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","50"},	-- Original	"15"	-	Modded 50
								{"Max","100"} 	-- Original "20"	-	Modded 100
							}
						},
						--Stat Changes for S class Fighter						
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","150"},	-- Original "55"	-	Modded 150
								{"Max","250"} 	-- Original "60"	-	Modded 250
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","100"},	-- Original	"15"	-	Modded 100
								{"Max","150"} 	-- Original "25"	-	Modded 150
							}
						},
						-- STOP CHANGES FIGHTER SHIP

						-- START CHANGES SHUTTLE SHIP
                        -- DECREASED max invetory slots to C = 16 B= 20 A = 24 S = 28
						-- No Bonus in SHIP DAMAGE
                        -- Boost to Hyperdrive range C = 100-250, B = 250-500, A = 500-1000, S = 1000-1500
                        -- Minor boost to tech slots C = 14 B = 21 A = 28 S = 35
						{
							["PRECEDING_KEY_WORDS"] = {"ShuSmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"10"}, 		-- Original "18"
								{"MaxSlots",	"16"} 		-- Original "23"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"ShtMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"16"}, 		-- Original "19"
								{"MaxSlots",	"22"} 		-- Original "28"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"ShtLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"22"},		-- Original "28"
								{"MaxSlots",	"26"}		-- Original "40"
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Shuttle","MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"24","20"}, 	-- Original "24"	- C Class	-	Modded	16	Grid	=	4x5
								{"32","24"}, 	-- Original "32"	- B Class	-	Modded	20	Grid	=	4x6
                                {"40","28"}, 	-- Original "40"	- A Class	-	Modded	24	Grid	=	4x7
								{"48","32"} 	-- Original "48"	- S Class	-	Modded	28	Grid	=	4x8
							}
						},
						--Stat Changes for C class shuttle
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","10"}, 	-- Original "0" -	Modded 10
								{"Max","25"} 	-- Original "0" -	Modded 25
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Max","25"} 	-- Original "0" -	Modded 25
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","15"}, 	-- Original "0" -	Modded 15
								{"Max","25"} 	-- Original "0" -	Modded 25
							}
						},
						--Stat Changes for B class shuttle
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","25"}, 	-- Original "0" -	Modded 25
								{"Max","35"} 	-- Original "5" -	Modded 35
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","25"},	-- Original "0" -	Modded 25
								{"Max","35"} 	-- Original "5" -	Modded 35
							}
						},
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","25"}, 	-- Original "0" -	Modded 25
								{"Max","50"} 	-- Original "5" -	Modded 50
							}
						},
						--Stat Changes for A class shuttle
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","35"}, 	-- Original "5" -	Modded 50
								{"Max","45"} 	-- Original "10" -	Modded 75
							}
						},						
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","35"}, 	-- Original "5" -	Modded 35
								{"Max","55"} 	-- Original "10" -	Modded 55
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","50"}, 	-- Original "5" -	Modded 50
								{"Max","100"} 	-- Original "10" -	Modded 100
							}
						},
						--Stat Changes for S class Shuttle
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","45"}, 	-- Original "5" -	Modded 45
								{"Max","55"} 	-- Original "10" -	Modded 55
							}
						},						
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","55"}, 	-- Original "5" -	Modded 55
								{"Max","65"} 	-- Original "10" -	Modded 65
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","100"}, 	-- Original "5" -	Modded 100
								{"Max","250"} 	-- Original "10" -	Modded 250
							}
						},
						-- STOP CHANGES SHUTTLE SHIP

						-- START CHANGES Exotic SHIP (ie high balanced ship)
						-- DECREASED max invetory S = 40
						-- MEDIUM BONUS in SHIP DAMAGE S = 100-150
						-- MEDIUM BONUS to Hyperdrive range S = 750-1000
						-- MEDIUM BONUS to SHIELD S = 100-150
						-- MEDIUM BONUS to tech slots S = 28
						{
							["PRECEDING_KEY_WORDS"] = {"RoySmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"12"}, 		-- Original "11"
								{"MaxSlots",	"22"},		-- Original "14"
                                {"MinExtraTech",	"8"}, 	-- Original "1"
								{"MaxExtraTech",	"12"} 	-- Original "3" 		
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"RoyMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"22"}, 		-- Original "15"
								{"MaxSlots",	"30"},		-- Original "20"
                                {"MinExtraTech",	"12"}, 	-- Original "4"
								{"MaxExtraTech",	"18"} 	-- Original "6" 
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"RoyLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"30"}, 		-- Original "21"
								{"MaxSlots",	"36"},		-- Original "30"
                                {"MinExtraTech",	"18"}, 	-- Original "6"
								{"MaxExtraTech",	"24"} 	-- Original "10" 
							}
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Royal","MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"24","20"}, 	-- Original "24"	- C Class	-	Modded	16	Grid	=	4x6
								{"32","28"}, 	-- Original "28"	- B Class	-	Modded	20	Grid	=	4x7
                                {"40","32"}, 	-- Original "32"	- A Class	-	Modded	24	Grid	=	4x8
								{"48","40"} 	-- Original "48"	- S Class	-	Modded	28	Grid	=	5x8
							}
						},						
                        {
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Royal","MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"21","28"}, 	-- Original "21"	- S Class	-	Modded	16	Grid	=	4x7
								{"14","21"}, 	-- Original "14"	- A Class	-	Modded	20	Grid	=	3x7
                                {"7","14"}, 	-- Original "7"		- B Class	-	Modded	24	Grid	=	2x7
								{"0","7"} 		-- Original "0"		- C Class	-	Modded	28	Grid	=	1x7
							}
						},
						--Stat Changes for S class Exotic, no need to edit C->A as exotics only get their stats from S (i think)
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","50"}, 	-- Original "35" -	Modded 50
								{"Max","75"} 	-- Original "50" -	Modded 75
							}
						},						
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","75"}, 	-- Original "55" -	Modded 75
								{"Max","100"} 	-- Original "60" -	Modded 100
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","150"}, 	-- Original "5" -	Modded 150
								{"Max","350"} 	-- Original "10" -	Modded 350
							}
						},
						-- STOP CHANGES EXOTIC SHIP

						-- START CHANGES LIVING SHIP (ie high balanced ship)
						-- Max invetory S = 48
						-- MEDIUM BONUS in SHIP DAMAGE S = 100-150
						-- MEDIUM BONUS to Hyperdrive range S = 750-1000
						-- MEDIUM BONUS to SHIELD S = 100-150
						-- BONUS to tech slots S = 48
						{
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Alien","MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"0","48"},
								{"35","48"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Alien","MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"0","48"}
							}
						},
						--Stat Changes for S class Living Ship
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","50"}, 	-- Original "35" -	Modded 50
								{"Max","75"} 	-- Original "50" -	Modded 75
							}
						},						
						{   
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","75"}, 	-- Original "55" -	Modded 100
								{"Max","100"} 	-- Original "60" -	Modded 150
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","150"}, 	-- Original "5" -	Modded 150
								{"Max","350"} 	-- Original "10" -	Modded 350
							}
						},
						-- {
						-- 	["PRECEDING_FIRST"] = "TRUE",
						-- 	["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
						-- 	["SPECIAL_KEY_WORDS"] = {"BaseStatID","ALIEN_SHIP"},
						-- 	["VALUE_CHANGE_TABLE"] 	= 
						-- 	{
						-- 		--Might be a boolean that marks a ship as Alien (not sure)
						-- 		{"BaseStatID"," "},
						-- 		{"Min","0"}, 	-- Original "1" -	Modded 0
						-- 		{"Max","0"}, 	-- Original "1" -	Modded 0
						-- 		{"MinFixedAdd","0"}, 
						-- 		{"MaxFixedAdd","0"}
						-- 	}
						-- },
						-- STOP CHANGES LIVING SHIP

						--START CHANGES FFREIGHTERS
						--MASSIVE BONUS to hyperdrive
						{
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"24","48"},
								{"32","48"},
                                {"40","48"} 
							}
						},
                        {   
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"14","21"}, 	
								{"7","21"}, 
								{"0","21"}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","C"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","1500"}, 	-- Original "0" -	Modded 1500
								{"Max","2000"} 		-- Original "20" -	Modded 2000
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","B"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","2000"}, 	-- Original "20" -	Modded 2000
								{"Max","2500"} 		-- Original "40" -	Modded 2500
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","A"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","2500"}, 	-- Original "40" -	Modded 2500
								{"Max","3500"} 		-- Original "60" -	Modded 3500
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","3500"}, -- Original "60" -	Modded 3500
								{"Max","5000"} 	-- Original "80" -	Modded 5000
							}
						},
						-- STOP CHANGES LIVING SHIP

						--Price Changes
						{
							--HAULER
							["PRECEDING_KEY_WORDS"] = {"ShipCostData", "Dropship"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"25"},
								{"MinValueInMillions",	"3.6"},
                                {"MaxSlots",	"48"},
                                {"MaxValueInMillions",	"75"}, 
								{"CoolMultiplier",	"0"},
								{"C",	"25"}, 
								{"B",	"40"}, 
								{"A",	"85"}, 
								{"S",	"100"}  	
							}
						},				
						{
							--EXPLORER
							["PRECEDING_KEY_WORDS"] = {"ShipCostData", "Scientific"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"8"},
								{"MinValueInMillions",	"0.85"},
                                {"MaxSlots",	"24"}, --Max possible slots
                                {"MaxValueInMillions",	"65"}, 
								{"CoolMultiplier",	"0"}, --No idea what this mutiplier is for
								{"C",	"10"}, 
								{"B",	"35"}, 
								{"A",	"85"}, 
								{"S",	"100"}  	
							}
						},
						{
							--Fighter
							["PRECEDING_KEY_WORDS"] = {"ShipCostData", "Fighter"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"8"},
								{"MinValueInMillions",	"0.75"}, 
                                {"MaxSlots",	"28"},
                                {"MaxValueInMillions",	"70"}, 
								{"CoolMultiplier",	"0"},
								{"C",	"15"}, 
								{"B",	"40"}, 
								{"A",	"80"}, 
								{"S",	"100"}  	
							}
						},
						{
							--Shuttle
							["PRECEDING_KEY_WORDS"] = {"ShipCostData", "Shuttle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"10"},
								{"MinValueInMillions",	"0.65"},
                                {"MaxSlots",	"32"},
                                {"MaxValueInMillions",	"60"}, 
								{"CoolMultiplier",	"0"},
								{"C",	"10"}, 
								{"B",	"35"}, 
								{"A",	"65"}, 
								{"S",	"85"}  	
							}
						},
						{
							--Exotic
							["PRECEDING_KEY_WORDS"] = {"ShipCostData", "Royal"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",	"12"},
								{"MinValueInMillions",	"62"},
                                {"MaxSlots",	"40"},
                                {"MaxValueInMillions",	"115"}, 
								{"CoolMultiplier",	"0"},
								{"C",	"25"}, 
								{"B",	"50"}, 
								{"A",	"75"}, 
								{"S",	"100"} 	
							}
						},					

                        --General Ship Spawn changes for sytsems - 1 Star still has 0% chance
                        {
                            --2 Star systems now have a 2% chance of getting S ships
							["PRECEDING_KEY_WORDS"] = {"Average"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C",	"30"},
								{"B",	"40"},
                                {"A",	"28"},
                                {"S",	"2"}, 	
							}
						},
                        {
                            --3 Star System now have a 5% chance of getting S ships
							["PRECEDING_KEY_WORDS"] = {"Wealthy"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C",	"30"},
								{"B",	"37"},
                                {"A",	"28"},
                                {"S",	"5"}, 	
							}
						}
					} 
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE