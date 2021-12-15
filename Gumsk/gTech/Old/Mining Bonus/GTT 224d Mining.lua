
--Multitool Adjustments
	--Mining Laser Adjustments (LASER)
	--Weapon_Laser_Mining_Speed
	AdvancedLaserSpeed = 0.1
	UT_MinerBonus = 6.5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GTT 224d Mining.pak",
["MOD_DESCRIPTION"]	= "Mining changes to the Technology Table",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.24",
["MODIFICATIONS"]	=
{
{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{
{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
["EXML_CHANGE_TABLE"] = 
{
--Mining
	{--Advanced Mining Laser (STRONGLASER)
	["SPECIAL_KEY_WORDS"] = {"ID", "STRONGLASER"},
	["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", AdvancedLaserSpeed}
		}},
	{--Optical Drill (UT_MINER))
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_MINER"},
	["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_MinerBonus}
		}},
}}}}}}