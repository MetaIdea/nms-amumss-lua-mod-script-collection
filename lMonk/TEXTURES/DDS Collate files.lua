-------------------------------
local mod_desc = [[
  Collate texture replacements
]]-----------------------------

local texture_collection = {
	{--	blank replacers
		source = 'Blanks/',
		target = '',
		names  = {
		--	binoculars screen filters
			{s='BLANK.FILTER.DDS',			t='LUT/FILTERS/BINOCULARS.DDS'},
			{s='BLANK.FILTER.DDS',			t='LUT/FILTERS/SURVEYING1.DDS'},
			{s='BLANK.FILTER.DDS',			t='LUT/FILTERS/MISSIONSURVEY.DDS'},
		--	direction marker at screen edge
			{s='BLANK.BC7.128.DDS',			t='UI/HUD/ARROW.MINI.DDS'},
		--	binoculars HUD background
			{s='BLANK.BC7.64.DDS',			t='UI/HUD/BINOCULARS.DDS'},
			{s='BLANK.BC7.64.DDS',			t='UI/HUD/BINOCULARMISSION.DDS'},
			{s='BLANK.BC7.64.DDS',			t='UI/HUD/SURVEYING.DDS'},
		--	laser mid part & target crosshairs
			{s='BLANK.BC7.64.DDS',			t='UI/HUD/CROSSHAIRLAZERMIDDLE.DDS'},
			{s='BLANK.BC7.64.DDS',			t='UI/HUD/CROSSHAIRS/LARGETARGET.DDS'},
			{s='BLANK.BC7.64.DDS',			t='UI/HUD/CROSSHAIRTARGET.DDS'},
		--	inv tab bulletpoint
			{s='BLANK.BC7.32.DDS',			t='UI/FONTS/BULLETPOINT.DDS'},
		--	'new item' notification in menus
			{s='BLANK.BC7.32.DDS',			t='UI/FRONTEND/COMPONENTS/NEWEXCLAMATION.DDS'},
		--	just the blank
			{s='BLANK.BC7.64.DDS'}
		}
	},
	{--	ships
		source = 'Ship/',
		target = 'COMMON/',
		names  = {
		--	ship fabricator additions
			{s='Embossed/Ship_2048/*.DDS',	t='Spacecraft/Fighters/Shared/*.DDS'},
			{s='Embossed/Scientific/*.DDS', t='Spacecraft/Scientific/Shared/*.DDS'},
		--	clean non-chipped fighter paint & white ship lights
			{s='FighterClean/*.DDS', 		t='Spacecraft/Fighters/Shared/*.DDS'},
		--	dropship vulture lights
			{s='Dropship/*.DDS', 			t='Spacecraft/Dropship/Shared/*.DDS'},
		--	B & W racer
			{s='Racer/WRACER*.DDS',			t='Spacecraft/Fighters/WRACER*.DDS'},
		--	blue theme speeder (and bit more reflective)
			{s='Speeder/VRSPEEDER*.DDS',	t='Spacecraft/Fighters/VRSPEEDER*.DDS'},
		--	black cockpit interior
			{s='Interior/*.DDS',			t='Spacecraft/Shared/Cockpitinteriors/*.DDS'},
		--	sentinel ship blue lights
			{s='Sentinel/LIGHT*.DDS',		t='Robots/Shared/LIGHT*.DDS'},
		}
	},
	{--	vehicle buggy/bike headlights
		source = 'Vehicle/',
		target = 'COMMON/VEHICLES/BUGGY/',
		names  = {
			{s='BUGGYLIGHTS.1.DDS'}
		}
	},
	{--	carbon-fiber laylaps, sentinel ship guns
		source = 'FriendlyRobot/',
		target = 'COMMON/ROBOTS/',
		names  = {
			{s='FRIENDLYDRONE.DDS'}
		}
	},
	{--	planetary clouds replacement
		source = 'Clouds/',
		target = 'SPACE/ATMOSPHERE/',
		names  = {
			{s='ATMOSPHERE03.DDS'}
		}
	},
	{--	multitool display screen & glow parts
		source = 'Weapon/',
		target = 'UI/WEAPON/',
		names  = {
			{s='*SCREEN.DDS'}
		}
	},
	{--	multitool dark pristine
		source = 'Weapon/',
		target = 'COMMON/WEAPONS/MULTITOOL/',
		names  = {
			{s='MULTITOOLTRIM.*.DDS'}
		}
	},
	{--	effects
	--	wordstone white beam fix
	--	dark blue trail (requires change in HOTDARKTRAIL.MATERIAL.MBIN)
	--	blue infraknife shot (requires change in SHIPMINIGUNPROJECTILEGRADIENT.MATERIAL.MBIN)
	--	remove sailship wing blinkers; alt warp textures
	--	Fix ship engine jet outer circle
		source = 'Effects/',
		target = 'EFFECTS/',
		names  = {
			{s='Beam/*.DDS'},
			{s='Light/*.DDS'},
			{s='Particles/*.DDS'},
			{s='Ship/*.DDS'},
			{s='Trails/*.DDS',				t='TRAILS/HOT/*.DDS'}
		}
	},
	{--	black carbon crystals
		source = 'BlackCarbon/',
		target = 'PLANETS/BIOMES/',
		names  = {
			{s='*.RED.DDS',					t='Common/Crystals/*.RED.DDS'},
			{s='MINERAL2.BASE.DDS',			t='Crystal/Largeprop/MINERAL2.BASE.DDS'}
		}
	},
	{--	Stations: crane, atlas red beam
		source = 'Building/',
		target = 'SPACE/',
		names  = {
			{s='ATLASSTATION/*.DDS'},
			{s='PirateStation/*.DDS',		t='Spacestation/PIRATES/*.DDS'}
		}
	},
	{--	building parts: cleaner glass panes, decal replacers
		source = 'Building/',
		target = 'PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/',
		names  = {
			{s='Glass/*.DDS',				t='*.DDS'},
			{s='Decals/*.DDS',				t='Decals/*.DDS'}
		}
	},
	{--	ICONS: FRONTEND general
		source = 'Icons/',
		target = 'UI/FRONTEND/ICONS/',
		names  = {
		--	personal-use (separated from published)
			{s='Personals/PRODUCT.*.DDS',	t='Products/PRODUCT.*.DDS'},
			{s='Personals/BIOTECH.*.DDS',	t='Technology/Bio/BIOTECH.*.DDS'},
		--	base parts number decals
			{s='Buildable/DECAL.NUM?.DDS'},
		--	for the quickmenu bytebeat
			{s='Buildable/BUILDABLE.BYTEBEAT.DDS'},
		--	popup menu categories
			{s='Categories/INVCAT.*.DDS'},
		--	missions on/off
			{s='Missions/mission.*.DDS'},
		--	products & substances
			{s='Products/PRODUCT.*.DDS'},
			{s='CookingProducts/PRODUCT.*.DDS'},
			{s='ShipIcons/*.DDS'},
			{s='u4Products/PRODUCT.*.DDS'},
			{s='U4Substances/SUBSTANCE.*.DDS'},
			{s='Update3/*.DDS'},
		-- technology
			{s='Technology/*.DDS'},
			{s='Technology/Bio/*.DDS'},
			{s='Technology/Vehicle/*.DDS'},
		}
	},
	{--	ICONS: HUD translucent icons
		source = 'Icons/Hud/',
		target = 'UI/HUD/ICONS/',
		names  = {
			{s='Building/*.DDS',			t='Buildings/*.DDS'},
			{s='Pickups/*.DDS',				t='Pickups/*.DDS'},
			{s='U4Pickups/*.DDS',			t='U4pickups/*.DDS'},
			{s='Player/*.DDS',				t='Player/*.DDS'},
			{s='BLACKHOLE.DDS',				t='Missions/Mission.BLACKHOLE.DDS'},
			{s='PLANETPOLE*.DDS'},
			{s='CREATURE.*.DDS'}
		}
	},
	{--	ICONS: quickmenu
		source = 'Icons/Quickmenu/',
		target = 'UI/FRONTEND/ICONS/QUICKMENU/',
		names  = {
			{s='*.DDS'},
			-- THIRDPERSONSHIP is copied twice
			{s='THIRDPERSONSHIP.DDS', 		t='THIRDPERSONCHARACTER.DDS'},
		}
	},
	{--	menu: galactic map part
		source = 'UI/galactic/',
		target = 'UI/FRONTEND/GALACTICMAP/',
		names  = {
			{s='VISITEDSYSTEMS.DDS'}
		}
	},
	{--	menu: UI background
		source = 'UI/background/',
		target = 'UI/FRONTEND/BACKGROUNDS/',
		names  = {
			{s='*.DDS'}
		}
	},
	{--	player: vkyeen gloves
		source = 'Player/',
		target = 'COMMON/PLAYER/PLAYERCHARACTER/',
		names  = {
			{s='VYKEEN*.DDS'}
		}
	},
	{--	player: builder cloth padding
		source = 'Player/',
		target = 'COMMON/ROBOTS/CLOTH/CANVAS/',
		names  = {
			{s='CLOTHTILEABLEPAD*.DDS'}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE collate dds files.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= (
		function()
			local T = {}
			for _,dds in pairs(texture_collection) do
				for _,dfn in ipairs(dds.names) do
					T[#T+1] = {
						EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/'..dds.source..dfn.s,
						FILE_DESTINATION	 = 'TEXTURES/'..(dds.target..(dfn.t or dfn.s)):upper(),
					}
				end
			end
			return T
		end
	)()
}
