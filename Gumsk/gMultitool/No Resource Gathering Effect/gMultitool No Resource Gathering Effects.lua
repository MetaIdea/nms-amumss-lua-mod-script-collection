Author = "Gumsk"
ModName = "gMultitool No Resource Gathering Effects"
ModNameSub = ""
BaseDescription = "Removes resource gathering effects"
GameVersion = "411"
ModVersion = "a"

--Files Modified
--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {

			--====================================================================================
			--Removes resource blobs that fly toward player on mining substances
			--====================================================================================
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\LARGERESOURCEDEBRIS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Type","MESH"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION"
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\RESOURCEDEBRIS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Type","MESH"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION"
						},
					},
				},
				
			--====================================================================================
			--Removes resource blobs that fly toward player on terrain editing ground or deposits
			--====================================================================================
				{
					["MBIN_FILE_SOURCE"] = {
						"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.SCENE.MBIN",
						"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS2.SCENE.MBIN",
						"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN",
						"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS4.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Type","MESH"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Type","LIGHT"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION"
						},
					},
				},
				
				-- {
					-- ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					-- ["EXML_CHANGE_TABLE"] = {
						-- {
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"ResourceParticleFile",""},
							-- },
						-- },
					-- },
				-- },
				-- {
					-- ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					-- ["EXML_CHANGE_TABLE"] = {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"DebrisFile","TkModelResource.xml"},
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"FileName",""},
							-- },
						-- },
					-- },
				-- },

			--====================================================================================
			--Removes explosion debris rocks on terrain editing ground or deposits
			--====================================================================================
				{
					["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\PLAYEREFFECTS.MBIN",
					["EXML_CHANGE_TABLE"] = {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id","SUBSTANCEPOP","Model","TkModelResource.xml"},
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"FileName",""},
							-- },
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id","SUBSTANCEPOP","FileName","TkModelResource.xml"},
							-- ["LINE_OFFSET"] = "+1",
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"FileName",""},
							-- },
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TERRAINEDIT","Model","TkModelResource.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"FileName",""},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TERRAINEDIT","FileName","TkModelResource.xml"},
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] = {
								{"FileName",""},
							},
						},
					},
				},
				
				-- {
					-- ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PROJECTILES\LASERIMPACTGROUND.SCENE.MBIN",
					-- ["EXML_CHANGE_TABLE"] = {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","FlashEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","SmokeEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","GlowSparkEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","RockEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
					-- },
				-- },
				-- {
					-- ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PROJECTILES\LASERIMPACTSUBSTANCE.SCENE.MBIN",
					-- ["EXML_CHANGE_TABLE"] = {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","SparkEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","FlashEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","SmokeEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","GlowSparkEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","RockEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","HeatHazeEmitter"},
							-- ["REMOVE"] = "SECTION",
						-- },
					-- },
				-- },
				-- {
					-- ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PROJECTILES\MININGLASERIMPACT.SCENE.MBIN",
					-- ["EXML_CHANGE_TABLE"] = {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","Flash"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","Sparks"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","Energy"},
							-- ["REMOVE"] = "SECTION",
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","Smoke"},
							-- ["REMOVE"] = "SECTION",
						-- },
					-- },
				-- },
			}
		}
	}
}