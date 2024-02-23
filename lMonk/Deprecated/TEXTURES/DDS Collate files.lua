-------------------------------
local desc = [[
  Organize texture replacers
]]-----------------------------

local dds_sources = {
	{
	---	blank replacers
		source = 'Blanks/',
		target = '',
		names  = {
			-- binoculars screen filters
			{'BLANK.FILTER.DDS','LUT/FILTERS/BINOCULARS.DDS'},
			{'BLANK.FILTER.DDS','LUT/FILTERS/SURVEYING1.DDS'},
			{'BLANK.FILTER.DDS','LUT/FILTERS/MISSIONSURVEY.DDS'},
			-- binoculars HUD background
			{'BLANK.64.DDS',	'UI/HUD/BINOCULARS.DDS'},
			{'BLANK.64.DDS',	'UI/HUD/BINOCULARMISSION.DDS'},
			{'BLANK.64.DDS',	'UI/HUD/SURVEYING.DDS'},
			-- laser mid part & target crosshairs
			{'BLANK.64.DDS',	'UI/HUD/CROSSHAIRLAZERMIDDLE.DDS'},
			{'BLANK.64.DDS',	'UI/HUD/CROSSHAIRS/LARGETARGET.DDS'},
			{'BLANK.64.DDS',	'UI/HUD/CROSSHAIRTARGET.DDS'},
			-- hide inv tab bulletpoint
			{'BLANK.32.DDS',	'UI/FONTS/BULLETPOINT.DDS'}
		}
	},{
	---	clean non-chipped fighter paint & white ship lights
		source = 'Ship/FighterClean/',
		target = 'COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		names  = {
			{'*.DDS'}
		}
	},{
	---	Dimmer sailship sail
		source = 'Ship/Sail/',
		target = 'COMMON/SPACECRAFT/FIGHTERS/SAILS/',
		names  = {
			{'*.DDS'}
		}
	},{
	---	white hardframe mech & carbon-fiber laylaps
		source = 'FriendlyRobot/',
		target = 'COMMON/ROBOTS/',
		names  = {
			{'FRIENDLYDRONE.DDS'}
		}
	},{
	---	planetary clouds replacement
		source = 'Clouds/',
		target = 'SPACE/ATMOSPHERE/',
		names  = {
			{'ATMOSPHERE.DDS'}
		}
	},{
	---	multitool display screen & glow parts
		source = 'Weapon/',
		target = 'UI/WEAPON/',
		names  = {
			{'*SCREEN.DDS'},
		}
	},{
	---	dark blue trail (requires change in HOTDARKTRAIL.MATERIAL.MBIN)
	---	blue infraknife shot (requires change in SHIPMINIGUNPROJECTILEGRADIENT.MATERIAL.MBIN)
	---	remove sailship wing blinkers; alt warp textures
		source = 'Effects/',
		target = 'EFFECTS/',
		names  = {
			{'Trails/*.DDS',	'TRAILS/HOT/*.DDS'},
			{'Light/*.DDS',		'LIGHTS/*.DDS'},
		}
	},{
	---	black carbon crystals
		source = 'BlackCarbon/',
		target = 'PLANETS/BIOMES/',
		names  = {
			{'*.RED.DDS',			'COMMON/CRYSTALS/*.RED.DDS'},
			{'MINERAL2.BASE.DDS',	'CRYSTAL/LARGEPROP/MINERAL2.BASE.DDS'}
		}
	},{
	---	hangar crane
		source = 'Building/Crane/',
		target = 'SPACE/SPACESTATION/PIRATES/',
		names  = {
			{'*.DDS'}
		}
	},{
	---	building parts: cleaner glass panes, decal replacers
		source = 'Building/',
		target = 'PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/',
		names  = {
			{'Glass/*.DDS',		'*.DDS'},
			{'Decals/*.DDS',	'DECALS/*.DDS'}
		}
	-- },{
	-- ---	basebuilding Number decals
		-- source = 'Base/Decals/',
		-- target = 'PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/DECALS/',
		-- names  = {
			-- {'*.DDS'}
		-- }
	},{
	---	Menu icons for the base part number decals
		source = 'Icons/Base/',
		target = 'UI/FRONTEND/ICONS/BUILDABLE/',
		names  = {
			{'DECAL.NUM?.DDS'},
			-- used for the quickmenu
			{'BUILDABLE.BYTEBEAT.DDS'},
		}
	},{
	---	MENU ICONS: products & substances
		source = 'Icons/',
		target = 'UI/FRONTEND/ICONS/',
		names  = {
			{'Products/PRODUCT.*.DDS'},
			{'u4Products/PRODUCT.*.DDS'},
			{'UPDATE3/*.DDS'},
			-- REQUIRES changes in NMS_REALITY_GCPRODUCTTABLE.MBIN)
			{'Products/Ketaros/PRODUCT.*.DDS'},
			{'U4Substances/SUBSTANCE.*.DDS'},
		}
	},{
	---	MENU ICONS: technology
		source = 'Icons/Technology/',
		target = 'UI/FRONTEND/ICONS/TECHNOLOGY/',
		names  = {
			{'*.DDS'},
			{'Bio/*.DDS'},
			{'Vehicle/*.DDS'},
		}
	},{
	---	ICONS: quickmenu
		source = 'Icons/Quickmenu/',
		target = 'UI/FRONTEND/ICONS/QUICKMENU/',
		names  = {
			{'*.DDS'},
			-- THIRDPERSONSHIP is copied twice
			{'THIRDPERSONSHIP.DDS', 'THIRDPERSONCHARACTER.DDS'},
		}
	},{
	---	 ICONS: translucent hud icons
		source = 'Icons/Hud/',
		target = 'UI/HUD/ICONS/',
		names  = {
			{'Building/*.DDS',		'BUILDINGS/*.DDS'},
			{'Pickups/*.DDS',		'PICKUPS/*.DDS'},
			{'U4Pickups/*.DDS',		'U4PICKUPS/*.DDS'},
			{'Poles/*.DDS',			'*.DDS'},
			{'Player/*.DDS',		'PLAYER/*.DDS'},
			{'BLACKHOLE.DDS',		'MISSIONS/MISSION.BLACKHOLE.DDS'},
			-- discovered creature HUD icon (requires change in SCANNERICONS.MBIN)
			{'CREATURE.DISCOVERED.DDS'}
		}
	},{
	---	player: vkyeen gloves
		source = 'Player/',
		target = 'COMMON/PLAYER/PLAYERCHARACTER/',
		names  = {
			{'VYKEEN*.DDS'}
		}
	},{
	---	menu: UI background
		source = 'UI/background/',
		target = 'UI/FRONTEND/BACKGROUNDS/',
		names  = {
			{'*.DDS'}
		}
	}
}

local function BuildAddFilesTable()
	local T = {}
	for _,p in pairs(dds_sources) do
		for _,s in ipairs(p.names) do
			table.insert(T, {
				EXTERNAL_FILE_SOURCE = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/'..p.source..s[1],
				FILE_DESTINATION	 = 'TEXTURES/'..(p.target..(s[2] or s[1])):upper(),
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE collate dds files.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	ADD_FILES			= BuildAddFilesTable()
}
