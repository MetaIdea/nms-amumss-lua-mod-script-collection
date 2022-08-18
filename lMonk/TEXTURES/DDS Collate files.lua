-------------------------------
local desc = [[
  Organize texture replacers
]]-----------------------------

local file_mover = {
	{
	---	blank replacers
		source = 'Blanks/',
		target = '',
		names  = {
			{'*.DDS'},
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
	---	remove sailship wing blinkers; alt warp textures
		source = 'Effects/',
		target = 'EFFECTS/',
		names  = {
			{'Trails/BLUEDARKER1.DDS',	'TRAILS/HOT/BLUEDARKER1.DDS'},
			{'Light/*.DDS',				'LIGHTS/*.DDS'},
		}
	},{
	---	clean glass; freighter bridge windows
		source = 'Building/',
		target = 'PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/',
		names  = {
			{'GLASS*.DDS'}
		}
	},{
	---	basebuilding Number decals
		source = 'BaseNumberDecals/',
		target = 'PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/DECALS/',
		names  = {
			{'BASEBUILDINGDECALS_NUMBERS.A?.DDS'},
			{'BASEBUILDINGDECALS_NUMBERS.A?.MASKS.DDS'}
		}
	},{
	---	Menu icons for the base part number decals
		source = 'BaseNumberDecals/icons/',
		target = 'UI/FRONTEND/ICONS/BUILDABLE/',
		names  = {
			{'DECAL.NUM?.DDS'}
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
	---	icons for black carbon crystals
		source = 'BlackCarbon/icons/',
		target = 'UI/HUD/ICONS/PICKUPS/',
		names  = {
			{'PICKUP.*.DDS'}
		}
	},{
	---	MENU ICONS: products
		source = 'Icons/Product/',
		target = 'UI/FRONTEND/ICONS/',
		names  = {
			{'PRODUCTS/PRODUCT.*.DDS'},
			{'TECHNOLOGY/*.DDS'},
			-- {'TECHNOLOGY/BIO/*.DDS'},
			{'U4PRODUCTS/PRODUCT.*.DDS'},
			{'U4SUBSTANCES/SUBSTANCE.*.DDS'},
			{'UPDATE3/*.DDS'},
			-- REQUIRES changes in NMS_REALITY_GCPRODUCTTABLE.MBIN)
			{'KETAROS/PRODUCT.*.DDS'},
			-- used for the quickmenu
			{'BYTEBEATINTERACTION.DDS', 'BUILDABLE/BUILDABLE.BYTEBEAT.DDS'},
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
	---	discovered creature HUD icon (requires change in SCANNERICONS.MBIN)
		source = 'Icons/Hud/',
		target = 'UI/HUD/',
		names  = {
			{'CREATURE.DISCOVERED.DDS'}
		}
	},{
	---	 ICONS: hud
		source = 'Icons/Hud/',
		target = 'UI/HUD/ICONS/',
		names  = {
			{'PICKUPS/*.DDS'},
			{'U4PICKUPS/*.DDS'},
			{'PLANETPOLE*.DDS'},
			{'BLACKHOLE.DDS', 'MISSIONS/MISSION.BLACKHOLE.DDS'}
		}
	},{
	---	ICONS: transparent player hud
		source = 'Icons/Player/',
		target = 'UI/HUD/ICONS/PLAYER/',
		names  = {
			{'*.DDS'}
		}
	},
}

local function BuildAddFilesTable()
	local T = {}
	for _,p in pairs(file_mover) do
		for _,s in ipairs(p.names) do
			table.insert(T, {
				EXTERNAL_FILE_SOURCE = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/'..p.source..s[1],
				FILE_DESTINATION	 = 'TEXTURES/'..p.target..(s[2] or s[1]),
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE collate dds files.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {},
	ADD_FILES			= BuildAddFilesTable()
}
