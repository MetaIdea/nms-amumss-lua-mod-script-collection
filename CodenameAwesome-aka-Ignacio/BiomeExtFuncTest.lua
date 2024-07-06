biomefilenames   = 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN'

getBiomeList = nil -- to silence unused_variable NOTICE
function getBiomeList(TheDATA)
	-- your code here
	
	local exml_table = TheDATA["ModdedEXMLs"][NormalizePath(biomefilenames, true)] -- a TABLE of STRINGs
	local exml_rawString = table.concat( exml_table ) -- now a one-line STRING
	
	biome_list = {}
	
	for biomefile in string.gmatch(exml_rawString,'<Property value="GcBiomeFileListOption%.xml">.-<Property name="Filename" value="(.-)"') do
		biomefile = biomefile:gsub(".MXML",".MBIN")
		biome_list[biomefile] = true
	end
	
	biome_list_deduped = {}
	for key, _ in pairs(biome_list) do
		print(key)
		table.insert(biome_list_deduped, key)
	end
	
	return {biome_list_deduped}
end

NMS_MOD_DEFINITION_CONTAINER = {
	{
		MOD_FILENAME     = 'Test_EXT_FUNC.pak',
		MOD_AUTHOR       = 'CodenameAwesome',
		NMS_VERSION      = 'ALL',
		MOD_DESCRIPTION  = "Test",
		MODIFICATIONS = {
		  {
			MBIN_CHANGE_TABLE = {
			  {
				MBIN_FS = { -- ask AMUMSS to open these MBINs
				  biomefilenames,
				},
				
				EXT_FUNC = {
				  -- function names to call
				  "getBiomeList",
				},
			  },
			},
		  },
		},
	},
}