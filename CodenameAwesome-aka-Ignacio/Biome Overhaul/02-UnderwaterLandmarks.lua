dofile([[OBE_methods.lua]])

SCALE_MULTIPLIER = 5
DEPTH_MULTIPLIER = 5
DENSITY_MULTIPLIER = 1/10

MBIN_CHANGE_TABLE = {}
underwater_obj_mbins = getObjectsFileList("METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN","UNDERWATER_OBJ")

for _, objectsfile in ipairs(underwater_obj_mbins) do
	newobjectsfile = objectsfile:gsub("/UNDERWATER/OBJECTS/","/UNDERWATER/LANDMARKS/")
	table.insert(MBIN_CHANGE_TABLE,{
		["MBIN_FILE_SOURCE"] = {{objectsfile,newobjectsfile}}
	})
	table.insert(MBIN_CHANGE_TABLE,{--Make objects smaller. Larger objects will be found in deeper areas (landmarks).
		["MBIN_FILE_SOURCE"] = {objectsfile},
		["EXML_CHANGE_TABLE"] = 
		{
			{
				["INTEGER_TO_FLOAT"] = "FORCE",
				["MATH_OPERATION"] = "*",
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"MinScale", 0.5},
					{"MaxScale", 0.5},
					{"FlatDensity", 1.5},
					{"SlopeDensity", 1.5},
				}	
			},
		}
	})
	table.insert(MBIN_CHANGE_TABLE,{
		["MBIN_FILE_SOURCE"] = {newobjectsfile},
		["EXML_CHANGE_TABLE"] = {
			{
				["REPLACE_TYPE"] = "RAW",
				["VALUE_CHANGE_TABLE"] = {
					{[[<Property name="Landmarks" />]],[[<Property name="Objects" />]]},
					{[[<Property name="Objects">]],[[<Property name="Landmarks">]]},
				}
			},{
				["REPLACE_TYPE"] = "ALL",
				["MATH_OPERATION"] = "*",
				["VALUE_CHANGE_TABLE"] = {
					{"MinScale",SCALE_MULTIPLIER},
					{"MaxScale",SCALE_MULTIPLIER},
					{"FadeOutStartDistance",SCALE_MULTIPLIER},
					{"FadeOutEndDistance",SCALE_MULTIPLIER},
					{"FlatDensity",DENSITY_MULTIPLIER},
					{"SlopeDensity",DENSITY_MULTIPLIER},
					{"MaxHeight",DEPTH_MULTIPLIER},
				}
			},
			{
				["REPLACE_TYPE"] = "ALL",
				["MATH_OPERATION"] = "*",
				["PRECEDING_KEY_WORDS"] = {"LodDistances"},
				["VALUE_CHANGE_TABLE"] = {
					{"IGNORE",SCALE_MULTIPLIER}
				}
			}
		}
	})
	table.insert(MBIN_CHANGE_TABLE,{
		["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN"},
		["EXML_CHANGE_TABLE"] = {
			{
				["SPECIAL_KEY_WORDS"] = {"Name","UNDERWATER_LMK"},
				["VALUE_CHANGE_TABLE"] = {
					{"Probability",1},
					{"SeasonalProbabilityOverride",1},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","UNDERWATER_LMK"},
				["PRECEDING_KEY_WORDS"] = {"Options"},
				["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="]]..newobjectsfile..[[" />
        </Property>]]
			}
		}
	})
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ".pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Ignacio",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}