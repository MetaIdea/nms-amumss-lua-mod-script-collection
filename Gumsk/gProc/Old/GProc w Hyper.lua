Author = "Gumsk"
ModName = "GProc"
ModNameSub = "Hyper"
BaseDescription = "Procedural technology upgrade modifications"
GameVersion = "352"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

Quality_Array = {
	"Normal",
	"Rare",
	"Epic",
	"Legendary"
	}
Rarity_Array = {
	"MaxIsSuperRare",
	"MaxIsRare",
	"MaxIsUncommon",
	"MinIsUncommon",
	"MinIsRare",
	"MinIsSuperRare"
	}
Element_Name_Array = { --Each sub-type for this upgrade
	{"RAD", "Radiation", "Rad"},
	{"TOX", "Toxic", "Tox"},
	{"COLD", "Cold", "Cold"},
	{"HOT", "Heat", "Heat"},
	}
Element_Quant_Array = { --How many bonuses on each item, min/max, per level C,B,A,S 
	{"2","2"},
	{"3","3"},
	{"4","4"}
	}
Element_Bonus_Array = { --(Name [1]Part 1,[2]Name Array Column,[3]Part 3),[4]Min Array,[5]Max Array,[6]Starting Rarity,[7]Always?
	{"Suit_Protection","","",{0.04,0.17,0.37},{0.07,0.25,0.37},2,"False"},
	{"Suit_Stamina_Recovery","","",{1.03,1.09,1.18},{1.07,1.15,1.22},1,"False"},
	{"Suit_Underwater","","",{12,25,50},{18,35,60},1,"False"},
	{"Suit_Protection_",2,"",{180,210,240},{210,240,300},3,"True"},
	{"Suit_DamageReduce_",2,"",{0.93,0.86,0.77},{0.98,0.91,0.82},3,"True"}
	}
Water_Name_Array = { --Each sub-type for this upgrade 
	{"UNW", "Underwater"}
	}
Water_Quant_Array = { --How many bonuses on each item, min/max, per level C,B,A,S 
	{"2","2"},
	{"3","3"},
	{"3","3"}
	}
Water_Bonus_Array = { --(Name [1]Part 1,[2]Part 2 Array Column,[3]Part 3),[4]Min Array,[5]Max Array,[6]Starting Rarity,[7]Always? 
	{"Suit_Underwater","","",{12,25,50},{18,35,60},1,"True"},
	{"Suit_Stamina_Recovery","","",{1.07,1.17,1.35},{1.12,1.23,1.5},2,"False"},
	{"Suit_Protection","","",{0.025,0.1,0.22},{0.07,0.18,0.27},1,"False"}
	}

Mining_Name_Array = { --Each sub-type for this upgrade 
	{"LASER", "LASER"}
	}
Mining_Quant_Array = { --How many bonuses on each item, min/max, per level C,B,A,S 
	{"1","1"},
	{"2","2"},
	{"3","3"},
	{"4","4"}
	}
Mining_Bonus_Array = { --(Name [1]Part 1,[2]Part 2 Array Column,[3]Part 3),[4]Min Array,[5]Max Array,[6]Starting Rarity,[7]Always? 
	{"Weapon_Laser_ReloadTime","","",{0.95,0.9,0.85,0.8},{0.9,0.85,0.8,0.75},1,"False"},
	{"Weapon_Laser_HeatTime","","",{1.05,1.15,1.2,1.25},{1.15,1.2,1.25,1.3},1,"False"},
	{"Weapon_Laser_Drain","","",{1.05,1.1,1.15,1.2},{1.1,1.15,1.2,1.25},1,"False"},
	{"Weapon_Laser_Mining_Speed","","",{0.95,0.9,0.85,0.8},{0.9,0.85,0.8,0.75},1,"True"},
	{"Weapon_Laser_MiningBonus","","",{1.05,1.1,1.2,1.3},{1.1,1.2,1.3,1.4},1,"False"}
	}

Upgrade_Text = ""

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {

	{["SPECIAL_KEY_WORDS"] = {"ID","UP_SHLD4"},
		["ADD"] = Upgrade_Text,
		["REPLACE_TYPE"] = "ADDAFTERSECTION"},
		
	{["SPECIAL_KEY_WORDS"] = {"ID","UP_HYP1","StatsType","Ship_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 2,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin",200},
			{"ValueMax",400}
	}},
	
	{["SPECIAL_KEY_WORDS"] = {"ID","UP_HYP2","StatsType","Ship_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 2,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin",400},
			{"ValueMax",600}
	}},
	
	{["SPECIAL_KEY_WORDS"] = {"ID","UP_HYP3","StatsType","Ship_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 2,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin",600},
			{"ValueMax",800}
	}},
	
	{["SPECIAL_KEY_WORDS"] = {"ID","UP_HYP4","StatsType","Ship_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 2,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin",800},
			{"ValueMax",1000}
	}}
	
}
},}},}}

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

--===========================================
--Loop through each subtype for the upgrade
--===========================================
for i = 1,#Element_Name_Array do
	local temp_name = Element_Name_Array[i][1]
	--=======================================
	--COLD and HOT are formatted differently
	--=======================================
	if i > 2 then
		temp_name = temp_name.."PROT"
	end
--===========================================
--	Loop through each level of this upgrade
--===========================================
	for j = 1,#Element_Bonus_Array[1][5] do
	-- for j = 1,1 do
		Upgrade_Text = Upgrade_Text..[[<Property value="GcProceduralTechnologyData.xml">
		<Property name="ID" value="UP_]]..Element_Name_Array[i][1]..j..[[" />
		<Property name="Template" value="T_]]..temp_name..[[" />
		<Property name="Group" value="UI_]]..Element_Name_Array[i][1]..[[_NAME_CORE_L" />
		<Property name="Name" value="UP_]]..temp_name..[[" />
		<Property name="NameLower" value="UI_]]..Element_Name_Array[i][1]..[[_NAME_CORE_L" />
		<Property name="Subtitle" value="UPGRADE_SUB_]]..((4-#Element_Bonus_Array[1][5])+j)..[[" />
		<Property name="Description" value="UP_]]..temp_name..j..[[_DESC" />
		<Property name="Colour" value="Colour.xml">
			<Property name="R" value="0.129411772" />
			<Property name="G" value="0.466666669" />
			<Property name="B" value="0.784313738" />
			<Property name="A" value="1" />
		</Property>
		<Property name="Quality" value="]]..Quality_Array[((4-#Element_Bonus_Array[1][5])+j)]..[[" />
		<Property name="Category" value="GcProceduralTechnologyCategory.xml">
			<Property name="ProceduralTechnologyCategory" value="Protection" />
		</Property>
		<Property name="NumStatsMin" value="]]..#Element_Bonus_Array..[[" />
		<Property name="NumStatsMax" value="]]..#Element_Bonus_Array..[[" />
		<Property name="WeightingCurve" value="GcWeightingCurve.xml">
			<Property name="WeightingCurve" value="NoWeighting" />
		</Property>
		<Property name="UpgradeColour" value="Colour.xml">
			<Property name="R" value="1" />
			<Property name="G" value="1" />
			<Property name="B" value="1" />
			<Property name="A" value="1" />
		</Property>
		<Property name="StatLevels">
		]]
		--============================================
		--Loop through each bonus type for the upgrade
		--============================================
		for k = 1,#Element_Bonus_Array do
		-- for k = 1,3 do
			if Element_Bonus_Array[k][2] ~= "" then
				temp_name2 = Element_Name_Array[i][Element_Bonus_Array[k][2]]
			else
				temp_name2 = ""
			end
			Upgrade_Text = Upgrade_Text..
			[[<Property value="GcProceduralTechnologyStatLevel.xml">
			<Property name="Stat" value="GcStatsTypes.xml">
			<Property name="StatsType" value="]]..Element_Bonus_Array[k][1]..temp_name2..Element_Bonus_Array[k][3]..[[" />
			</Property>
			<Property name="ValueMin" value="]]..Element_Bonus_Array[k][4][j]..[[" />
			<Property name="ValueMax" value="]]..Element_Bonus_Array[k][5][j]..[[" />
			<Property name="WeightingCurve" value="GcWeightingCurve.xml">
				<Property name="WeightingCurve" value="]]..Rarity_Array[Element_Bonus_Array[k][6]]..[[" />
			</Property>
			<Property name="AlwaysChoose" value="]]..Element_Bonus_Array[k][7]..[[" />
			</Property>
			]]
		end
		--==============================================
		--Append closing /property lines to this upgrade
		--==============================================
		Upgrade_Text = Upgrade_Text..[[</Property>
		</Property>
		]]
	end
end

--===========================================
--Loop through each subtype for the upgrade
--===========================================
for i = 1,#Water_Name_Array do
	local temp_name = Water_Name_Array[i][1]
--=========================================
--	Loop through each level of this upgrade
--=========================================
	for j = 1,#Water_Bonus_Array[1][5] do
		Upgrade_Text = Upgrade_Text..[[<Property value="GcProceduralTechnologyData.xml">
		<Property name="ID" value="UP_]]..Water_Name_Array[i][1]..j..[[" />
		<Property name="Template" value="T_]]..temp_name..[[" />
		<Property name="Group" value="UI_]]..Water_Name_Array[i][1]..[[_NAME_CORE_L" />
		<Property name="Name" value="UP_]]..temp_name..[[" />
		<Property name="NameLower" value="UI_]]..Water_Name_Array[i][1]..[[_NAME_CORE_L" />
		<Property name="Subtitle" value="UP_]]..temp_name..((3-#Water_Bonus_Array[1][5])+j)..[[_SUB" />
		<Property name="Description" value="UP_]]..temp_name..((3-#Water_Bonus_Array[1][5])+j)..[[_DESC" />
		<Property name="Colour" value="Colour.xml">
			<Property name="R" value="0.129411772" />
			<Property name="G" value="0.466666669" />
			<Property name="B" value="0.784313738" />
			<Property name="A" value="1" />
		</Property>
		<Property name="Quality" value="]]..Quality_Array[j]..[[" />
		<Property name="Category" value="GcProceduralTechnologyCategory.xml">
			<Property name="ProceduralTechnologyCategory" value="Protection" />
		</Property>
		<Property name="NumStatsMin" value="]]..#Water_Bonus_Array..[[" />
		<Property name="NumStatsMax" value="]]..#Water_Bonus_Array..[[" />
		<Property name="WeightingCurve" value="GcWeightingCurve.xml">
			<Property name="WeightingCurve" value="NoWeighting" />
		</Property>
		<Property name="UpgradeColour" value="Colour.xml">
			<Property name="R" value="1" />
			<Property name="G" value="1" />
			<Property name="B" value="1" />
			<Property name="A" value="1" />
		</Property>
		<Property name="StatLevels">
		]]
		--============================================
		--Loop through each bonus type for the upgrade
		--============================================
		for k = 1,#Water_Bonus_Array do
			if Water_Bonus_Array[k][2] ~= "" then
				--temp_name = Water_Name_Array[i][2]
				temp_name2 = Water_Name_Array[i][Water_Bonus_Array[k][2]]
			else
				temp_name2 = ""
			end
			Upgrade_Text = Upgrade_Text..
			[[<Property value="GcProceduralTechnologyStatLevel.xml">
			<Property name="Stat" value="GcStatsTypes.xml">
			<Property name="StatsType" value="]]..Water_Bonus_Array[k][1]..temp_name2..Water_Bonus_Array[k][3]..[[" />
			</Property>
			<Property name="ValueMin" value="]]..Water_Bonus_Array[k][4][j]..[[" />
			<Property name="ValueMax" value="]]..Water_Bonus_Array[k][5][j]..[[" />
			<Property name="WeightingCurve" value="GcWeightingCurve.xml">
				<Property name="WeightingCurve" value="]]..Rarity_Array[Water_Bonus_Array[k][6]]..[[" />
			</Property>
			<Property name="AlwaysChoose" value="]]..Water_Bonus_Array[k][7]..[[" />
			</Property>
			]]
		end
		--==============================================
		--Append closing /property lines to this upgrade
		--==============================================
		Upgrade_Text = Upgrade_Text..[[</Property>
		</Property>
		]]
	end
end

--===========================================
--Loop through each subtype for the upgrade
--===========================================
for i = 1,#Mining_Name_Array do
	local temp_name = Mining_Name_Array[i][1]
--=========================================
--	Loop through each level of this upgrade
--=========================================
	for j = 1,#Mining_Bonus_Array[1][5] do
		Upgrade_Text = Upgrade_Text..[[<Property value="GcProceduralTechnologyData.xml">
		<Property name="ID" value="UP_]]..Mining_Name_Array[i][1]..j..[[" />
		<Property name="Template" value="T_]]..temp_name..[[" />
		<Property name="Group" value="]]..Mining_Name_Array[i][1]..[[_NAME_L" />
		<Property name="Name" value="UP_]]..temp_name..[[" />
		<Property name="NameLower" value="]]..Mining_Name_Array[i][1]..[[_NAME_L" />
		<Property name="Subtitle" value="UPGRADE_SUB_]]..((4-#Mining_Bonus_Array[1][5])+j)..[[" />
		<Property name="Description" value="UP_]]..temp_name..j..[[_DESC" />
		<Property name="Colour" value="Colour.xml">
			<Property name="R" value="0.129411772" />
			<Property name="G" value="0.466666669" />
			<Property name="B" value="0.784313738" />
			<Property name="A" value="1" />
		</Property>
		<Property name="Quality" value="]]..Quality_Array[((4-#Mining_Bonus_Array[1][5])+j)]..[[" />
		<Property name="Category" value="GcProceduralTechnologyCategory.xml">
			<Property name="ProceduralTechnologyCategory" value="Mining" />
		</Property>
		<Property name="NumStatsMin" value="]]..#Mining_Bonus_Array..[[" />
		<Property name="NumStatsMax" value="]]..#Mining_Bonus_Array..[[" />
		<Property name="WeightingCurve" value="GcWeightingCurve.xml">
			<Property name="WeightingCurve" value="NoWeighting" />
		</Property>
		<Property name="UpgradeColour" value="Colour.xml">
			<Property name="R" value="0.9529412" />
			<Property name="G" value="0.6627451" />
			<Property name="B" value="0.137254909" />
			<Property name="A" value="1" />
		</Property>
		<Property name="StatLevels">
		]]
		--============================================
		--Loop through each bonus type for the upgrade
		--============================================
		for k = 1,#Mining_Bonus_Array do
			if Mining_Bonus_Array[k][2] ~= "" then
				--temp_name = Mining_Name_Array[i][2]
				temp_name2 = Mining_Name_Array[i][Mining_Bonus_Array[k][2]]
			else
				temp_name2 = ""
			end
			Upgrade_Text = Upgrade_Text..
			[[<Property value="GcProceduralTechnologyStatLevel.xml">
			<Property name="Stat" value="GcStatsTypes.xml">
			<Property name="StatsType" value="]]..Mining_Bonus_Array[k][1]..temp_name2..Mining_Bonus_Array[k][3]..[[" />
			</Property>
			<Property name="ValueMin" value="]]..Mining_Bonus_Array[k][4][j]..[[" />
			<Property name="ValueMax" value="]]..Mining_Bonus_Array[k][5][j]..[[" />
			<Property name="WeightingCurve" value="GcWeightingCurve.xml">
				<Property name="WeightingCurve" value="]]..Rarity_Array[Mining_Bonus_Array[k][6]]..[[" />
			</Property>
			<Property name="AlwaysChoose" value="]]..Mining_Bonus_Array[k][7]..[[" />
			</Property>
			]]
		end
		--==============================================
		--Append closing /property lines to this upgrade
		--==============================================
		Upgrade_Text = Upgrade_Text..[[</Property>
		</Property>
		]]
	end
end


for i = 1,#Element_Name_Array do
	for j = 1,#Element_Bonus_Array[1][4] do
		temp_table =
		{
		["SPECIAL_KEY_WORDS"] = {"ID", "UP_"..Element_Name_Array[i][1]..j},
		["REMOVE"] = "SECTION"
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table
	end
end

for i = 1,#Water_Name_Array do
	for j = 1,#Water_Bonus_Array[1][4] do
		temp_table =
		{
		["SPECIAL_KEY_WORDS"] = {"ID", "UP_"..Water_Name_Array[i][1]..j},
		["REMOVE"] = "SECTION"
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table
	end
end

for i = 1,#Mining_Name_Array do
	for j = 1,#Mining_Bonus_Array[1][4] do
		temp_table =
		{
		["SPECIAL_KEY_WORDS"] = {"ID", "UP_"..Mining_Name_Array[i][1]..j},
		["REMOVE"] = "SECTION"
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table
	end
end
