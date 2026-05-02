ModVersion = "_Xeno_Arena"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_MPD"..ModVersion,
["MOD_AUTHOR"]      = "Knightmare077",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "Spawns more debris and keeps it around longer.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\EXPLOSIONTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPLOSION"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="10.000000" />
          <Property name="Scale" value="3.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISC.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="7" />
          <Property name="Radius" value="10.000000" />
          <Property name="Scale" value="3.000000" />
          <Property name="Speed" value="1000.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SENTHIVEEXPL"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="65.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="1.200000" />
          <Property name="Speed" value="60.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="15.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="70.000000" />
          <Property name="AnglularSpeed" value="45.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEREXPL"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="18" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="25.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEREXPL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AddedLightIntensity",        "8000.000000"},
                {"ClampToGroundRayUpLength",   "0.000000"},
                {"ClampToGroundRayDownLength", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEREXPL"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Table" value="GcExplosionData" _id="FREIGHTEREXPL" _index="1">
      <Property name="Id" value="FREIGHTEREXPL" />
      <Property name="Model" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/EXPLOSION/FREIGHTERDESTRUCTION.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="EXPL_SHIPS_LARGE" />
      </Property>
      <Property name="AudioEndEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Debris">
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="16" />
          <Property name="Radius" value="35.000000" />
          <Property name="Scale" value="30.000000" />
          <Property name="Speed" value="800.000000" />
          <Property name="AnglularSpeed" value="45.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
      </Property>
      <Property name="Life" value="60.000000" />
      <Property name="Scale" value="1.000000" />
      <Property name="DistanceScale" value="0.000000" />
      <Property name="DistanceScaleMax" value="50.000000" />
      <Property name="CamShake" value="true" />
      <Property name="CamShakeSpaceScale" value="true" />
      <Property name="ShakeStrengthModifier" value="50.000000" />
      <Property name="ShakeId" value="FREIGHTERDESTRU" />
      <Property name="CamShakeCustomMaxDistance" value="0.000000" />
      <Property name="AllowTriggerActionOnDebris" value="false" />
      <Property name="AllowShootableDebris" value="false" />
      <Property name="AllowDestructableDebris" value="false" />
      <Property name="MaxSpawnDistance" value="0.000000" />
      <Property name="LightFadeInTime" value="0.000000" />
      <Property name="LightFadeOutTime" value="1.000000" />
      <Property name="AddLight" value="true" />
      <Property name="AddedLightIntensity" value="64000000.000000" />
      <Property name="AddedLightColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="0.700000" />
        <Property name="B" value="0.135000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="ClampToGround" value="false" />
      <Property name="ClampToGroundContinuously" value="false" />
      <Property name="ClampToGroundRayUpLength" value="2.000000" />
      <Property name="ClampToGroundRayDownLength" value="2.000000" />
      <Property name="UseGroundNormal" value="false" />
    </Property>
    <Property name="Table" value="GcExplosionData" _id="FREIGHTEREXPL" _index="2">
      <Property name="Id" value="FREIGHTEREXPL" />
      <Property name="Model" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/EXPLOSION/FREIGHTERDESTRUCTION.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="EXPL_SHIPS_LARGE" />
      </Property>
      <Property name="AudioEndEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Debris">
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="18" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="25.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
      </Property>
      <Property name="Life" value="60.000000" />
      <Property name="Scale" value="1.000000" />
      <Property name="DistanceScale" value="0.000000" />
      <Property name="DistanceScaleMax" value="50.000000" />
      <Property name="CamShake" value="true" />
      <Property name="CamShakeSpaceScale" value="true" />
      <Property name="ShakeStrengthModifier" value="50.000000" />
      <Property name="ShakeId" value="FREIGHTERDESTRU" />
      <Property name="CamShakeCustomMaxDistance" value="10000.000000" />
      <Property name="AllowTriggerActionOnDebris" value="false" />
      <Property name="AllowShootableDebris" value="false" />
      <Property name="AllowDestructableDebris" value="false" />
      <Property name="MaxSpawnDistance" value="0.000000" />
      <Property name="LightFadeInTime" value="0.000000" />
      <Property name="LightFadeOutTime" value="1.000000" />
      <Property name="AddLight" value="true" />
      <Property name="AddedLightIntensity" value="8000.000000" />
      <Property name="AddedLightColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="0.700000" />
        <Property name="B" value="0.135000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="ClampToGround" value="false" />
      <Property name="ClampToGroundContinuously" value="false" />
      <Property name="ClampToGroundRayUpLength" value="0.000000" />
      <Property name="ClampToGroundRayDownLength" value="0.000000" />
      <Property name="UseGroundNormal" value="false" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEXPLSML"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="11" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="25.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS2.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="10" />
          <Property name="Radius" value="30.000000" />
          <Property name="Scale" value="30.000000" />
          <Property name="Speed" value="1000.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEXPLSML"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AddedLightIntensity",        "1000.000000"},
                {"ClampToGroundRayUpLength",   "0.000000"},
                {"ClampToGroundRayDownLength", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEXPLSML"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Table" value="GcExplosionData" _id="FREIGHTEXPLSML" _index="1">
      <Property name="Id" value="FREIGHTEXPLSML" />
      <Property name="Model" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/EXPLOSION/FREIGHTERDESTRUCTIONSMALL.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="EXPL_SHIPS_LARGE" />
      </Property>
      <Property name="AudioEndEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Debris">
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISC.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="11" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="25.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="10" />
          <Property name="Radius" value="30.000000" />
          <Property name="Scale" value="30.000000" />
          <Property name="Speed" value="1000.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
      </Property>
      <Property name="Life" value="60.000000" />
      <Property name="Scale" value="1.000000" />
      <Property name="DistanceScale" value="0.000000" />
      <Property name="DistanceScaleMax" value="50.000000" />
      <Property name="CamShake" value="true" />
      <Property name="CamShakeSpaceScale" value="true" />
      <Property name="ShakeStrengthModifier" value="20.000000" />
      <Property name="ShakeId" value="FREIGHTERDESTRU" />
      <Property name="CamShakeCustomMaxDistance" value="0.000000" />
      <Property name="AllowTriggerActionOnDebris" value="false" />
      <Property name="AllowShootableDebris" value="false" />
      <Property name="AllowDestructableDebris" value="false" />
      <Property name="MaxSpawnDistance" value="0.000000" />
      <Property name="LightFadeInTime" value="0.000000" />
      <Property name="LightFadeOutTime" value="1.000000" />
      <Property name="AddLight" value="true" />
      <Property name="AddedLightIntensity" value="1000000.000000" />
      <Property name="AddedLightColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="0.700000" />
        <Property name="B" value="0.135000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="ClampToGround" value="false" />
      <Property name="ClampToGroundContinuously" value="false" />
      <Property name="ClampToGroundRayUpLength" value="2.000000" />
      <Property name="ClampToGroundRayDownLength" value="2.000000" />
      <Property name="UseGroundNormal" value="false" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEFRIGATEEX"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS2.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="20.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="30.000000" />
          <Property name="Scale" value="20.000000" />
          <Property name="Speed" value="1000.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEFRIGATEEX"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AddedLightIntensity",        "1000.000000"},
                {"ClampToGroundRayUpLength",   "0.000000"},
                {"ClampToGroundRayDownLength", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEFRIGATEEX"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Table" value="GcExplosionData" _id="PIRATEFRIGATEEX" _index="1">
      <Property name="Id" value="PIRATEFRIGATEEX" />
      <Property name="Model" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/EXPLOSION/PIRATEFRIGATEEXPLOSION.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="EXPL_SHIPS_LARGE" />
      </Property>
      <Property name="AudioEndEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Debris">
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="20.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="30.000000" />
          <Property name="Scale" value="20.000000" />
          <Property name="Speed" value="1000.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
      </Property>
      <Property name="Life" value="60.000000" />
      <Property name="Scale" value="1.000000" />
      <Property name="DistanceScale" value="0.000000" />
      <Property name="DistanceScaleMax" value="50.000000" />
      <Property name="CamShake" value="true" />
      <Property name="CamShakeSpaceScale" value="true" />
      <Property name="ShakeStrengthModifier" value="30.000000" />
      <Property name="ShakeId" value="FREIGHTERDESTRU" />
      <Property name="CamShakeCustomMaxDistance" value="0.000000" />
      <Property name="AllowTriggerActionOnDebris" value="false" />
      <Property name="AllowShootableDebris" value="false" />
      <Property name="AllowDestructableDebris" value="false" />
      <Property name="MaxSpawnDistance" value="0.000000" />
      <Property name="LightFadeInTime" value="0.000000" />
      <Property name="LightFadeOutTime" value="1.000000" />
      <Property name="AddLight" value="true" />
      <Property name="AddedLightIntensity" value="1000000.000000" />
      <Property name="AddedLightColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="0.700000" />
        <Property name="B" value="0.135000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="ClampToGround" value="false" />
      <Property name="ClampToGroundContinuously" value="false" />
      <Property name="ClampToGroundRayUpLength" value="2.000000" />
      <Property name="ClampToGroundRayDownLength" value="2.000000" />
      <Property name="UseGroundNormal" value="false" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEXPLLRG"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="35.000000" />
          <Property name="Scale" value="30.000000" />
          <Property name="Speed" value="800.000000" />
          <Property name="AnglularSpeed" value="45.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="10" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="40.000000" />
          <Property name="Speed" value="700.000000" />
          <Property name="AnglularSpeed" value="60.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEXPLLRG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AddedLightIntensity",        "8000.000000"},
                {"ClampToGroundRayUpLength",   "0.000000"},
                {"ClampToGroundRayDownLength", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEXPLLRG"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Table" value="GcExplosionData" _id="FREIGHTEXPLLRG" _index="1">
      <Property name="Id" value="FREIGHTEXPLLRG" />
      <Property name="Model" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/EXPLOSION/FREIGHTERDESTRUCTIONLARGE.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="EXPL_SHIPS_LARGE" />
      </Property>
      <Property name="AudioEndEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Debris">
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="11" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="25.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS2.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="10" />
          <Property name="Radius" value="30.000000" />
          <Property name="Scale" value="30.000000" />
          <Property name="Speed" value="1000.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
      </Property>
      <Property name="Life" value="60.000000" />
      <Property name="Scale" value="1.000000" />
      <Property name="DistanceScale" value="0.000000" />
      <Property name="DistanceScaleMax" value="50.000000" />
      <Property name="CamShake" value="true" />
      <Property name="CamShakeSpaceScale" value="true" />
      <Property name="ShakeStrengthModifier" value="70.000000" />
      <Property name="ShakeId" value="FREIGHTERDESTRU" />
      <Property name="CamShakeCustomMaxDistance" value="0.000000" />
      <Property name="AllowTriggerActionOnDebris" value="false" />
      <Property name="AllowShootableDebris" value="false" />
      <Property name="AllowDestructableDebris" value="false" />
      <Property name="MaxSpawnDistance" value="0.000000" />
      <Property name="LightFadeInTime" value="0.000000" />
      <Property name="LightFadeOutTime" value="1.000000" />
      <Property name="AddLight" value="true" />
      <Property name="AddedLightIntensity" value="64000000.000000" />
      <Property name="AddedLightColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="0.700000" />
        <Property name="B" value="0.135000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="ClampToGround" value="false" />
      <Property name="ClampToGroundContinuously" value="false" />
      <Property name="ClampToGroundRayUpLength" value="2.000000" />
      <Property name="ClampToGroundRayDownLength" value="2.000000" />
      <Property name="UseGroundNormal" value="false" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEFREIGHTEX"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="11" />
          <Property name="Radius" value="40.000000" />
          <Property name="Scale" value="25.000000" />
          <Property name="Speed" value="600.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEFREIGHTEX"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AddedLightIntensity",        "8000.000000"},
                {"ClampToGroundRayUpLength",   "0.000000"},
                {"ClampToGroundRayDownLength", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEFREIGHTEX"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Table" value="GcExplosionData" _id="PIRATEFREIGHTEX" _index="1">
      <Property name="Id" value="PIRATEFREIGHTEX" />
      <Property name="Model" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/EXPLOSION/PIRATEFREIGHTERDESTRUCTION.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="EXPL_FREIGHTER" />
      </Property>
      <Property name="AudioEndEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Debris">
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="18" />
          <Property name="Radius" value="35.000000" />
          <Property name="Scale" value="30.000000" />
          <Property name="Speed" value="800.000000" />
          <Property name="AnglularSpeed" value="45.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
      </Property>
      <Property name="Life" value="60.000000" />
      <Property name="Scale" value="1.000000" />
      <Property name="DistanceScale" value="0.000000" />
      <Property name="DistanceScaleMax" value="50.000000" />
      <Property name="CamShake" value="true" />
      <Property name="CamShakeSpaceScale" value="true" />
      <Property name="ShakeStrengthModifier" value="100.000000" />
      <Property name="ShakeId" value="FREIGHTERDESTRU" />
      <Property name="CamShakeCustomMaxDistance" value="0.000000" />
      <Property name="AllowTriggerActionOnDebris" value="false" />
      <Property name="AllowShootableDebris" value="false" />
      <Property name="AllowDestructableDebris" value="false" />
      <Property name="MaxSpawnDistance" value="100000.000000" />
      <Property name="LightFadeInTime" value="0.000000" />
      <Property name="LightFadeOutTime" value="1.000000" />
      <Property name="AddLight" value="true" />
      <Property name="AddedLightIntensity" value="64000000.000000" />
      <Property name="AddedLightColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="0.527000" />
        <Property name="B" value="0.135000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="ClampToGround" value="false" />
      <Property name="ClampToGroundContinuously" value="false" />
      <Property name="ClampToGroundRayUpLength" value="2.000000" />
      <Property name="ClampToGroundRayDownLength" value="2.000000" />
      <Property name="UseGroundNormal" value="false" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTBULDEXPL"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISC.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="18" />
          <Property name="Radius" value="35.000000" />
          <Property name="Scale" value="30.000000" />
          <Property name="Speed" value="800.000000" />
          <Property name="AnglularSpeed" value="45.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEFRBUILDEX"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="18" />
          <Property name="Radius" value="35.000000" />
          <Property name="Scale" value="20.000000" />
          <Property name="Speed" value="800.000000" />
          <Property name="AnglularSpeed" value="45.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CORPTPILLDESTR"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "3"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CORPTPILLDESTR"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/RESOURCE/CRYSTALSHARDDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="25.000000" />
          <Property name="AnglularSpeed" value="25.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SENTCRYSTALEXPL"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.600000" />
          <Property name="Speed" value="1.000000" />
          <Property name="AnglularSpeed" value="1.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="2.500000" />
          <Property name="Scale" value="0.400000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="25.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SENTCRYSEXPLSML"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.300000" />
          <Property name="Speed" value="1.000000" />
          <Property name="AnglularSpeed" value="1.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="0.300000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPDRONEEXPL"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/RESOURCE/PILLARDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="0.400000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/RESOURCE/CRYSTALSHARDDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="6.000000" />
          <Property name="Scale" value="0.400000" />
          <Property name="Speed" value="25.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="3">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS2.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="7.000000" />
          <Property name="AnglularSpeed" value="25.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPARMOUREXP"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/RESOURCE/PILLARDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="0.400000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="0.300000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTQUADEXP"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/RESOURCE/PILLARDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="0.300000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="0.300000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTSELFDEST"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/RESOURCE/PILLARDEBRISA.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="0.400000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="2.000000" />
          <Property name="Scale" value="0.400000" />
          <Property name="Speed" value="15.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATETURRETEXP"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="8.000000" />
          <Property name="Speed" value="300.000000" />
          <Property name="AnglularSpeed" value="50.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS2.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="8.000000" />
          <Property name="Speed" value="400.000000" />
          <Property name="AnglularSpeed" value="25.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATETUREXPLGE"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="10.000000" />
          <Property name="Speed" value="300.000000" />
          <Property name="AnglularSpeed" value="50.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="10.000000" />
          <Property name="Speed" value="400.000000" />
          <Property name="AnglularSpeed" value="25.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATESHIELGEXP"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="8.000000" />
          <Property name="Speed" value="300.000000" />
          <Property name="AnglularSpeed" value="50.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="8.000000" />
          <Property name="Speed" value="400.000000" />
          <Property name="AnglularSpeed" value="25.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATEENGINEEXP"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="8.000000" />
          <Property name="Speed" value="300.000000" />
          <Property name="AnglularSpeed" value="50.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS1.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="8.000000" />
          <Property name="Speed" value="400.000000" />
          <Property name="AnglularSpeed" value="25.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "CARGOEXPLOSION"},
                {"Id", "SENTHIVEEXPL"},
                {"Id", "FREIGHTEREXPL"},
                {"Id", "FREIGHTEXPLSML"},
                {"Id", "PIRATEFRIGATEEX"},
                {"Id", "FREIGHTEXPLLRG"},
                {"Id", "PIRATEFREIGHTEX"},
                {"Id", "FREIGHTBULDEXPL"},
                {"Id", "PIRATEFRBUILDEX"},
                {"Id", "PIRATETURRETEXP"},
                {"Id", "PIRATETUREXPLGE"},
                {"Id", "PIRATESHIELGEXP"},
                {"Id", "PIRATEENGINEEXP"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "SENTCRYSTALEXPL"},
                {"Id", "SENTCRYSEXPLSML"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "CORPTPILLDESTR"},
                {"Id", "CORRUPDRONEEXPL"},
                {"Id", "CORRUPARMOUREXP"},
                {"Id", "CORRUPTQUADEXP"},
                {"Id", "CORRUPTSELFDEST"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.300000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\PLANETEFFECTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BLUEEXPLODE"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="12" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEDYING"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.600000" />
          <Property name="Speed" value="30.000000" />
          <Property name="AnglularSpeed" value="10.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="3">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="4">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="5">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKEREXPLODE"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.600000" />
          <Property name="Speed" value="30.000000" />
          <Property name="AnglularSpeed" value="10.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="3">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="7" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="4">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="5">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDHATCH"},
              ["PRECEDING_KEY_WORDS"] = {"GcDebrisData"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG_DESTROYED.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.500000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="7.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROCKDEBRIS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "12"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTDEBRIS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDDEATH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "4"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDDEATH"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG_DESTROYED.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.500000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="7.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDSPLAT"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG_DESTROYED.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.500000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="7.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCRAPEXPLODE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "4"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STORMCRYSTAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "6"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "REDEXPLODE"},
                {"Id", "GREENEXPLODE"},
                {"Id", "YELLOWEXPLODE"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/LARGERESOURCEDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="12" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="0.900000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SENTINELARMOUR"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.600000" />
          <Property name="Speed" value="30.000000" />
          <Property name="AnglularSpeed" value="10.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPROUNDEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="0" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="3">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.200000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="4">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.200000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="5">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="0" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.200000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEWALKEREXPL"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="30.000000" />
          <Property name="AnglularSpeed" value="10.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="0.500000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="3">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.200000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="4">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.200000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="5">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1.000000" />
          <Property name="Scale" value="1.200000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "QUEENARMOURL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKBLD_EXP", "Debris", "GcDebrisData"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKBLD_EXP"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="30.000000" />
          <Property name="AnglularSpeed" value="10.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPROUNDEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="3">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="4">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="5">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="0" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="20.000000" />
          <Property name="AnglularSpeed" value="0.100000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                 {"Id", "SEAGLASSBURST"},
                 {"Id", "GOLEMDAMAGED"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="12" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GOLEMSELFDESTRU"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "GOLEMPARTEXPL"},
                {"Id", "STONEDESTROYED"},
                {"Id", "STONEPARTEXPL"},
                {"Id", "STONEDAMAGED"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="3.000000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSILCOLLECT"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="0.300000" />
          <Property name="Scale" value="1.000000" />
          <Property name="Speed" value="6.000000" />
          <Property name="AnglularSpeed" value="3.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "DRONEDYING"},
                {"Id", "WALKEREXPLODE"},
                {"Id", "FIENDHATCH"},
                {"Id", "ROCKDEBRIS"},
                {"Id", "PLANTDEBRIS"},
                {"Id", "BAITDEBRIS"},
                {"Id", "FIENDDEATH"},
                {"Id", "FIENDSPLAT"},
                {"Id", "FIENDFISHDEATH"},
                {"Id", "FREIGHTERBROKEN"},
                {"Id", "SCRAPEXPLODE"},
                {"Id", "SENTINELARMOUR"},
                {"Id", "DRONEWALKEREXPL"},
                {"Id", "BUGDEATH"},
                {"Id", "QUEENARMOURL"},
                {"Id", "WALKBLD_EXP"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "BLUEEXPLODE"},
                {"Id", "STORMCRYSTAL"},
                {"Id", "REDEXPLODE"},
                {"Id", "GREENEXPLODE"},
                {"Id", "YELLOWEXPLODE"},
                {"Id", "SEAGLASSBURST"},
                {"Id", "GOLEMDAMAGED"},
                {"Id", "GOLEMSELFDESTRU"},
                {"Id", "GOLEMPARTEXPL"},
                {"Id", "STONEDESTROYED"},
                {"Id", "STONEPARTEXPL"},
                {"Id", "STONEDAMAGED"},
                {"Id", "FOSSILCOLLECT"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.200000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\PLAYEREFFECTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "FASTLAND"},
                {"Id", "SUBSTANCEPOP"},
                {"Id", "TERRAINEDIT"},
                {"Id", "TERRAIN_FLATTEN"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "4"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "TERRAINCREATE"},
                {"Id", "GROUNDPOP"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "3"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLEGUNHIT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "FASTLAND"},
                {"Id", "GROUNDPOP"},
                {"Id", "VEHICLEGUNHIT"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "SUBSTANCEPOP"},
                {"Id", "TERRAINEDIT"},
                {"Id", "TERRAINCREATE"},
                {"Id", "TERRAIN_FLATTEN"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRENADEEXPLODE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.200000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SPACEEFFECTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_HIT"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="80.000000" />
          <Property name="Scale" value="0.020000" />
          <Property name="Speed" value="30.000000" />
          <Property name="AnglularSpeed" value="70.000000" />
          <Property name="OverrideSeed" value="0" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_L_EXP"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="0">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="90.000000" />
          <Property name="Scale" value="0.020000" />
          <Property name="Speed" value="30.000000" />
          <Property name="AnglularSpeed" value="20.000000" />
          <Property name="OverrideSeed" value="0" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="50.000000" />
          <Property name="Scale" value="0.020000" />
          <Property name="Speed" value="60.000000" />
          <Property name="AnglularSpeed" value="60.000000" />
          <Property name="OverrideSeed" value="0" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPEXPLODE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number", "4"},
                {"Scale",  "4.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPEXPLODE"},
              ["PRECEDING_KEY_WORDS"] = {"Debris"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Debris" value="GcDebrisData" _index="1">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="3.000000" />
          <Property name="Speed" value="100.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="2">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="4.000000" />
          <Property name="Speed" value="100.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="3">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="4.000000" />
          <Property name="Speed" value="100.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
        <Property name="Debris" value="GcDebrisData" _index="4">
          <Property name="Filename" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="5.000000" />
          <Property name="Scale" value="4.000000" />
          <Property name="Speed" value="100.000000" />
          <Property name="AnglularSpeed" value="30.000000" />
          <Property name="OverrideSeed" value="NONE" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPEXPLODE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "ASTEROID_R_EXP"},
                {"Id", "ASTEROID_HIT"},
                {"Id", "ASTEROID_M_EXP"},
                {"Id", "ASTEROID_L_EXP"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life", "60.6000000"},
              }
            },
          }
        },
      }
    },
  }
}