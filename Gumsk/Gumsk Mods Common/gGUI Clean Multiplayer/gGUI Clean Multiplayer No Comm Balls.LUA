Author = "Gumsk,lMonk"
ModName = "gGUI Clean Multiplayer"
ModNameSub = "No Comm Balls"
BaseDescription = ""
GameVersion = "6.2.1.0"
ModVersion = "a"

--[[Files Modified
MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/MESSENGER/MESSENGER.SCENE.MBIN
MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/MESSENGER/ENTITIES/MESSENGER.ENTITY.MBIN
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION		 = "TEXTURES/UI/HUD/ICONS/MESSAGEBEACON.DDS",
			EXTERNAL_FILE_SOURCE	 = "BLANK.DDS",
		},
	},
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				
				--=========================================================================
				--Makes the communication station invisible, removes collisions, hides text
				--=========================================================================			
				{
					MBIN_FILE_SOURCE = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/MESSENGER/MESSENGER.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Type","MESH"},
							REMOVE = "SECTION",
							REPLACE_TYPE = "ALL",
						},
						{
							SPECIAL_KEY_WORDS = {"Type","COLLISION"},
							REMOVE = "SECTION",
							REPLACE_TYPE = "ALL",
						},
					},
				},
				{
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\MESSENGER\ENTITIES\MESSENGER.ENTITY.MBIN",
					MXML_CHANGE_TABLE = {
					
						{
							INTEGER_TO_FLOAT = "PRESERVE",
							VALUE_CHANGE_TABLE	 = {
								{"AttractDistanceSq",0.000001},
								{"InteractDistance",0.000001},
								{"InteractAngle",0.000001},
							}
						},
						{
							SPECIAL_KEY_WORDS	= {"InteractionType","MessageBeacon"},
							LINE_OFFSET = "0",
							VALUE_CHANGE_TABLE	 = {
								{"InteractionType","None"}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"Components","TkAnimationComponentData"},
							REMOVE = "SECTION",
						},
						{
							SPECIAL_KEY_WORDS = {"Components","TkStaticPhysicsComponentData"},
							REMOVE = "SECTION",
						},
						{
							SPECIAL_KEY_WORDS = {"Components","TkAudioComponentData"},
							REMOVE = "SECTION",
						},
						{
							PRECEDING_KEY_WORDS = {"LodDistances"},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"LodDistances", "0.000000"},
							},
						},
					},
				},
			}
		}
	}
}