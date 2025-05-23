-----------------------------------------------------
local mod_desc = [[
  - Disable interaction POV camera
  - Remove ambient audio
  - Remove action sounds
  - Disable maintenance
  - Use portal without cost
  - Allow to collect in the mech
]]---------------------------------------------------

local entities = {
	['TERMINAL/TERMINAL/ENTITIES/TERMINAL.ENTITY.MBIN']															= {nocam=true},
	['TERMINAL/TERMINAL_SHOPSCIENTIFIC/ENTITIES/TERMINALSHOPSCIENTIFIC.ENTITY.MBIN']							= {nocam=true},
	['TERMINAL/TERMINAL_SHOPTRADER/ENTITIES/TERMINALSHOPTRADER.ENTITY.MBIN']									= {nocam=true},
	['TERMINAL/TERMINAL_STATIONWALL/ENTITIES/TERMINALSTATIONWALL.ENTITY.MBIN']									= {nocam=true},
	['TERMINAL/TERMINAL_TADINGPOST/ENTITIES/TERMINAL_TADINGPOST.ENTITY.MBIN']									= {nocam=true},
	['PARTS/BUILDABLEPARTS/TERMINAL_CUBECRATE/ENTITIES/TERMINALCHAR.ENTITY.MBIN']								= {nocam=true, silent=true},
	['PARTS/BUILDABLEPARTS/BASEBEACON/ENTITIES/BASEBEACON.ENTITY.MBIN']											= {nocam=true},
	['PARTS/BUILDABLEPARTS/TECH/BLUEPRINTANALYSER/ENTITIES/BLUEPRINTANALYSER.ENTITY.MBIN']						= {nocam=true},
	['TERMINAL/TERMINAL_SHOP/ENTITIES/TERMINAL_SHOP.ENTITY.MBIN']												= {nocam=true, silent=true},
	['PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_BATTERYS/ENTITIES/BATTERY.ENTITY.MBIN']							= {nocam=true},
	['PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_BIOGENERATOR/ENTITIES/INTERACTION.ENTITY.MBIN']					= {nocam=true},
	['PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_GASEXTRACTOR/ENTITIES/GASEXTRACTOR.ENTITY.MBIN']					= {nocam=true},
	['PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_PUMPS/ENTITIES/MINERALEXTRACTOR.ENTITY.MBIN']					= {nocam=true},
	['PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_SILOS/ENTITIES/INTERACTION.ENTITY.MBIN']							= {nocam=true},
	['PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_SOLARPANELS/ENTITIES/SOLARPANEL.ENTITY.MBIN']					= {nocam=true},
	['PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/TELEPOROOM/ENTITIES/TELEPORTERINTERACTION.ENTITY.MBIN']			= {nocam=true},
	['PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SHOPROOM/PARTS/FLOOR0/ENTITIES/INTERACTIONDATA.ENTITY.MBIN']		= {nocam=true},
	['PARTS/COMMONPARTS/TELEPORTER/ENTITIES/TELEPORTERINTERACTION.ENTITY.MBIN']									= {nocam=true},
	['PARTS/COMMONPARTS/TELEPORTER_NEXUS/ENTITIES/TELEPORTERNEXUSINTERACTION.ENTITY.MBIN']						= {nocam=true},
	['PARTS/COMMONPARTS/TELEPORTER_STATION/ENTITIES/TELEPORTERSTATIONINTERACTION.ENTITY.MBIN']					= {nocam=true},
	['PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN']						= {nocam=true},
	['MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/TELEPORTERTYPEB/ENTITIES/STATIONTELEPORTERB.ENTITY.MBIN']= {nocam=true},
	['MODELS/SPACE/NEXUS/NEXUS/ENTITIES/MPTERMINAL.ENTITY.MBIN']												= {nocam=true},
	['PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/DATA_PAD/ENTITIES/DATA_PAD.ENTITY.MBIN']								= {nocam=true, dist=2},
	['PARTS/BUILDABLEPARTS/DECORATION/AQUARIUM/ENTITIES/AQUARIUM.ENTITY.MBIN']									= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/LARGEDESK/ENTITIES/AUDIOLARGEDESK.ENTITY.MBIN']							= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/ENCASEDMONITOR/ENTITIES/AUDIOMONITOR.ENTITY.MBIN']						= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/MONITORDESK/ENTITIES/AUDIOSCREENSTAND.ENTITY.MBIN']						= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/SERVERSTACK/ENTITIES/AUDIOSERVER.ENTITY.MBIN']							= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/TERRARIUM/ENTITIES/TERRARIUM.ENTITY.MBIN']								= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/TOY_CORE/ENTITIES/AUDIOTOYCORE.ENTITY.MBIN']								= {silent=true},
	['PARTS/BUILDABLEPARTS/NPCROOMS/NPC_CONSTRUCTION/ENTITIES/WORKSTATION.ENTITY.MBIN']							= {silent=true},
	['PARTS/BUILDABLEPARTS/NPCROOMS/NPC_FARMING/ENTITIES/WORKSTATION.ENTITY.MBIN']								= {silent=true},
	['PARTS/BUILDABLEPARTS/NPCROOMS/NPC_SCIENCE/ENTITIES/WORKDESK.ENTITY.MBIN']									= {silent=true},
	['PARTS/BUILDABLEPARTS/NPCROOMS/NPC_WEAPONS/ENTITIES/WORKSTATION.ENTITY.MBIN']								= {silent=true},
	['PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/STORAGEROOM/PARTS/TERMINAL/ENTITIES/STORAGETERMINAL.ENTITY.MBIN']= {silent=true},
	['PARTS/BUILDABLEPARTS/BASECOMPUTER/ENTITIES/BASECOMPUTER.ENTITY.MBIN']										= {silent=true},
	['CHARCUSTOMISER/CHARCUSTOMISER/ENTITIES/CHARCUSTOMISER.ENTITY.MBIN']										= {silent=true},
	['PARTS/BUILDABLEPARTS/TECH/CUSTOMISESTATIONTYPEB/ENTITIES/CHARCUSTOMISER.ENTITY.MBIN']						= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/FIREPLACE/ENTITIES/FLAMEDATA.ENTITY.MBIN']								= {silent=true},
	['PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/REFINERROOM/PARTS/FLOOR0/ENTITIES/REFINERTERMINAL.ENTITY.MBIN']	= {silent=true},
	['PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/EXTRROOM/PARTS/FLOOR0/ENTITIES/EXTRACTORTERMINAL.ENTITY.MBIN']	= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/TOY_CUBE/ENTITIES/TOY_CUBE.ENTITY.MBIN']									= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/TOYDRONE/ENTITIES/DATA.ENTITY.MBIN']										= {silent=true},
	['PARTS/BUILDABLEPARTS/DECORATION/TOY_JELLYFISH/ENTITIES/TOY_JELLYFISH.ENTITY.MBIN']						= {silent=true},
	['PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN']																= {nomaint=true},
	['DEBRIS/PARTS/DEBRILARGECONTAINER/ENTITIES/TECHDEBRIS.ENTITY.MBIN']										= {nomaint=true},
	['PARTS/BUILDABLEPARTS/TECH/ANTIMATTERHARVESTER/ENTITIES/ANTIMATTERHARVESTER.ENTITY.MBIN']					= {nosound='.-Atmosphere_Harvester'},
	['PARTS/BUILDABLEPARTS/TECH/GASHARVESTER/ENTITIES/GASHARVESTER.ENTITY.MBIN']								= {nosound='.-Atmosphere_Harvester'},
	['PARTS/BUILDABLEPARTS/SHAREDDATA/ENTITIES/BASETERMINAL.ENTITY.MBIN']										= {nosound='BaseTerminal'},
	['PARTS/BUILDABLEPARTS/TECH/HEALTHSTATION/ENTITIES/HEALTHSTATION.ENTITY.MBIN']								= {nosound='Obj_HealthStation.-'},
	['PARTS/BUILDABLEPARTS/TECH/COOKER/ENTITIES/TRIGGERACTIONDATA.ENTITY.MBIN']									= {nosound='Cooker_Cooking'},
	['PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER3.ENTITY.MBIN']											= {nosound='Obj_RefineryLarge.-'},
	['PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER2.ENTITY.MBIN']											= {nosound='Obj_RefineryMedium.-'},
	['PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER1.ENTITY.MBIN']											= {nosound='Obj_PortableRefinery.-'},
	['PARTS/BUILDABLEPARTS/TECH/SHIELDSTATION/ENTITIES/SHIELDSTATION.ENTITY.MBIN']								= {nosound='Obj_Shield_Repairer.-'},
	['PARTS/BUILDABLEPARTS/DECORATION/TOY_SPHERE/ENTITIES/TOY_SPHERE.ENTITY.MBIN']								= {nosound='Obj_SpinningGlobe'},
	['PARTS/BUILDABLEPARTS/FOLIAGE/BEAMSTONE/ENTITIES/BEAMSTONE.ENTITY.MBIN']									= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/BONECOLLECT/ENTITIES/BONECOLLECT.ENTITY.MBIN']								= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/BUBBLECOLLECT/ENTITIES/SMALLBUBBLEC.ENTITY.MBIN']							= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/CONTOURPOD/ENTITIES/MAINPOD.ENTITY.MBIN']									= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/ENGINEORB/ENTITIES/_ENGINEORB_1.ENTITY.MBIN']								= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/HYDROPOD/ENTITIES/PODGROWING.ENTITY.MBIN']									= {mech=true, silent=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEOMETRIC/ENTITIES/MEDGEOMETRIC.ENTITY.MBIN']								= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/SHARD/ENTITIES/SHARD.ENTITY.MBIN']											= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/SHELLWHITE/ENTITIES/SHELLWHITE.ENTITY.MBIN']									= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/STARJOINT/ENTITIES/SINGLEJOINT.ENTITY.MBIN']									= {mech=true},
	['PARTS/BUILDABLEPARTS/FOLIAGE/WEIRDCUBE/ENTITIES/CUBOIDSMALL.ENTITY.MBIN']									= {mech=true, silent=true},
	['BARREL/BARREL_MEDIUM/ENTITIES/BARREL_MEDIUM.ENTITY.MBIN']													= {mech=true},
	['BARREL/BARREL_MEDIUM_RARE/ENTITIES/BARREL_MEDIUM_RARE.ENTITY.MBIN']										= {mech=true},
	['DEBRIS/DEBRISLARGE_COMMON/ENTITIES/DEBRIS.ENTITY.MBIN']													= {mech=true},
	['DEBRIS/DEBRISLARGE_COMMON/ENTITIES/DEBRISLARGE_COMMON.ENTITY.MBIN']										= {mech=true},
	['DEBRIS/DEBRISSMALL_COMMON/ENTITIES/DEBRISSMALL_COMMON.ENTITY.MBIN']										= {mech=true},
	['DEBRIS/DEBRISWARRIOR/ENTITIES/DEBRIS_COMMON.ENTITY.MBIN']													= {mech=true},
	['DEBRIS/DEBRISWARRIOR/ENTITIES/DEBRIS_RARE.ENTITY.MBIN']													= {mech=true},
	['CRATE/CRATE_LARGE/ENTITIES/CRATE_LARGE.ENTITY.MBIN']														= {mech=true},
	['CRATE/CRATE_LARGE_RARE/ENTITIES/CRATE_LARGE_RARE.ENTITY.MBIN']											= {mech=true, nomaint=true},
	['CRATE/CRATE_MEDIUM/ENTITIES/CRATE_MEDIUM.ENTITY.MBIN']													= {mech=true},
	['CRATE/CRATE_MEDIUM_RARE/ENTITIES/CRATE_MEDIUM_RARE.ENTITY.MBIN']											= {mech=true},
	['CRATE/CRATE_SMALLA/ENTITIES/CRATE_SMALLA.ENTITY.MBIN']													= {mech=true},
	['CRATE/CRATE_SMALLA_RARE/ENTITIES/CRATE_SMALLA_RARE.ENTITY.MBIN']											= {mech=true},
	['CRATE/CRATE_SMALLB/ENTITIES/CRATE_SMALLB.ENTITY.MBIN']													= {mech=true},
	['CRATE/CRATE_SMALLB_RARE/ENTITIES/CRATE_SMALLB_RARE.ENTITY.MBIN']											= {mech=true},
	['CRATE/UNDERGROUNDCRATE/ENTITIES/UNDERGROUNDCRATE.ENTITY.MBIN']											= {mech=true},
	['RUINS/PARTS/CRATEKEY/ENTITIES/CRATEKEY.ENTITY.MBIN']														= {mech=true},
	['MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT2/ENTITIES/COMPLANT_2.ENTITY.MBIN']			= {mech=true},
	['MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT1/ENTITIES/FUELPLANT_1.ENTITY.MBIN']				= {mech=true},
	['MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/PROXIMITYPLANT/ENTITIES/LIGHTUP.ENTITY.MBIN']				= {mech=true},
	['MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TECHPLANT/ENTITIES/TECHPLANT.ENTITY.MBIN']					= {mech=true},
	['MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/CLAMSHELL/ENTITIES/MAIN.ENTITY.MBIN']					= {mech=true},
	['MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/FIENDEGGPARTS/FIENDEGGREWARD/ENTITIES/FIENDREWARD.ENTITY.MBIN']= {mech=true},
	['MODELS/PLANETS/BIOMES/UNDERWATER/INTERACTIVE/FISHFIENDROCK/ENTITIES/FIENDPLANT.ENTITY.MBIN']				= {mech=true},
	['MODELS/PLANETS/BIOMES/UNDERWATER/INTERACTIVE/STEAMVENT/ENTITIES/GEM.ENTITY.MBIN']							= {mech=true},
	['MODELS/PLANETS/CREATURES/FISH/CLAM/ENTITIES/PEARL.ENTITY.MBIN']											= {mech=true},
	['MODELS/PLANETS/CREATURES/FISH/PARTS/GRABBYPLANTEYE/ENTITIES/GRABBYPLANTEYE.ENTITY.MBIN']					= {mech=true},
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL entity toggle switches.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= (
		function()
			local mct = {}
			for src, flg in pairs(entities) do
				local T = {}
				if flg.nocam then
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Template', 'GcInteractionComponentData.xml'},
						VALUE_CHANGE_TABLE 	= {
							{'UseInteractCamera', false}
						}
					}
				end
				if flg.dist then
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Template', 'GcInteractionComponentData.xml'},
						VALUE_CHANGE_TABLE 	= {
							{'InteractDistance', flg.dist}
						}
					}
				end
				if flg.silent then
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Template', 'TkAudioComponentData.xml'},
						SECTION_UP			= 1,
						REMOVE				= 'Section'
					}
				end
				if flg.nosound then
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Sound', flg.nosound},
						REMOVE				= 'Section'
					}
				end
				if flg.nomaint then
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Template', 'GcMaintenanceComponentData.xml'},
						SECTION_UP			= 1,
						REMOVE				= 'Section'
					}
				end
				if flg.mech then
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Template', 'GcSimpleInteractionComponentData.xml'},
						VALUE_CHANGE_TABLE 	= {
							{'CanCollectInMech', true}
						}
					}
				end
				if #T > 0 then
					mct[#mct+1] = {
						MBIN_FILE_SOURCE	= src:match('^MODEL.-') and src or 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/'..src,
						EXML_CHANGE_TABLE	= T
					}
				end
			end
			return mct
		end
	)()
}}}
