EMOTE_GENERIC_ICON 			= "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS"
EMOTE_GENERIC_ICON_HAPPY 	= "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS"
EMOTE_GENERIC_ICON_ANGRY 	= "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS"
EMOTE_GENERIC_ICON_GREET 	= "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS"

NEW_EMOTE_TABLE =
{
	{ ["TITLE"]="Fake Death", ["ANIM"]="0H_DEATH", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/WIKI/COMBATHEADER.DDS" },
	{ ["TITLE"]="PANIC!", ["ANIM"]="0H_FALL_PANIC", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Happy 1", ["ANIM"]="0H_HAPPY_01", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 2", ["ANIM"]="0H_HAPPY_02", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 3", ["ANIM"]="0H_HAPPY_03", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 4", ["ANIM"]="0H_HAPPY_04", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 5", ["ANIM"]="0H_HAPPY_05", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 6", ["ANIM"]="0H_HAPPY_06", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 7", ["ANIM"]="0H_HAPPY_07", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 8", ["ANIM"]="0H_HAPPY_08", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Angry 1", ["ANIM"]="0H_ANGRY_01", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Angry 2", ["ANIM"]="0H_ANGRY_02", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Angry 3", ["ANIM"]="0H_ANGRY_03", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Angry 4", ["ANIM"]="0H_ANGRY_04", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Greet 1", ["ANIM"]="0H_GREET_01", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 2", ["ANIM"]="0H_GREET_02", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 3", ["ANIM"]="0H_GREET_03", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 4", ["ANIM"]="0H_GREET_04", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 5", ["ANIM"]="0H_GREET_05", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 6", ["ANIM"]="0H_GREET_06", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 7", ["ANIM"]="0H_GREET_07", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Slide", ["ANIM"]="0H_SLIDE_F", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Land Float", ["ANIM"]="0H_SWIM_IDLE", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Land Swim", ["ANIM"]="0H_SWIM_F", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Interact With Console", ["ANIM"]="0H_INT_CNSL_IN", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/POINT.DDS" },
	{ ["TITLE"]="Gather", ["ANIM"]="0H_INT_GATH_IN", ["ICON"]=EMOTE_GENERIC_ICON },
}

function CreateQuickActionMenuEntry(BUTTON_TITLE, ANIM_ID, ICON)
QUICK_ACTION_BUTTON_TEMPLATE =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
    </Property>	
]]
return QUICK_ACTION_BUTTON_TEMPLATE
end

NEW_EMOTES_ALL = ""

for i=1,#NEW_EMOTE_TABLE,1 do
	NEW_EMOTES_ALL = NEW_EMOTES_ALL .. CreateQuickActionMenuEntry(NEW_EMOTE_TABLE[i]["TITLE"], NEW_EMOTE_TABLE[i]["ANIM"], NEW_EMOTE_TABLE[i]["ICON"])
end	

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlockAllEmote.pak",
["MOD_AUTHOR"]				= "Monkeyman192 and script conversion by Mjjstral",
["MOD_DESCRIPTION"]			= "Unlocks all emotes + add some ingame animations as gestures too",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{	
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= NEW_EMOTES_ALL
						}
					}
				}
			}
		}
	}
}