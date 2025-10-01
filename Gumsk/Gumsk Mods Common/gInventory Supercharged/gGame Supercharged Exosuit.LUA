Author = "Gumsk"
ModName = "gGame Inventory Supercharged"
ModNameSub = "Exosuit"
BaseDescription = "Makes all exosuit slots supercharged"
GameVersion = "6.0.7.0"
ModVersion = "a"

AddSpecialSlots = [[					<Property name="SpecialSlots">
]]

for i = 0,8 do
	for j = 0,5 do
		AddSpecialSlots = AddSpecialSlots..[[						<Property name="SpecialSlots" value="GcInventorySpecialSlot">
							<Property name="Type" value="GcInventorySpecialSlotType">
								<Property name="InventorySpecialSlotType" value="TechBonus" />
							</Property>
							<Property name="Index" value="GcInventoryIndex">
								<Property name="X" value="]]..i..[[" />
								<Property name="Y" value="]]..j..[[" />
							</Property>
						</Property>
]]
	end
end

AddSpecialSlots = AddSpecialSlots..[[					</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Inventory_TechOnly","GcInventoryContainer"},
							PRECEDING_KEY_WORDS = {"SpecialSlots"},
							PRECEDING_FIRST = "False",
							SECTION_ACTIVE = {0},
							SECTION_UP = 1,
							ADD_OPTION = "REPLACEwholeSECTION",
							ADD = AddSpecialSlots
						},
					},
				},
			}
		}
	}
}