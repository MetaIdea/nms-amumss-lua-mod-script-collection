------------------------------------------------------------------
local base_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'
local Test_unused_variable = true

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME     = '__TEST v4 harvest in radius.pak',
  MOD_AUTHOR      = 'lMonk+Wbertro',
  NMS_VERSION      = "4+",
  ["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE",
  MODIFICATIONS     = {{
    MBIN_CHANGE_TABLE  = {
      {
        MBIN_FILE_SOURCE  = {
          {
            base_parts..'BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN',
            base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',
            'REMOVE'
          },
        },
      },
      
      {
        MBIN_FILE_SOURCE  = base_parts..'BIOROOM.SCENE.MBIN',
        MBIN_FS_DISCARD   = "TRUE",
        EXML_CHANGE_TABLE  = {
          {
            COMMENT = [[#1: SKW finds section, KEEP saves it to file under name SAVE_TO harvest_entity_scene_node.xml
            ]],
            SPECIAL_KEY_WORDS  = {'Name', 'Interaction'},
            SEC_SAVE_TO    = 'harvest_entity_scene_node',
            SEC_KEEP       = "TRUE",
          },

          {
            COMMENT = [[#2: EDIT, here, finds in internal list 'harvest_entity_scene_node' (would have looked to disk if missing)
            SKW finds sections, ACTIVE keeps only 1st one, VCT does change in memory
            UPDATE tells to save back to disk AFTER changes
            ]],
            SEC_EDIT     = 'harvest_entity_scene_node',
            SPECIAL_KEY_WORDS  = {'Transform', 'TkTransformData.xml'},
            SECTION_ACTIVE    = 1,
            VALUE_CHANGE_TABLE   = {
              {'TransY', 1, "TransY"}, -- saving current value to variable 'TransY' for test only
            },
          },
          
          {
            COMMENT = [[#3: EDIT finds in internal list 'harvest_entity_scene_node' 
            SKW finds sections, VCT does change in memory
            NOT saved to disk
            ]],
            SEC_EDIT     = 'harvest_entity_scene_node',
            SPECIAL_KEY_WORDS  = {'Name', 'RADIUS'},
            VALUE_CHANGE_TABLE   = {
              {'Value', 1, "Value"}, -- saving current value to variable 'Value' for test only
            },
          },
          
          {
            COMMENT = [[#4: EDIT finds in internal list 'harvest_entity_scene_node'
            SAVE_TO creates a new internal entry called 'harvest_entity_scene_node_CHANGED'
            KEEP saves 'harvest_entity_scene_node_CHANGED' to disk
            ]],
            SEC_EDIT     = 'harvest_entity_scene_node',
            SEC_SAVE_TO    = 'harvest_entity_scene_node_CHANGED', -- to save under a different name
            SEC_KEEP       = "TRUE", --to save to disk the current section after changes to file
          },
          
          {
            COMMENT = [[#5: EDIT finds in internal list 'harvest_entity_scene_node_CHANGED'
            KEEP saves 'harvest_entity_scene_node_CHANGED' to disk AFTER change
            ]],
            SEC_EDIT     = 'harvest_entity_scene_node_CHANGED',
            SEC_KEEP       = "TRUE", --to save to disk the current section after changes to file
            --SEC_SAVE_TO    = 'harvest_entity_scene_node_CHANGED_2', -- could also to save under a different name
            SPECIAL_KEY_WORDS  = {'Name', 'ATTACHMENT'},
            VALUE_CHANGE_TABLE   = {
              {'Value', base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',"Value_Interaction"}, -- saving current value to variable 'Value_Interaction' for test only
            },
          },
          
          {
            COMMENT = [[#6: EDIT does NOT find 'harvest_NOTFOUND'
            KEEP saves 'harvest_NOTFOUND' to disk AFTER change
            ]],
            SEC_EDIT     = 'harvest_NOTFOUND',
            SEC_KEEP       = "TRUE", --to save to disk the current section after changes to file
            --SEC_SAVE_TO    = 'harvest_NOTFOUND_2', -- could also to save under a different name
            SPECIAL_KEY_WORDS  = {'Name', 'ATTACHMENT'},
            VALUE_CHANGE_TABLE   = {
              {'Value', base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',"Value_Interaction"}, -- saving current value to variable 'Value_Interaction' for test only
            },
          },
          
        },
      },
      
      {
        MBIN_FILE_SOURCE  = base_parts..'DECORATION/BAZAAR/WATERVALVE.SCENE.MBIN',
        EXML_CHANGE_TABLE  = {
          {
          -- ADD action is performed ... but without my changes.
            PRECEDING_KEY_WORDS  = 'Children',
            SECTION_ACTIVE    = 1,
            SEC_ADD_NAMED   = 'harvest_entity_scene_node_CHANGED',
          },
        },
      },

}}}} -- 7 global replacements
