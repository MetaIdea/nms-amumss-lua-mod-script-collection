Author = "Gumsk"
ModName = "gGame Inventory Supercharged"
ModNameSub = "Exocraft"
BaseDescription = "Makes all exocraft slots supercharged"
GameVersion = "6.0.7.0"
ModVersion = "a"

AddSpecialSlots = [[					<Property name="SpecialSlots">
]]

for i = 0,8 do
	for j = 0,2 do
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
							SPECIAL_KEY_WORDS = {"Buggy","GcPlayerOwnershipData","Inventory_TechOnly","GcInventoryContainer","SpecialSlots","GcInventorySpecialSlot"},
							SECTION_UP = 1,
							ADD_OPTION = "REPLACEwholeSECTION",
							ADD = AddSpecialSlots
						},
						{
							SPECIAL_KEY_WORDS = {"Bike","GcPlayerOwnershipData","Inventory_TechOnly","GcInventoryContainer","SpecialSlots","GcInventorySpecialSlot"},
							SECTION_UP = 1,
							ADD_OPTION = "REPLACEwholeSECTION",
							ADD = AddSpecialSlots
						},
						{
							SPECIAL_KEY_WORDS = {"Truck","GcPlayerOwnershipData","Inventory_TechOnly","GcInventoryContainer","SpecialSlots","GcInventorySpecialSlot"},
							SECTION_UP = 1,
							ADD_OPTION = "REPLACEwholeSECTION",
							ADD = AddSpecialSlots
						},
						{
							SPECIAL_KEY_WORDS = {"WheeledBike","GcPlayerOwnershipData","Inventory_TechOnly","GcInventoryContainer","SpecialSlots","GcInventorySpecialSlot"},
							SECTION_UP = 1,
							ADD_OPTION = "REPLACEwholeSECTION",
							ADD = AddSpecialSlots
						},
						-- {  -- NOT USED CURRENTLY
							-- SPECIAL_KEY_WORDS = {"Hovercraft","GcPlayerOwnershipData","Inventory_TechOnly","GcInventoryContainer","SpecialSlots","GcInventorySpecialSlot"},
							-- SECTION_UP = 1,
							-- ADD_OPTION = "REPLACEwholeSECTION",
							-- ADD = AddSpecialSlots
						-- },
						{
							SPECIAL_KEY_WORDS = {"Submarine","GcPlayerOwnershipData","Inventory_TechOnly","GcInventoryContainer","SpecialSlots","GcInventorySpecialSlot"},
							SECTION_UP = 1,
							ADD_OPTION = "REPLACEwholeSECTION",
							ADD = AddSpecialSlots
						},
						{
							SPECIAL_KEY_WORDS = {"Mech","GcPlayerOwnershipData","Inventory_TechOnly","GcInventoryContainer","SpecialSlots","GcInventorySpecialSlot"},
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