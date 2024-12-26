-------------------------------------------------------------------------------
---	!! WORK IN PROGESS !! WORK IN PROGESS !! WORK IN PROGESS !!
---	Construct alien puzzle dialog entries (VERSION: 0.0.1) ... by lMonk
---	* Requires _lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

-- mutlitool upgrade station >> 1 install slot / 2 purchase new slot / 3 upgrade class
-- UI_WEAPON_UPGRADE_LABEL >> UI_WEAP_UPGRADE_INV_OPTB / UI_WEAP_UPGRADE_INV_OPTA ?? UI_WEAPON_UPGRADE_OPT_A / UI_SALVAGE_CLASS_OPT

-- UI_SALVAGE_MT_TITLE >> UI_COST_SALVAGE_WORTH
-- multi-tool decommissioning >> 1 claim scrap worth ## units

function PuzzleOption(option)
---	!! WORK IN PROGESS !!
	return {
		meta = {'value','GcAlienPuzzleOption.xml'},
		Name					= option.name,
		Text					= option.text,
		IsAlien					= option.isalien,				-- b
		Cost					= option.cost,					-- s
		Rewards					= StringArray(option.rewards, 'Rewards'),
		Mood = {
			meta = {'Mood','GcAlienMood.xml'},
			Mood				= option.mood,					-- Enum
		},
		Prop = {
			meta = {'Prop','GcNPCPropType.xml'},
			NPCProp				= option.prop or 'DontCare',	-- Enum
		},
		KeepOpen				= option.keepopen,				-- b
		DisplayCost				= true,
		MarkInteractionComplete	= option.markcomplete,			-- b
		NextInteraction			= option.next,
		SelectedOnBackOut		= option.selectedonback,		-- b
	}
end

function PuzzleEntry(diag)
---	!! WORK IN PROGESS !!
	return {
		meta = {'value','GcAlienPuzzleEntry.xml'},
		Id 							= diag.id,
		ProgressionIndex 			= diag.index or -1,
		MinProgressionForSelection	= diag.minprogress or nil,
		Race = {
			meta = {'Race','GcAlienRace.xml'},
			AlienRace				= diag.race or 'None',		-- Enum
		},
		Type = {
			meta = {'Type','GcInteractionType.xml'},
			InteractionType			= diag.itype,				-- Enum
		},
		Category = {
			meta = {'Category','GcAlienPuzzleCategory.xml'},
			AlienPuzzleCategory		= diag.category or 'Default',-- Enum
		},
		Title						= diag.title,				-- s
		Text						= diag.text,				-- s
		TextAlien					= diag.textalien,			-- s
		TranslateAlienText			= diag.translatealien,		-- b
		ProgressiveDialogue			= diag.progressive,			-- b
		RequiresScanEvent			= diag.scanevent,			-- s
		Mood = {
			meta = {'Mood','GcAlienMood.xml'},
			Mood					= diag.mood or 'Neutral',	-- Enum
		},
		Prop = {
			meta = {'Prop','GcNPCPropType.xml'},
			NPCProp					= diag.prop or 'DontCare',	-- Enum
		},
		CustomFreighterTextIndex	= -1,
		UseTitleOverrideInLabel		= true,
		Options						= (
			function()
				local opts = {meta = {'name','Options'}}
				for _, option in ipairs(diag.options) do
					opts[#opts+1] = PuzzleOption(option)
				end
				return opts
			end
		)()
	}
end
