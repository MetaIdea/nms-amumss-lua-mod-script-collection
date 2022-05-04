-------------------------------
local desc = [[
  Organize texture replacers
]]-----------------------------

local File_Mover = {
	{
	-- blank replacers
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Blanks/',
		target = 'TEXTURES/',
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
		}
	},{
	-- clean non-chipped fighter paint
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Ship/FighterClean/',
		target = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		names  = {
			{'HQTRIM_METAL.*.DDS'}
		}
	},{
	-- Dimmer sailship sail
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Ship/Sail/',
		target = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SAILS/',
		names  = {
			{'HEXPROC.*.DDS'}
		}
	},{
	-- white hardframe mech & carbon-fiber laylaps
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		target = 'TEXTURES/COMMON/ROBOTS/',
		names  = {
			{'*.DDS'}
		}
	},{
	-- planetary clouds replacement
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Clouds/',
		target = 'TEXTURES/SPACE/ATMOSPHERE/',
		names  = {
			{'ATMOSPHERE.DDS'}
		}
	},{
	-- discovered creature HUD icon (requires change in SCANNERICONS.MBIN)
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/UI/CreatureDiscovered/',
		target = 'TEXTURES/UI/HUD/',
		names  = {
			{'CREATURE.DISCOVERED.DDS'}
		}
	},{
	-- multitool ammo display screen
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/UI/MultitoolScreen/',
		target = 'TEXTURES/UI/WEAPON/',
		names  = {
			{'*.DDS'}
		}
	},{
	-- dark purple trail (requires change in HOTDARKTRAIL.MATERIAL.MBIN)
	-- remove sailship wing blinkers; alt warp textures
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Effects/',
		target = 'TEXTURES/EFFECTS/',
		names  = {
			{'Trails/BLUEDARKER1.DDS',	'TRAILS/HOT/BLUEDARKER1.DDS'},
			{'Light/*.DDS',				'LIGHTS/*.DDS'},
			{'Warp/*.DDS',				'WARP/*.DDS'},
		}
	},{
	-- basebuilding Number decals 
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/BaseNumberDecals/',
		target = 'TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/DECALS/',
		names  = {
			{'BASEBUILDINGDECALS_NUMBERS.A?.DDS'},
			{'BASEBUILDINGDECALS_NUMBERS.A?.MASKS.DDS'}
		}
	},{
	-- Menu icons for the base part number decals
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/BaseNumberDecals/icons/',
		target = 'TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/',
		names  = {
			{'DECAL.NUM?.DDS'}
		}
	},{
	-- black carbon crystals
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/BlackCarbon/',
		target = 'TEXTURES/PLANETS/BIOMES/',
		names  = {
			{'*.RED.DDS',			'COMMON/CRYSTALS/*.RED.DDS'},
			{'MINERAL2.BASE.DDS',	'CRYSTAL/LARGEPROP/MINERAL2.BASE.DDS'}
		}
	},{
	-- icons for black carbon crystals
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/BlackCarbon/icons/',
		target = 'TEXTURES/UI/HUD/ICONS/PICKUPS/',
		names  = {
			{'PICKUP.*.DDS'}
		}
	},{
	-- DECALS: space station front .. REQUIRES rebuilding of the relevant TEXTURES.MBIN
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/decals/station/',
		target = 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		names  = {
			{'LETTERING.BASE.LETTER?.DDS'},
			{'NUMBER.BASE.C?.DDS'}
		}
	},{
	-- DECALS: ship lettering .. REQUIRES rebuilding of the relevant TEXTURES.MBIN
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/decals/ship/lettering/',
		target = 'TEXTURES/COMMON/DECALS/LETTERING/',
		names  = {
			{'LETTERING.BASE.LT?.DDS'}
		}
	},{
	-- DECALS: ship logo .. REQUIRES rebuilding of the relevant TEXTURES.MBIN
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/decals/ship/logo/',
		target = 'TEXTURES/COMMON/DECALS/LOGO/',
		names  = {
			{'LOGO.BASE.L*.DDS'}
		}
	},{
	-- DECALS: ship number .. REQUIRES rebuilding of the relevant TEXTURES.MBIN
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/decals/ship/number/',
		target = 'TEXTURES/COMMON/DECALS/NUMBER/',
		names  = {
			{'NUMBER.BASE.*.DDS'}
		}
	},{
	-- DECALS: ship rectangle .. REQUIRES rebuilding of the relevant TEXTURES.MBIN
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/decals/ship/rectangle/',
		target = 'TEXTURES/COMMON/DECALS/RECTANGLE/',
		names  = {
			{'RECTANGLE.BASE.R*.DDS'}
		}
	},{
	-- DECALS: ship smallsign .. REQUIRES rebuilding of the relevant TEXTURES.MBIN
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/decals/ship/smallsign/',
		target = 'TEXTURES/COMMON/DECALS/SMALLSIGN/',
		names  = {
			{'SMALLSIGN.BASE.S?.DDS'}
		}
	},{
	-- MENU ICONS: products
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Product/',
		target = 'TEXTURES/UI/FRONTEND/ICONS/',
		names  = {
			{'PRODUCTS/PRODUCT.METALLIC.?.DDS'},
			{'TECHNOLOGY/*.DDS'},
			{'U4PRODUCTS/PRODUCT.*.DDS'},
			{'U4SUBSTANCES/SUBSTANCE.*.DDS'},
			{'UPDATE3/*.DDS'},			
			-- REQUIRES changes in NMS_REALITY_GCPRODUCTTABLE.MBIN)
			{'KETAROS/PRODUCT.*.DDS'},
			-- used for the quickmenu
			{'BYTEBEATINTERACTION.DDS', 'BUILDABLE/BUILDABLE.BYTEBEAT.DDS'},
		}
	},{
	-- ICONS: quickmenu
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Quickmenu/',
		target = 'TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/',
		names  = {
			{'*.DDS'},
			-- THIRDPERSONSHIP is copied twice
			{'THIRDPERSONSHIP.DDS', 'THIRDPERSONCHARACTER.DDS'},
		}
	},{
	--  ICONS: hud
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Hud/',
		target = 'TEXTURES/UI/HUD/ICONS/',
		names  = {
			{'PLANETPOLE*.DDS'},
			{'BLACKHOLE.DDS', 'MISSIONS/MISSION.BLACKHOLE.DDS'}
		}
	},{
	-- ICONS: transparent player hud
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Player/',
		target = 'TEXTURES/UI/HUD/ICONS/PLAYER/',
		names  = {
			{'*.DDS'}
		}
	},
}

local function BuildAddFilesTable()
	local T = {}
	for _,p in pairs(File_Mover) do
		for _,s in ipairs(p.names) do
			table.insert(T, {
				EXTERNAL_FILE_SOURCE = p.source..s[1],
				FILE_DESTINATION	 = p.target..(s[2] or s[1]),
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE replacers.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {},
	ADD_FILES			= BuildAddFilesTable()
}
