NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Freighter Entry & Exit.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "5.03",
["MOD_DESCRIPTION"]			= "This mod improves freighters entry & exit",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"IgnoreAllCollisions", "True"},	-- Original "False"   
								--{"AllowedDefaultCollision", "True"},	-- Original "False"   
								{"UseSimpleCharacterCollision", "True"},	-- Original "False" --prevent big hauler to hit the ceiling when taking off  
								--{"ApproachNodeTargetOffset", "20"},		-- Original "10" 
								{"PlayerAutoLandRange",	"100"},		-- Original "500"   
								{"DockingAttractFacingAngle",	"1"},		-- Original "10"   --auto aim
								--{"LandingSpeed", "3"},		-- Original "5" 
								--{"LandingHeight","10"},		-- Original "6" 
								--{"TakeOffHeight", "10"},	-- Original "5.5"
								--{"TakeOffTime", "1"},	-- Original "1"
								--{"TakeOffAlignTime", "0"},	-- Original "1"
								{"PostTakeOffExtraPlayerHeight", "2"},	-- Original "20" --extra pitch at exit
								--{"PostTakeOffExtraPlayerSpeed", "100"},	-- Original "100"
								{"TakeOffProgressForExtraHeight", "0"},	-- Original "0.7"
							}
						},
					}
				},				
			}
		}
	}	
}