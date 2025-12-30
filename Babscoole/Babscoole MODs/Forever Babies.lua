NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	  = "Forever Babies",
["MOD_DESCRIPTION"]	= "Companions will stay as cute lil babies forever.",
["MOD_AUTHOR"]		  = "courtykat and Babscoole",
["NMS_VERSION"]		  = "6.18",
["MODIFICATIONS"]	  =
  {
		{
			["MBIN_CHANGE_TABLE"] =
      {
				{
					["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
					["MXML_CHANGE_TABLE"] =
          {
						{
							["VALUE_CHANGE_TABLE"] =
              {
								{"PetGrowthTime",        864000000}, --1209600
								{"CanAlwaysLayEgg",      "true"},		 --false
								{"PetEggMinGrowthToLay", "0"},		   --0.25
							},
						},
					},
				},
			}
		}
	}
}