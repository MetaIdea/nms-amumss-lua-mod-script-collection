Author = "Syzzle"
ModName = "Better Pulse Scan and Ship Scan - No Sodium or Oxygen"
GameVersion = "4.52"
--ModVersion = "v1.2"
Description = "Rare resources and other things now show up when you use Pulse Scan with Multitool or Exocraft, increased range and minimum amount of Buildings you can find with Ship Scan."

-- Thanks to people on Modding Discord and lyravega for a lot of ideas and guidance.

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        {
          ["MBIN_FILE_SOURCE"] 	= 
          {
            "MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS/ENTITIES/LAVAGEMS.ENTITY.MBIN",                                                     -- 'Organic' Rock - MORDITE (RARE 2)
            "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE/ENTITIES/WORDSTONE.ENTITY.MBIN",                                  -- Wordstones
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/CORRUPTEDDRONEPILEPARTS/CORRUPTEDDRONECORE/ENTITIES/CORRUPTDRONECOLLECT.ENTITY.MBIN",     -- Alluring Specimen (RARE 3)
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FLOATINGPLANTS/ENTITIES/_FLOAT_1.ENTITY.MBIN",                                       -- Mutant Plant - SULPHURINE (RARE 1)
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/PROXIMITYPLANT/ENTITIES/LIGHTUP.ENTITY.MBIN",                                        -- Gravitino Ball (RARE 2)
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/ROLLINGPLANT/ENTITIES/ROLLINGPROP.ENTITY.MBIN",                                      -- Curious Deposits (Runaway Mould) (RARE 3)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CAVE/EGGRESOURCE/ENTITIES/_EGG_1.ENTITY.MBIN",                                           -- Albumen Pearl
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/GEMCRYSTALS/ENTITIES/GEMCRYSTAL.ENTITY.MBIN",                                   -- 'Organic' Rock - MORDITE (RARE 2)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/METEORROCK/ENTITIES/METEORROCK.ENTITY.MBIN",                                    -- 'Organic' Rock - GLOWING MINERAL (RARE 2)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/CRYSTALALTAR/ENTITIES/CRYSTALALTAR.ENTITY.MBIN",                                  -- Ancient Data Structure (RARE 1)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/FIENDEGG/ENTITIES/FIENDEGG.ENTITY.MBIN",                                          -- Biological Horror Egg
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/GROUNDRESOURCE/ENTITIES/_GEMSTONE_1.ENTITY.MBIN",                                 -- 'Organic' Rock - CHLORINE (RARE 22)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/METALFORMATION/ENTITIES/METALFORMATION.ENTITY.MBIN",                              -- Metal 'Fingers' - GOLD AND URANIUM (RARE 3)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG/ENTITIES/SPOREBAG.ENTITY.MBIN",                                          -- Mutant Plant - RADON (RARE 1)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS/ENTITIES/FLOATINGGASBAG.ENTITY.MBIN",                              -- Floating Crystal - GLOWING MINERAL (RARE 2)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/GASBAGPARTS/FLOATINGRESOURCE/ENTITIES/FLOATINGRESOURCE.ENTITY.MBIN",               -- Floating Crystal - DI-HYDROGEN (RARE 1)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/UNDERWATER/METALSPHERE/ENTITIES/METALSPHERE.ENTITY.MBIN",                                -- Submerged Relic - HADAL CORE (RARE 2)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/UNDERWATER/SEAURCHIN/ENTITIES/_URCHIN_1.ENTITY.MBIN",                                    -- Sac Venom -  SAC VENOM (RARE 3)
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SCRAPHEAP/ENTITIES/SCRAPCORE.ENTITY.MBIN",                                        -- Salvageable Scrap 
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/BONEPILE/ENTITIES/BONEPILE.ENTITY.MBIN",                                          -- Natural Burial Sites - ANCIENT BONES
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP/ENTITIES/UNDERGROUNDPROP.ENTITY.MBIN",                            -- Buried Technology Module - SALVAGED DATA
            "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/GRAVEINCAVE/GRAVEINCAVE/ENTITIES/GRAVEINCAVE.ENTITY.MBIN",                                  -- Unknown Grave
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/STORMCRYSTALS/ENTITIES/STORMCRYSTALS.ENTITY.MBIN"                               -- Storm Crystals - STORM CRYSTAL
          },
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"ScanRange",1000},
                {"ScannableType","Scanner"}
              }
            },	
          }
        },
        -- Remove Sodium and Oxygen from the Scan
        {
          ["MBIN_FILE_SOURCE"] 	= 
          {
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT/ENTITIES/COMMODITY.ENTITY.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT2/ENTITIES/COMPLANT_2.ENTITY.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT/ENTITIES/FUELPLANT.ENTITY.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT1/ENTITIES/FUELPLANT_1.ENTITY.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANTSTARTSCENE/ENTITIES/DATA.ENTITY.MBIN"
          },
          ["EXML_CHANGE_TABLE"] 	=
          {
            {
              ["VALUE_CHANGE_TABLE"]	=
              {
                {"ScannableType","None"}
              }
            },
          }
        },
        -- Ship Buildings Range
        {
          ["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] 	=
          {	
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxIconRange",10000},
                {"UnknownBuildingRange",10000},
                {"MinShipScanBuildings",4},
                {"MaxShipScanBuildings",10}
              }
            },
          }
        },
        -- Icon Merge Radius
        -- {
          -- ["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          -- ["EXML_CHANGE_TABLE"] 	= 
          -- {
            -- {
              -- ["VALUE_CHANGE_TABLE"]  =
              -- {
                -- {"ScannerIconsClumpRadius",25}, -- Original "10"
              -- }
            -- },	
          -- }
        -- },
        -- {
          -- ["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
          -- ["EXML_CHANGE_TABLE"] 	= 
          -- {
            -- {
              -- ["VALUE_CHANGE_TABLE"]  =
              -- {
                -- {"ScannableIconMergeAngle",15}, -- Original "9"
              -- }
            -- },	
          -- }
        -- },				
      }
    }
  }	
}