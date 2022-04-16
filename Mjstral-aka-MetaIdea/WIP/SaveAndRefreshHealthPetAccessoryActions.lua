ACCESSORY1 = "_ACC_Computer"
ACTION1 = "Save"

ACCESSORY2 = "_ACC_LSupportSystem"
ACTION2 = "GenericReward"
ACTION_REWARD2 = "HEALTHLARGE"

ACCESORIES = {
"_ACC_CargoCylinder",
"_ACC_Containers",
"_ACC_ShieldArmour",
"_ACC_SolarBattery",
"_ACC_Tank",
"_ACC_WingPanel",
"_ACC_TravelPack",
"_ACC_SpacePack",
"_ACC_CargoLong",
"_ACC_Antennae",
"_ACC_Toolbelt",
"_ACC_Computer",
"_ACC_LCanisters",
"_ACC_LEnergyCoil",
"_ACC_LFrigateTurret",
"_ACC_LHeadLights",
"_ACC_LArmourPlate",
"_ACC_LTurret",
"_ACC_LSupportSystem",
"_ACC_RCanisters",
"_ACC_REnergyCoil",
"_ACC_RFrigateTurret",
"_ACC_RHeadLights",
"_ACC_RArmourPlate",
"_ACC_RTurret",
"_ACC_RSupportSystem",
}

ACTIONS = {
"Interact", "Treasure", "Beacon", "Scan", "Save", "CallShip", "CallVehicle", "Word", "Tech", "GenericReward", 
"Feed", "Ladder", "ClaimBase", "TeleportStartPoint", "TeleportEndPoint", "Portal", "Chest", "ResourceHarvester", 
"BaseCapsule", "Hologram", "NPCTerminalMessage", "VehicleBoot", "BiomeHarvester", "FreighterGalacticMap", "FreighterChest",
"Collectable", "Chair", "BaseTreasureChest", "SpawnObject", "NoiseBox", "AbandFreighterTeleporter", "PetEgg", "SubstancePickup",
}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SaveAndRefreshHealth-PetAccessoryActions.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Add actions bound to pet accessories - here the pet computer accessory allows you to save and refresh your health",
["NMS_VERSION"]				= "3.21+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT\ENTITIES\SAVEPOINT.ENTITY.MBIN]],
							[[MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES\ENTITIES\ACTION1.ENTITY.MBIN]],
							"REMOVE"
						}, 
					},
				},
				{
					["MBIN_FILE_SOURCE"]    = { [[MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES\ENTITIES\ACTION1.ENTITY.MBIN]] },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SimpleInteractionType", ACTION1},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT\ENTITIES\SAVEPOINT.ENTITY.MBIN]],
							[[MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES\ENTITIES\ACTION2.ENTITY.MBIN]],
							"REMOVE"
						}, 
					},
				},
				{
					["MBIN_FILE_SOURCE"]    = { [[MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES\ENTITIES\ACTION2.ENTITY.MBIN]] },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SimpleInteractionType", ACTION2},
								{"Id", ACTION_REWARD2},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", ACCESSORY1},
							["LINE_OFFSET"] 		= "+14",
							["ADD"] 				= 
[[
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="ATTACHMENT" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES\ENTITIES\ACTION1.ENTITY.MBIN" />
			</Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", ACCESSORY2},
							["LINE_OFFSET"] 		= "+14",
							["ADD"] 				= 
[[
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="ATTACHMENT" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES\ENTITIES\ACTION2.ENTITY.MBIN" />
			</Property>
]]
						}
					}
				}
			}
		}
	}	
}