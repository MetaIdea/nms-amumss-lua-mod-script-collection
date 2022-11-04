-- Ship Hunting Assistant // Will NOT affect default seeds!
-- Author: DarkScythe
-- Date Created: Jul 03, 2022
-- Last Updated: Aug 02, 2022
--------------------------------------------------------------------------------
modName		= "X-Fast Ship Hunting.pak"
modAuthor	= "Lowkie"
modDesc		= "Speeds up ship hunting by filtering to specific types and increases spawn rates WITHOUT affecting default seeds so you get the same ships as vanilla players in every system. Helpful for players who want to share coordinates of interesting finds with others."
gameVer		= "3.99"

huntExotics			= true	-- Extreme spawn rate boost if all others are disabled
huntExplorers		= false
huntFighters		= true
huntHaulers			= true
huntShuttles		= false	-- I don't know why anyone wants to, but if you do, go ahead
huntSolars			= true

shipInfo = {
	{shipActive = huntExotics,		shipFile = "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"},
	{shipActive = huntExplorers,	shipFile = "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"},
	{shipActive = huntFighters,		shipFile = "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"},
	{shipActive = huntHaulers,		shipFile = "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"},
	{shipActive = huntShuttles,		shipFile = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"},
	{shipActive = huntSolars,		shipFile = "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN"},
}


-- This table will be filled in automatically in a moment.
shipsToRemove	= {}

-- Scan through shipInfo and fill in the above table
for i = 1, #shipInfo do
	if not shipInfo[i].shipActive then
		shipsToRemove[#shipsToRemove + 1] = {
			["PRECEDING_FIRST"]		= "TRUE",
			["PRECEDING_KEY_WORDS"]	= "Civilian",
			["SPECIAL_KEY_WORDS"]	= {"Filename", shipInfo[i].shipFile},
			["VALUE_CHANGE_TABLE"]	= {
				{"Filename", ""}
			},
		}
	end
end

NMS_MOD_DEFINITION_CONTAINER	= {
	["MOD_FILENAME"]			= modName,
	["MOD_DESCRIPTION"]			= modDesc,
	["MOD_AUTHOR"]				= modAuthor,
	["LUA_AUTHOR"]				= modAuthor,
	["NMS_VERSION"]				= gameVer,

	-- Actual mod container
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= {
						{
							-- OutpostSpawns controls the waves bound for Planetary Trading posts
							["PRECEDING_KEY_WORDS"]	= {"OutpostSpawns", "Count"},
							["VALUE_CHANGE_TABLE"]	= {
								{"x", "2"},	-- "x"=min --default = 1
								{"y", "4"},	-- "y"=max --default = 3
							},
						},
						{
							-- TraderSpawns controls the waves bound for Space Stations
							["PRECEDING_KEY_WORDS"]	= {"TraderSpawns", "Count"},
							["VALUE_CHANGE_TABLE"]	= {
								{"x", "2"}, --default = 1
								{"y", "2"}, --default = 1
							},
						},
						{
							-- SpaceFlybySpawns controls the additional waves
							-- that spawn when you're flying around in space
							-- Used to help supplement the naturally lower
							-- spawns in space
							["PRECEDING_KEY_WORDS"]	= {"SpaceFlybySpawns", "GcAIShipSpawnData.xml", "Count"},
							["VALUE_CHANGE_TABLE"]	= {
								{"x", "3"}, --default = 2
								{"y", "4"}, --default = 3
							},
						},
					}
				},
			}
		}
	}
}


mergeManagerEXML = {}

if #shipsToRemove > 0 then
	local shipSpawnFilter = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
	shipSpawnFilter[#shipSpawnFilter + 1] = {
		["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN",
		["EXML_CHANGE_TABLE"] = shipsToRemove,
		-- DO NOT MERGE HERE; Use the mergeManagerEXML table above
	}

	-- If we have any merges defined above, this will insert them at the end
	if #mergeManagerEXML > 0 then
		local managerChanges = shipSpawnFilter[#shipSpawnFilter].EXML_CHANGE_TABLE
		for i = 1, #mergeManagerEXML do
			table.insert(managerChanges, mergeManagerEXML[i])
		end
	end
end