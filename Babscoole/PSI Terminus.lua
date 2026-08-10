NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PSI Terminus",
["MOD_AUTHOR"]      = "AstraSyndulla",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Allows access to teleporter page from the emotes menu",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Emotes"},
              ["ADD"] =
[[
		<Property name="Emotes" value="GcPlayerEmote" _id="PSI_NEXUS">
			<Property name="Title" value="Summon Terminus" />
			<Property name="ChatText" value="UI_EMOTE_CHAT_HOLO_SYSTEM" />
			<Property name="ChatUsesPrefix" value="false" />
			<Property name="EmoteID" value="PSI_NEXUS" />
			<Property name="AnimationName" value="1H_IDLE_HOLO_01" />
			<Property name="PropData" value="GcPlayerEmotePropData">
				<Property name="Model" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/TELEPORTER_NEXUS.SCENE.MBIN" />
				<Property name="Scale" value="0.010000" />
				<Property name="Hand" value="GcHand">
					<Property name="Hand" value="Left" />
				</Property>
				<Property name="IsHologram" value="false" />
				<Property name="ScanEffectNodeName" value="HoloSystem" />
				<Property name="ScanEffect" value="GcScanEffectData">
					<Property name="Id" value="" />
					<Property name="ScanEffectType" value="Objects" />
					<Property name="Colour">
						<Property name="R" value="0.949020" />
						<Property name="G" value="0.470588" />
						<Property name="B" value="0.027451" />
						<Property name="A" value="1.000000" />
					</Property>
					<Property name="BasecolourIntensity" value="0.350000" />
					<Property name="ScanlinesSeparation" value="0.350000" />
					<Property name="FresnelIntensity" value="3.000000" />
					<Property name="GlowIntensity" value="0.000000" />
					<Property name="WaveOffset" value="0.000000" />
					<Property name="WaveActive" value="true" />
					<Property name="FixedUpAxis" value="false" />
					<Property name="Transparent" value="false" />
					<Property name="Additive" value="false" />
					<Property name="ModelFade" value="false" />
					<Property name="FadeInTime" value="0.000000" />
					<Property name="FadeOutTime" value="0.000000" />
					<Property name="UseBaseColourForAll" value="false" />
				</Property>
				<Property name="DelayTime" value="0.300000" />
			</Property>
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/HOLOSYSTEM.DDS" />
			</Property>
			<Property name="LinkedSpecialID" value="" />
			<Property name="NeverShowInMenu" value="false" />
			<Property name="LoopAnimUntilMove" value="EMOTE_HOLO" />
			<Property name="CloseMenuOnSelect" value="true" />
			<Property name="MoveToCancel" value="true" />
			<Property name="GekAnimationName" value="" />
			<Property name="GekLoopAnimUntilMove" value="" />
			<Property name="AvailableUnderwater" value="false" />
			<Property name="RidingAnimationName" value="" />
			<Property name="IsPetCommand" value="false" />
			<Property name="PetCommandTitle" value="" />
			<Property name="PetCommandIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
			</Property>
		</Property>
		<Property name="Emotes" value="GcPlayerEmote" _id="PSI_NEXUS_SPC">
			<Property name="Title" value="Summon Terminus" />
			<Property name="ChatText" value="UI_EMOTE_CHAT_HOLO_SYSTEM" />
			<Property name="ChatUsesPrefix" value="false" />
			<Property name="EmoteID" value="PSI_NEXUS_SPC" />
			<Property name="AnimationName" value="1H_IDLE_HOLO_01" />
			<Property name="PropData" value="GcPlayerEmotePropData">
				<Property name="Model" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/TELEPORTER_NEXUS.SCENE.MBIN" />
				<Property name="Scale" value="0.010000" />
				<Property name="Hand" value="GcHand">
					<Property name="Hand" value="Left" />
				</Property>
				<Property name="IsHologram" value="false" />
				<Property name="ScanEffectNodeName" value="HoloSystem" />
				<Property name="ScanEffect" value="GcScanEffectData">
					<Property name="Id" value="" />
					<Property name="ScanEffectType" value="Objects" />
					<Property name="Colour">
						<Property name="R" value="0.949020" />
						<Property name="G" value="0.470588" />
						<Property name="B" value="0.027451" />
						<Property name="A" value="1.000000" />
					</Property>
					<Property name="BasecolourIntensity" value="0.350000" />
					<Property name="ScanlinesSeparation" value="0.350000" />
					<Property name="FresnelIntensity" value="3.000000" />
					<Property name="GlowIntensity" value="0.000000" />
					<Property name="WaveOffset" value="0.000000" />
					<Property name="WaveActive" value="true" />
					<Property name="FixedUpAxis" value="false" />
					<Property name="Transparent" value="false" />
					<Property name="Additive" value="false" />
					<Property name="ModelFade" value="false" />
					<Property name="FadeInTime" value="0.000000" />
					<Property name="FadeOutTime" value="0.000000" />
					<Property name="UseBaseColourForAll" value="false" />
				</Property>
				<Property name="DelayTime" value="0.300000" />
			</Property>
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/HOLOSYSTEM.DDS" />
			</Property>
			<Property name="LinkedSpecialID" value="" />
			<Property name="NeverShowInMenu" value="false" />
			<Property name="LoopAnimUntilMove" value="EMOTE_HOLO" />
			<Property name="CloseMenuOnSelect" value="true" />
			<Property name="MoveToCancel" value="true" />
			<Property name="GekAnimationName" value="" />
			<Property name="GekLoopAnimUntilMove" value="" />
			<Property name="AvailableUnderwater" value="true" />
			<Property name="RidingAnimationName" value="" />
			<Property name="IsPetCommand" value="false" />
			<Property name="PetCommandTitle" value="" />
			<Property name="PetCommandIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
			</Property>
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "UI\INTERACTIONTELEPORTERNEXUSPAGE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DISABLE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IgnoreInput", "true"},
              }
            },
          }
        },
      }
    }
  }
}