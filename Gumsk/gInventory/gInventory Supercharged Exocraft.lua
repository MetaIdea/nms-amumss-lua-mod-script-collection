Author = "Gumsk"
ModName = "gInventory Supercharged"
ModNameSub = "Exocraft"
BaseDescription = "Makes alll exocraft slots supercharged"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN"

AddSpecialSlots = [[          <Property name="SpecialSlots">
]]

for i = 0,9 do
	for j = 0,2 do
		AddSpecialSlots = AddSpecialSlots..[[            <Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="]]..i..[[" />
                <Property name="Y" value="]]..j..[[" />
              </Property>
            </Property>
]]
	end
end

AddSpecialSlots = AddSpecialSlots..[[          </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Inventory_TechOnly","GcInventoryContainer.xml"},
							["PRECEDING_KEY_WORDS"] = {"SpecialSlots"},
							["SECTION_ACTIVE"] = {2,3,4,5,6,7,8},
							REMOVE = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Inventory_TechOnly","GcInventoryContainer.xml","StackSizeGroup","GcInventoryStackSizeGroup.xml"},
							["LINE_OFFSET"] = "+3",
							["SECTION_ACTIVE"] = {2,3,4,5,6,7,8},
							ADD = AddSpecialSlots
						},
					},
				},
			}
		}
	}
}