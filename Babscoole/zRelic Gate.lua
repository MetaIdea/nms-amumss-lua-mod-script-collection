NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zRelic Gate",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "zRelic Gate Allows you to summon a Relic Gate and warp to a random star system",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "SPACE_EGG"},
                {"Id", "BLACK_HOLE"},
                {"Id", "DERELICT_1"},
                {"Id", "DERELICT_2"},
                {"Id", "DERELICT_3"},
                {"Id", "ATLAS_BEACON1"},
                {"Id", "ATLAS_BEACON2"},
                {"Id", "RADIO_PILLAR"},
                {"Id", "WEIRD_METAL"},
                {"Id", "NEURON"},
                {"Id", "GAS_BRAIN"},
                {"Id", "SPINNER"},
                {"Id", "GYRO_BALL"},
                {"Id", "GEK_HEAD"},
                {"Id", "HORROR"},
                {"Id", "JELLYFISH"},
                {"Id", "RELAY_BEACON"},
                {"Id", "CRYSTAL"},
                {"Id", "CUBE_STATION"},
                {"Id", "ASTEROID_BEACON"},
                {"Id", "LINE_GEO"},
                {"Id", "SPACE_CLOCK"},
                {"Id", "BONES"},
                {"Id", "EYE"},
                {"Id", "PRISON"},
                {"Id", "SILOS"},
                {"Id", "TRADER_HAIL"},
                {"Id", "RELIC_HAIL"},
                {"Id", "REPAIR_HAIL"},
                {"Id", "ALIEN_SHIP1"},
                {"Id", "ALIEN_SHIP2"},
                {"Id", "ALIEN_SHIP3"},
                {"Id", "ALIEN_SHIP4"},
                {"Id", "ALIEN_SHIP5"},
                {"Id", "BIOSHIP3_POI"},
                {"Id", "ABAND_FREIGHTER"},
                {"Id", "ALIEN_SHIP_LOOP"},
                {"Id", "PIRATECLUE_HAIL"},
                {"Id", "BIO_FRIG"},
                {"Id", "SENT_SHIP"},
                {"Id", "S12_POI_SEED1"},
                {"Id", "S12_POI_SEED2"},
                {"Id", "S12_POI_SEED3"},
                {"Id", "S12_POI_SEED4"},
                {"Id", "BIGGS_GENERAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnChance", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RELIC_GATE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnChance",  "1.000000"},
                {"SpawnScale",   "2.000000"},
              }
            },
          }
        },
      }
    }
  }
}
