--[[
• You can add tweak names and their value here instead of altering the Lua files directly
• Any tweak values added here will overwrite the values found in the Lua files
• Tweak names need to match the names in Lua files, they are case sensitive. Below are examples:

booleanSetting = true,					Enables 'booleanSetting'
numericValueSetting = 2,				Sets 'numericValueSetting' to '2'
stringValueSetting = "ENGLISH",			Sets 'stringValueSetting' to 'ENGLISH'
tableValueSetting = {true, "demo"},		Sets 'tableValueSetting' to '{true, "demo"}'

booleanSetting = false,					Disables 'booleanSetting'
numericValueSetting = false,			Disables 'numericValueSetting'
stringValueSetting = false,				Disables 'stringValueSetting'
tableValueSetting = false,				Disables 'tableValueSetting'

numericValueSetting = true,			This will most likely cause an error; value types needs to match
someOtherSetting = false,			-- You can have comments and copy/paste the option line here as a whole
--	someUnwantedSetting = false,	Putting double dashes at the beginning of a setting line in this file will NOT disable it

• Do not forget a comma at the end of a line; every setting in the table needs to be separated with a comma
• Purpose of this file is to provide a way to back your settings up & make them unaffected through updates
• You can delete this help part; delete all the lines 1-24 if desired
]]--

local tweakOverrides = {
	-- PUT YOUR OVERRIDES HERE IN THIS TABLE --
}