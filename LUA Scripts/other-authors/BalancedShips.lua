NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "___ChristianWidjaya_BalancedShips.pak",
["MOD_DESCRIPTION"]		= "Changes class spawn rate, classes balancing",
["MOD_AUTHOR"]			= "ChristianWidjaya", "1800PETMEDS",
["NMS_VERSION"]			= "261",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Average Spawn
		["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Average"},
			["VALUE_CHANGE_TABLE"] = {
				{"C","50"},
				{"B","30"},
				{"A","15"},
				{"S","5"}
		}},
		{ --Wealthy Spawn
		["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Wealthy"},
			["VALUE_CHANGE_TABLE"] = {
				{"C","40"},
				{"B","30"},
				{"A","20"},
				{"S","10"}
		}},
		--Boost Freighters's Hyperdrive ranges
		{--C Class
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 		-- Original "0" -	Modded 0
				{"Max","249"} 		-- Original "20" -	Modded 249
			}
		},
		{--B Class
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","250"}, 		-- Original "20" -	Modded 250
				{"Max","499"} 		-- Original "40" -	Modded 499
			}
		},
		{--A Class
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","500"}, 		-- Original "40" -	Modded 500
				{"Max","749"} 		-- Original "60" -	Modded 749
			}
		},
		{--S Class
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Freighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","FREI_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","750"}, -- Original "60" -	Modded 750
				{"Max","1000"} 	-- Original "80" -	Modded 1000
			}
		},
		--Starship Balancing
		--Dropship/Hauler
		--C Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","15"}, 	-- Original "0"	-	Modded 15
				{"Max","25"} 	-- Original "0"	-	Modded 25
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","25"},	-- Original	"12"	-	Modded 25
				{"Max","25"} 	-- Original "20"	-	Modded 25
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "0" - Moddeed 0
				{"Max","0"} 	-- Original "5" -	Modded 0
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"},		-- Original "0"	-	Modded 30
				{"Max","50"} 		-- Original "5"	-	Modded 50
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"},	-- Original	"25"	-	Modded 50
				{"Max","50"} 	-- Original "35"	-	Modded 50
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},		-- Original	"5"	-	Modded 0
				{"Max","0"} 		-- Original "10" -	Modded 0
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","45"},	-- Original "0"	-	Modded 45
				{"Max","75"} 	-- Original "5"	-	Modded 75
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","75"},	-- Original	"40"	-	Modded 75
				{"Max","75"} 	-- Original "50"	-	Modded 75
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},	-- Original	"15"	-	Modded 0
				{"Max","0"} 	-- Original "25"	-	Modded 0
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"},	-- Original "10"	-	Modded 60
				{"Max","100"} 	-- Original "20"	-	Modded 100
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"},	-- Original	"65"	-	Modded 100
				{"Max","100"} 	-- Original "85"	-	Modded 100
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},	-- Original	"30"	-	Modded 0
				{"Max","0"} 	-- Original "35"	-	Modded 0
			}
		},
		--Fighter
		--C Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","25"},	-- Original "5"		-	Modded 25
				{"Max","25"} 	-- Original "10"	-	Modded 25
			}
		},
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","15"},	-- Original "0"	-	Modded 15
				{"Max","25"} 	-- Original "0"	-	Modded 25
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},	-- Original	"0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"},	-- Original "15"	-	Modded 50
				{"Max","50"} 	-- Original "30"	-	Modded 50
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"},	-- Original	"5"		-	Modded 30
				{"Max","50"} 	-- Original "10"	-	Modded 50
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},	-- Original	"0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","75"},	-- Original "35"	-	Modded 75
				{"Max","75"} 	-- Original "50"	-	Modded 75
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","45"},	-- Original	"15"	-	Modded 45
				{"Max","75"} 	-- Original "20"	-	Modded 75
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},	-- Original	"0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"},	-- Original "55"	-	Modded 100
				{"Max","100"} 	-- Original "60"	-	Modded 100
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"},	-- Original	"15"	-	Modded 60
				{"Max","100"} 	-- Original "25"	-	Modded 100
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},	-- Original	"0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		--Scientific/Explorer
		--C Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","25"},	-- Original	"0"	-	Modded 25
				{"Max","25"} 	-- Original "0"	-	Modded 25
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","15"}, 	-- Original "7" -	Modded 15
				{"Max","25"} 	-- Original "15" -	Modded 25
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"},	-- Original	"0"	-	Modded 50
				{"Max","50"} 	-- Original "8"	-	Modded 50
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"}, 	-- Original "7" -	Modded 30
				{"Max","50"} 	-- Original "15" -	Modded 50
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","75"},	-- Original	"0"	-	Modded 75
				{"Max","75"} 	-- Original "15"	-	Modded 75
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","45"}, 	-- Original "7" -	Modded 45
				{"Max","75"} 	-- Original "15" -	Modded 75
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "0"	-	Modded 0
				{"Max","0"} 	-- Original "0"	-	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"}, 	-- Original "20" -	Modded 100
				{"Max","100"} 	-- Original "25" -	Modded 100
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "60" -	Modded 60
				{"Max","100"} 	-- Original "80" -	Modded 100
			}
		},
		--Shuttle
		--C Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "0" -	Modded 0
				{"Max","0"} 	-- Original "0" -	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","15"}, 	-- Original "0" -	Modded 15
				{"Max","25"} 	-- Original "0" -	Modded 25
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","25"}, 	-- Original "0" -	Modded 25
				{"Max","25"} 	-- Original "0" -	Modded 25
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "0" -	Modded 0
				{"Max","0"} 	-- Original "5" -	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"},	-- Original "0" -	Modded 30
				{"Max","50"} 	-- Original "5" -	Modded 50
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"}, 	-- Original "0" -	Modded 50
				{"Max","50"} 	-- Original "5" -	Modded 50
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "5" -	Modded 0
				{"Max","0"} 	-- Original "10" -	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","45"}, 	-- Original "5" -	Modded 45
				{"Max","75"} 	-- Original "10" -	Modded 75
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","75"}, 	-- Original "5" -	Modded 75
				{"Max","75"} 	-- Original "10" -	Modded 75
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "15" -	Modded 0
				{"Max","0"} 	-- Original "20" -	Modded 0
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "15" -	Modded 60
				{"Max","100"} 	-- Original "20" -	Modded 100
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"}, 	-- Original "15" -	Modded 100
				{"Max","100"} 	-- Original "20" -	Modded 250
			}
		},
		--Royal/Exotic
		--To be honest, C-A class is redundant and not used, but let's change it anyway
		--C Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "35" -	Modded 60
				{"Max","67"} 	-- Original "50" -	Modded 67
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "55" -	Modded 60
				{"Max","67"} 	-- Original "60" -	Modded 67
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "50" -	Modded 60
				{"Max","67"} 	-- Original "65" -	Modded 67
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "35" -	Modded 60
				{"Max","67"} 	-- Original "50" -	Modded 67
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "55" -	Modded 60
				{"Max","67"} 	-- Original "60" -	Modded 67
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "50" -	Modded 60
				{"Max","67"} 	-- Original "65" -	Modded 67
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "35" -	Modded 60
				{"Max","67"} 	-- Original "50" -	Modded 67
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "55" -	Modded 60
				{"Max","67"} 	-- Original "60" -	Modded 67
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "50" -	Modded 60
				{"Max","67"} 	-- Original "65" -	Modded 67
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "35" -	Modded 60
				{"Max","67"} 	-- Original "50" -	Modded 67
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "55" -	Modded 60
				{"Max","67"} 	-- Original "60" -	Modded 67
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"}, 	-- Original "50" -	Modded 60
				{"Max","67"} 	-- Original "65" -	Modded 67
			}
		},
		--Alien/Living Ship
		--Only have S Class entry
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","80"}, 	-- Original "35" -	Modded 80
				{"Max","100"} 	-- Original "50" -	Modded 100
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 	-- Original "10" -	Modded 0
				{"Max","0"} 	-- Original "25" -	Modded 0
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","80"}, 	-- Original "50" -	Modded 80
				{"Max","100"} 	-- Original "65" -	Modded 100
			}
		},
		--Okay, now let's buff up max capacity for every class S classes to 48/21
		--Alien/Living Ship has lower inventory capacity, let's make it 48 just like other ship
		{--Max Inventory Capacity
			["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Alien","MaxInventoryCapacity"},
			["VALUE_CHANGE_TABLE"] 	=
			{--3 entries of 0, let's change three times
				{"0","48"},		-- Original "0"		- C Class	-	Modded	48	Grid	=	6x8
				{"0","48"},		-- Original "0"		- B Class	-	Modded	48	Grid	=	6x8
				{"0","48"},		-- Original "0"		- A Class	-	Modded	48	Grid	=	6x8
				{"35","48"}		-- Original "35"	- S Class	-	Modded	48	Grid	=	6x8
			}
		},
	}},
}}}}