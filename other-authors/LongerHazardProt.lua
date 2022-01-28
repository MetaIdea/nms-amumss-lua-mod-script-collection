--Protection times, uncomment the one you want

--Life support (PROTECT) 1h
	--ProtectChargeAmount = 3600				--80
	--ProtectChargeMultiplier = 45			--1

--Life support (PROTECT) 30m
	--ProtectChargeAmount = 1800				--80
	--ProtectChargeMultiplier = 22.5				--1

--Life support (PROTECT) 15m
	ProtectChargeAmount = 900				--80
	ProtectChargeMultiplier = 11.25			--1

--Life support (PROTECT) 5m
	--ProtectChargeAmount = 300				--80
	--ProtectChargeMultiplier = 5.7				--1

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "HazardProt.pak",
["MOD_DESCRIPTION"]	= "Longer hazard protection mod",
["MOD_AUTHOR"]		= "Sin0b0l",
["NMS_VERSION"]		= "2.4",
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
--Cold Module
	{
	["SPECIAL_KEY_WORDS"] = {"ID", "T_COLDPROT"},
	["PRECEDING_KEY_WORDS"] = {""},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier},
		}},
--Hot Module
	{
	["SPECIAL_KEY_WORDS"] = {"ID", "T_HOTPROT"},
	["PRECEDING_KEY_WORDS"] = {""},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier},
		}},
--Tox Module
	{
	["SPECIAL_KEY_WORDS"] = {"ID", "T_TOX"},
	["PRECEDING_KEY_WORDS"] = {""},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier},
		}},
--Rad Module
	{
	["SPECIAL_KEY_WORDS"] = {"ID", "T_RAD"},
	["PRECEDING_KEY_WORDS"] = {""},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier},
		}},
--Water Module
	{
	["SPECIAL_KEY_WORDS"] = {"ID", "T_UNW"},
	["PRECEDING_KEY_WORDS"] = {""},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier},
		}},
}}}}}}