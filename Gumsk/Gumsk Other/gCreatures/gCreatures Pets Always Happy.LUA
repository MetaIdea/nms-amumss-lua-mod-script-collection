Author = "Gumsk"
ModName = "gCreatures Pets Always Happy"
ModNameSub = ""
GameVersion = "5.2.9.0"
ModVersion = "a"

--[[ Files Modified:
METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
  MOD_DESCRIPTION  = "Make pets almost always happy (might need to feed them or pet them rarely)",
  MOD_AUTHOR    = Author,
  NMS_VERSION    = GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
  MODIFICATIONS  = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = {
            "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN",
          },
          EXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"MoodIncreaseTime"},
              VALUE_CHANGE_TABLE = {
                {"Hungry",999999},
                {"Lonely",999999},
              }
            },
            {
              PRECEDING_KEY_WORDS = {"MoodValuesOnAdopt"},
              VALUE_CHANGE_TABLE = {
                {"Hungry",0},
                {"Lonely",0},
              }
            },
            {
              PRECEDING_KEY_WORDS = {"MoodValuesOnHatch"},
              VALUE_CHANGE_TABLE = {
                {"Hungry",0},
                {"Lonely",0},
              }
            },
          },
        },
      }
    }
  }
}