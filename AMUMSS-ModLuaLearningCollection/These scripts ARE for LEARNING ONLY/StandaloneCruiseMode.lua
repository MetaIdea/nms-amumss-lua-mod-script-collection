NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_AUTHOR"] = "ChristianWidjaya",
  ["MOD_DESCRIPTION"] = [[Standalone CruiseMode
Basically the cruise module from https://www.nexusmods.com/nomanssky/mods/1608
Since it's probably not gonna be updated and already works well,
it could have used to be as learning script, or even compiled to a new script.]],
  ["NMS_VERSION"] = "261",
  ["MOD_FILENAME"] = "___ChristianWidjaya_CruiseModeStandalone.pak",
  ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WarpNexusRotation","0",},
                {"WarpNexusPitch","0",},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine",},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedForce","0",},
                {"MaxSpeed","250",},
                {"BoostMaxSpeed","350",},
                {"OverspeedBrake","0",},
                {"ReverseBrake","4",},
                {"Falloff","0",},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine",},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeed","0.01",},
                {"MinSpeedForce","0",},
                {"MaxSpeed","250",},
                {"BoostMaxSpeed","350",},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine",},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedForce","0",},
                {"MaxSpeed","250",},
                {"BoostMaxSpeed","350",},
                {"OverspeedBrake","0",},
                {"ReverseBrake","4",},
                {"Falloff","0",},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine",},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeed","0.01",},
                {"MinSpeedForce","0",},
                {"MaxSpeed","250",},
                {"BoostMaxSpeed","350",},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine",},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedForce","0",},
                {"MaxSpeed","250",},
                {"BoostMaxSpeed","350",},
                {"OverspeedBrake","0",},
                {"ReverseBrake","4",},
                {"Falloff","0",},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine",},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeed","0.01",},
                {"MinSpeedForce","0",},
                {"MaxSpeed","250",},
                {"BoostMaxSpeed","350",},
              },
            },
          },
        },
      },
    },
  },
}