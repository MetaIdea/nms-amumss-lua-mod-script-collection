MOD_NAME 					= "Crop_Growth_Tweaks"
NMS_VERSION 			= "3.98"

--[[
	'Enabled' - sets whether the mod will change growth time for that particular plant.
	'GrowthTime' - sets how long before harvestable (time in seconds). Don't set below 2.
]]
PlantTable = {
	{
		Name 				= "Albumen Pearl Orb",
		Resource		= "Albumen Pearl",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMALBUMEN\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Echinocactus",
		Resource 		= "Cactus Flesh",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMBARREN\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Gutrot Flower",
		Resource 		= "Faecium",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMPOOP\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Frostwort",
		Resource 		= "Frost Crystal",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMSNOW\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Fungal Cluster",
		Resource		= "Fungal",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMTOXIC\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Gamma Weed",
		Resource 		= "Gamma Root",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMRADIOACTIVE\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Gravitino Host",
		Resource		= "Gravitino Ball",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMGRAVITINO\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Mordite Root",
		Resource 		= "Mordite",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMDEADCREATURE\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "NipNip",
		Resource		= "NipNip Buds",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMNIP\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Solar Vine",
		Resource 		= "Solanium",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMSCORCHED\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Star Bramble",
		Resource		= "Star Bulb",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMLUSH\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	},
	{
		Name 				= "Venom Urchin",
		Resource 		= "Sac Venom",
		Enabled			= true,
		GrowthTime 	= 600,
		MbinSource	= "MODELS\\PLANETS\\BIOMES\\COMMON\\INTERACTIVEFLORA\\FARMVENOMSAC\\ENTITIES\\PLANTINTERACTION.ENTITY.MBIN",
	}
}
-- Do not modify anything beyond this point --

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= MOD_NAME.."_v"..NMS_VERSION..".pak",
  ["MOD_DESCRIPTION"]		= "Gives full control over the growth time of all plants",
  ["MOD_AUTHOR"]				= "AngryHippo",
  ["NMS_VERSION"]				= NMS_VERSION,
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				-- Dynamically filled by mod changes
			}
		},
	}
}

ModChanges = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

for _, plant in pairs(PlantTable) do
	if plant.Enabled then
		local ChangeTable = {
			["MBIN_FILE_SOURCE"] = plant.MbinSource,
			["EXML_CHANGE_TABLE"] =
			{
				{
					["SPECIAL_KEY_WORDS"]  = {"TriggerAction","STEP1_ENTER",}, 
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Time", math.floor(plant.GrowthTime / 2) - 1} 
					} 
				},
				{
					["SPECIAL_KEY_WORDS"]  = {"TriggerAction","STEP1",},
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Time", math.floor(plant.GrowthTime / 2)} 
					} 
				}, 
				{
					["SPECIAL_KEY_WORDS"]  = {"TriggerAction","STEP2_ENTER",},
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Time", math.floor(plant.GrowthTime - 1)} 
					} 
				}, 
				{
					["SPECIAL_KEY_WORDS"]  = {"TriggerAction","STEP2",},
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Time", plant.GrowthTime} 
					} 
				},  						
			}
		}
		
		table.insert(ModChanges, ChangeTable)
	end
end