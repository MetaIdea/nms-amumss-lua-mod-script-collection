NMS_MOD_DEFINITION_CONTAINER = 
{
  MOD_FILENAME     = '+ TEST 05 tech pattern',
  MOD_AUTHOR       = 'lMonk',
  MODIFICATIONS    = 
  {
    {
      MBIN_CHANGE_TABLE= 
      {
        {
          MBIN_FILE_SOURCE  = 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
          MXML_CHANGE_TABLE = 
          {
            {
              SPECIAL_KEY_WORDS = 
              {
                {'Icon', 'TkTextureResource'},  -- testing multiple sections, to get feedback from DEBUG
              },
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', 'MECH_GUN'},  -- testing one section, to get feedback from DEBUG
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.-M.-C.-GUN'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.-SUB.-GUN'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.*SUB.*GUN'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '[%w_]-M[%w_]-C[%w_]-GUN'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.-A.-B.-C'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.-A.-B.-C%w'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.-A.-B.-C%d'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.-A.-B.-C.-'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', '.-SCAN'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

            {
              SPECIAL_KEY_WORDS = 
              {
                {'ID', 'SCAN.-'},
              },
              PRECEDING_KEY_WORDS = 'LinkColour',
              VALUE_CHANGE_TABLE  = {
                {'A', 0}, 
              },
            },

          },
        },
      },
    },
  },
}
