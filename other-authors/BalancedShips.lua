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
				{"Min","30"},
				{"Max","50"}
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"},
				{"Max","50"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","10"}
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"},
				{"Max","100"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"},
				{"Max","100"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","11"},
				{"Max","20"}
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","90"},
				{"Max","150"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","150"},
				{"Max","150"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","21"},
				{"Max","35"}
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","200"}
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","200"},
				{"Max","200"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
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
				{"Min","50"},
				{"Max","50"} 
			}
		},
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"},
				{"Max","50"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","10"}
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"},
				{"Max","100"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"},
				{"Max","100"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","11"},
				{"Max","20"}
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","150"},
				{"Max","150"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","90"},
				{"Max","150"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","21"},
				{"Max","35"}
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","200"},
				{"Max","200"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","200"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Fighter","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
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
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"},
				{"Max","50"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"},
				{"Max","50"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","10"}
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"},
				{"Max","100"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"},
				{"Max","100"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","11"},
				{"Max","20"}
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","150"},
				{"Max","150"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","90"},
				{"Max","150"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","21"},
				{"Max","35"}
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","200"},
				{"Max","200"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","200"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
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
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"},
				{"Max","50"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"},
				{"Max","50"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","10"}
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"},
				{"Max","100"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"},
				{"Max","100"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","11"},
				{"Max","20"}
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","90"},
				{"Max","150"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","150"},
				{"Max","150"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","21"},
				{"Max","35"}
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","200"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","200"},
				{"Max","200"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
			}
		},
		--Sail/Solar Ship
		--C Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","40"},
				{"Max","50"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","40"},
				{"Max","50"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"}, 
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","10"}
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","80"},
				{"Max","100"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","80"},	
				{"Max","100"} 	
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","11"},
				{"Max","20"}
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","150"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","150"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","21"},
				{"Max","35"}
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","160"},	-- Original "10"	-	Modded 60
				{"Max","200"} 	-- Original "40"	-	Modded 100
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","160"},
				{"Max","200"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Sail","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
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
				{"Min","120"},
				{"Max","134"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","10"}
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","11"},
				{"Max","20"}
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","21"},
				{"Max","35"}
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"}
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","134"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Royal","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
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
				{"Min","160"},
				{"Max","200"}
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","160"},
				{"Max","200"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Alien","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
			}
		},
		--Interceptor
		--C Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","50"},
				{"Max","50"} 
			}
		},
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","30"},
				{"Max","50"}
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","C"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","10"}
			}
		},
		--B Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","100"},
				{"Max","100"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","60"},
				{"Max","100"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","B"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","11"},
				{"Max","20"}
			}
		},
		--A Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","150"},
				{"Max","150"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"} 
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","90"},
				{"Max","150"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","A"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","21"},
				{"Max","35"}
			}
		},
		--S Class
		{--Damage
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","200"},
				{"Max","200"} 
			}
		},
		{--Shield
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","0"},
				{"Max","0"}
			}
		},
		{--Hyperdrive
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","120"},
				{"Max","200"} 
			}
		},
		{--Agility
			["PRECEDING_FIRST"] = "TRUE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Robot","BaseStatsPerClass","S"},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min","36"},
				{"Max","50"}
			}
		},
	}},
}}}}