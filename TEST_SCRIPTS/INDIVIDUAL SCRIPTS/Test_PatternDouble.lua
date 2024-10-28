NMS_MOD_DEFINITION_CONTAINER = 
{
  MOD_FILENAME       = 'Test_DoublePattern.pak',
  MOD_AUTHOR         = 'lMonk',
  LUA_AUTHOR         = "Wbertro testing double lua Pattern",
  NMS_VERSION        = '5.05',
  MODIFICATIONS      = 
  {
    {
      MBIN_CHANGE_TABLE  = 
      {
        {
          MBIN_FILE_SOURCE  = 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
          EXML_CHANGE_TABLE = 
          {
            { 
              COMMENT = [[OK, 5 matches]],
              SPECIAL_KEY_WORDS  = {'PlanetEngine', '.-_EASY', 'Gun', 'AI.-'},
              VALUE_CHANGE_TABLE = 
              {
                {'Health', '@ + 50000'},
              },
            },
            
            {
              COMMENT = [[OK, 3 matches]],
              SPECIAL_KEY_WORDS  = {"Id",'PIRATE_.-', 'PlanetEngine', '.-_EASY', 'Gun', 'AI.-'},
              VALUE_CHANGE_TABLE = 
              {
                {'Health', '@ + 50000'},
              },
            },
            
            {
              COMMENT = [[OK, 24 matches]],
              PKW = {"Icon", ".-Handle"},
              VALUE_CHANGE_TABLE = 
              {
                {'ResourceID', '88888'},
              },
            },
            
            {
              COMMENT = [[OK, 3 matches]],
              SPECIAL_KEY_WORDS  = {"Id",'PIRATE_.-', 'PlanetEngine', '.-_EASY', 'Gun', 'AI.-'},
              PKW = {"Icon", ".-Handle"},
              VALUE_CHANGE_TABLE = 
              {
                {'ResourceID', '99999'},
              },
            },
            
          },
        },
        
        {
          MBIN_FILE_SOURCE  = 'GCGAMEPLAYGLOBALS.GLOBAL.MBIN',
          EXML_CHANGE_TABLE = 
          {
            {
              COMMENT = [[OK, 5 matches]],
              PRECEDING_FIRST     = true,
              PRECEDING_KEY_WORDS = 'BaseBuildingError.-',
              SPECIAL_KEY_WORDS   = {'Id', 'ERROR.-'},
              VALUE_CHANGE_TABLE  = 
              {
                {'WaveOffset',    1},
              },
            },

            {
              COMMENT = [[OK, 5 matches]], -- missing info
              SPECIAL_KEY_WORDS   = {'Id', 'ERROR.-'},
              PRECEDING_KEY_WORDS = 'BaseBuildingError.-',
              VALUE_CHANGE_TABLE  = 
              {
                {'WaveOffset',    1},
              },
            },
          },
        },
        
        {
          MBIN_FILE_SOURCE  = 'METADATA/REALITY/DEFAULTREALITY.MBIN',
          EXML_CHANGE_TABLE = {
            {
              COMMENT = [[OK, 6 matches]],
              SPECIAL_KEY_WORDS   = {'Lone.-', 'GcTradeData.xml'},
              PRECEDING_KEY_WORDS = '.-ProductAvailable',
              VALUE_CHANGE_TABLE  = {
                {'Wealthy', '@ + 1'},
              },
            },
          },
        },
      
      },
    },
  }, --51 global replacements
}