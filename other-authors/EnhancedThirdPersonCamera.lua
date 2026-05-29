--|=======================================================================================--
--| USER SETTINGS
--|=======================================================================================--
_CameraType = 1 -- 1 = Centered | 2 = Right-Shoulder | 3 = Left-Shoulder
--|=======================================================================================--
--| CODE
--|=======================================================================================--

if _CameraType < 1 or _CameraType > 3 then
    _CameraType = 1
end

local OffsetX, modNameSub = "0", "centered"
if _CameraType == 2 then
    OffsetX, modNameSub = "0.85", "right-shoulder"
elseif _CameraType == 3 then
    OffsetX, modNameSub = "-0.85", "left-shoulder"
end

local cameras = {
    "CharacterUnarmedCam", "CharacterRunCam", "CharacterCombatCam", "CharacterMiningCam",
    "CharacterIndoorCam", "CharacterAbandCombatCam", "CharacterAbandCam", "CharacterNexusCam",
    "CharacterAirborneCam", "CharacterMeleeBoostCam", "CharacterRocketBootsCam",
    "CharacterRocketBootsChargeCam", "CharacterFallingCam", "CharacterAirborneCombatCam",
    "CharacterSpaceCam", "CharacterSteepSlopeCam", "CharacterUnderwaterCam",
    "CharacterUnderwaterCombatCam", "CharacterUnderwaterJetpackCam"
}

local changes = {
    {"MinSpeed", "4"},
    {"SpeedRange", "20"},
    {"OffsetX", OffsetX},
    {"OffsetY", "-0.25"},        
    {"OffsetYAlt", "-0.25"},     
    {"OffsetYSlopeExtra", "0.4"},
    {"OffsetZFlat", "0"},
    {"BackMinDistance", "6.5"},
    {"BackMaxDistance", "10"},
    {"UpMinDistance", "0"},
    {"UpMaxDistance", "0"},
    {"PanNear", "-1.2"},
    {"PanFar", "3.5"},
    {"UpGamma", "1.4"},
    {"HorizRotationAngleMaxPerFrame", "22"},
    {"VertRotationSpeed", "16"},
    {"VertRotationMin", "-70"},
    {"VertRotationMax", "70"},
    {"VertRotationOffset", "1.0"},
    {"DistSpeed", "6"},
    {"DistStiffness", "0.25"},
    {"SpringSpeed", "0.2"},
    {"CenterStartTime", "2.0"},
    {"CenterBlendTime", "0.7"},
    {"VelocityAnticipate", "0.2"},
    {"EnableCollisionDetection", "true"},
    {"NumLRProbes", "12"},
    {"LRProbesRange", "14"},
    {"LRProbesRadius", "0.35"},
    {"NumUDProbes", "6"},
    {"UDProbesRange", "1.8"},
    {"ProbeCenterY", "-0.7"},     
    {"UseSpeedBasedSpring", "true"},
}

local exmlChanges = {}
for _, cam in ipairs(cameras) do
    table.insert(exmlChanges, {
        ["PKW"] = cam,
        ["VCT"] = changes
    })
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("EnhancedThirdPersonCamera_%s.pak", modNameSub),
    ["MOD_AUTHOR"] = "Wazora",
    ["LUA_AUTHOR"] = "Umaroth + Grok",
    ["NMS_VERSION"] = "6.40",
    ["MOD_DESCRIPTION"] = "Cámara centrada + altura más baja",
   
    ["MODIFICATIONS"] = {{
        ["MBIN_CT"] = {{
            ["MBIN_FS"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
            ["EXML_CT"] = exmlChanges
        }}
    }}
}