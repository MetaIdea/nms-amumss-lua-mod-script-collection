NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Spaceship Planet Fly Adjustments.pak",
	["MOD_DESCRIPTION"]	= "Adjustments to planetary flight",
	["MOD_AUTHOR"]		= "Da-Luna",
	["LUA_AUTHOR"]		= "Lenni",
	["NMS_VERSION"]		= "3.99",
	["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
	["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
			
				{
                    ["MBIN_FILE_SOURCE"]     = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER_SHIP"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"CanMine", "True"}	--Original: False
								},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]     = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
							["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"50"},		--Original: 20
								{"MaxSpeed",		"145"},		--Original: 125
								{"MinSpeed",		"0.01"},	--Original: 20
								{"BoostMaxSpeed",	"185"},		--Original: 155
							},
                        },
                        {
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"50"},		--Original: 40
								{"MaxSpeed",		"145"},		--Original: 125
								{"MinSpeed",		"0.01"},	--Original: 20
								{"BoostMaxSpeed",	"185"},		--Original: 150
							},							
                        },
                        {
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"50"},		--Original: 20
								{"MaxSpeed",		"145"},		--Original: 130
								{"MinSpeed",		"0.01"},	--Original: 20
							},							
                        },
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HoverSpeedFactor",	"0.01"},	--Original: 20
								{"HoverMinSpeed",		"0.01"},	--Original: 1	
							},							
                        },
                    },
                },
            }
        }
    }
}