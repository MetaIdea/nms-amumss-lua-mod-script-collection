SPECIAL_LIST =
{
	--{ ["ID"] = "EXPD_FIREPACK01",	["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_SPEC02",		["IsConsumable"] = "False"},
	--{ ["ID"] = "MYSTERY_TRACKER",	["IsConsumable"] = "True"},
	{ ["ID"] = "EXPD_TITLE02A",		["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_TITLE02B",		["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_DECAL02",		["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_BANNER02",		["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_FIREWORK01",	["IsConsumable"] = "True"},
	{ ["ID"] = "EXPD_FIREWORK02",	["IsConsumable"] = "True"},
	{ ["ID"] = "EXPD_FIREWORK03",	["IsConsumable"] = "True"},
	{ ["ID"] = "BLD_EXPD_BASE01", 	["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_HELMET01", 	["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_BACKPACK01", 	["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_BANNER01", 	["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_DECAL01", 		["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_TITLE01", 		["IsConsumable"] = "False"},
	{ ["ID"] = "EXPD_SHIP01", 		["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_SHIP01", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_SHIP02", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_SHIP03", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_SHIP04", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_SHIP05", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUN01", 		["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUN02", 		["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUN03", 		["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUN04", 		["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUN05", 		["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUNUP01A", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUNUP01B", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUNUP01C", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUNUP01D", 	["IsConsumable"] = "False"},
	{ ["ID"] = "TWITCH_GUNUP01E", 	["IsConsumable"] = "False"},
}

function GetNewSpecial(ID, REPEAT)
return[[    <Property value="GcPurchaseableSpecial.xml">
      <Property name="ID" value="]] .. ID .. [[" />
      <Property name="ShopNumber" value="1" />
      <Property name="MissionTier" value="-1" />
      <Property name="IsConsumable" value="]] .. REPEAT .. [[" />
    </Property>
]]
end

NEW_SPECIAL = {}
for i,j in pairs(SPECIAL_LIST) do
table.insert(NEW_SPECIAL, GetNewSpecial(j["ID"], j["IsConsumable"]))
end
SPECIAL_EXPORT = table.concat(NEW_SPECIAL)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~Consumerism.pak",
["MOD_AUTHOR"]				= "You",
["NMS_VERSION"]				= "uhhh",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\PURCHASEABLESPECIALS.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Table"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= SPECIAL_EXPORT
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MissionTier", "-1"} -- Original numbers other than -1 and are capitalist scum
							}
						},
					} --1 global replacements
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE