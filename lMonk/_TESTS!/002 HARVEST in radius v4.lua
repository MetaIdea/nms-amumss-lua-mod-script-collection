------------------------------------------------------------------
local base_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME     = '__TEST v4 harvest in radius.pak',
  MOD_AUTHOR      = 'lMonk',
  NMS_VERSION      = 3.92,
  MODIFICATIONS     = {{
  MBIN_CHANGE_TABLE  = {
  {
    MBIN_FILE_SOURCE  = {
      {
        base_parts..'BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN',
        base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',
        'REMOVE'
      }
    }
  },
  {
    MBIN_FILE_SOURCE  = base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',
    EXML_CHANGE_TABLE  = {
      {
        VALUE_CHANGE_TABLE   = {
          {'Radius',    24}
        }
      }
    }
  },
  {
  -- [WARNING] No action done! --> false warning: the copy is good
  -- BIOROOM.SCENE is added to the pak, even though I don't want it,
  -- I just wanted to copy the TkSceneNodeData for the ENTITY.
  -- if I do the SECTION_EDITs in here, they are applied to BIOROOM.SCENE
  -- but still aren't applied in WATERVALVE.SCENE
    MBIN_FILE_SOURCE  = base_parts..'BIOROOM.SCENE.MBIN',
    EXML_CHANGE_TABLE  = {
      {
        SPECIAL_KEY_WORDS  = {'Name', 'Interaction'},
        SECTION_SAVE_TO    = 'harvest_entity_scene_node',
      },
    }
  },
  {
    MBIN_FILE_SOURCE  = base_parts..'DECORATION/BAZAAR/WATERVALVE.SCENE.MBIN',
    EXML_CHANGE_TABLE  = {
      {
      -- [WARNING] SPECIAL_KEY_WORDS cannot be found.  Skipping this change!
      -- can't edit the section!
        SECTION_EDIT     = 'harvest_entity_scene_node',
        SPECIAL_KEY_WORDS  = {'Name', 'Interaction'},
        SECTION_ACTIVE    = 1,
        VALUE_CHANGE_TABLE   = {
          {'TransY',    1},
        }
      },
      {
      -- same... cannot be found.
        SECTION_EDIT     = 'harvest_entity_scene_node',
        SPECIAL_KEY_WORDS  = {'Name', 'Interaction', 'Name', 'RADIUS'},
        VALUE_CHANGE_TABLE   = {
          {'Value',    1},
        }
      },
      {
      -- same... cannot be found.
        SECTION_EDIT     = 'harvest_entity_scene_node',
        SPECIAL_KEY_WORDS  = {'Name', 'Interaction', 'Name', 'ATTACHMENT'},
        VALUE_CHANGE_TABLE   = {
          {'Value', base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN'},
        }
      },
      {
      -- ADD action is performed ... but without my changes.
        PRECEDING_KEY_WORDS  = 'Children',
        SECTION_ACTIVE    = 1,
        SECTION_ADD_NAMED   = 'harvest_entity_scene_node',
      }
    }
  }
}}}}
