ModName = "PTSd Asteroid Odds"
GameVersion = "5_63"
Description = "Changes the odds of a system having many rare asteroids with Platinum, and also the chances of different rewards from shooting asteroids"

--Sets the chance that a system of a given color star will have abundant rare (platinum) asteroids
YellowRareOdds =	0.01			--0.01
RedRareOdds =		0.05			--0.12
GreenRareOdds =		0.1				--0.05
BlueRareOdds =		0.15			--0.1
PurpleRareOdds =	0.5				--0.5

RareMinResources =	7			--5		Minimum base amount of Platinum from destroying a Rare asteroid
RareMaxResources =	13			--10	Maximum base amount of Platinum from destroying a Rare asteroid

--Sets the amounts and chances of different rewards for shooting Common Asteroids
CommonMinResources =	5			--3		Minimum base amount of substances from destroying a Common asteroid
CommonMaxResources =	8			--5		Maximum base amount of substances from destroying a Common asteroid
FuelMultiplier =		6			--10	Presumably multiplier to Tritium found when destroying a special fuel/Tritium asteroid?
CommonFuelMultiplier =	3			--5		Multiplier to Tritium found when destroying a Common asteroid
CommonSecondaryOdds =	0.2			--0.2	Appears to be the chance to get either Gold (Secondary) or Gold Nuggets (Product) INSTEAD of Silver (Primary)
CommonProductOdds =		0.1			--0.2	Appears to be the chance to get a Gold Nugget (Product) INSTEAD of Gold (Secondary)
CommonFuelOdds =		0.4			--0.5	Unclear, possibly this value minus -0.1 is the chance to get Tritium (Fuel) INSTEAD of Silver (Primary), after first accounting for Gold (Secondary) & Gold Nuggets (Product)?
						--Unclear exactly how the final chances for different results are calculated

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GLOBALS\GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Rare Asteroid System Odds Yellow",	YellowRareOdds},
								{"Rare Asteroid System Odds Red",	RedRareOdds},
								{"Rare Asteroid System Odds Green",	GreenRareOdds},
								{"Rare Asteroid System Odds Blue",	BlueRareOdds},
								{"Rare Asteroid System Odds Purple",	PurpleRareOdds},
								{"Rare Asteroid Min Resources",	RareMinResources},
								{"Rare Asteroid Max Resources",	RareMaxResources},
								{"Common Asteroid Min Resources",	CommonMinResources},
								{"Common Asteroid Max Resources",	CommonMaxResources},
								{"Fuel Asteroid Multiplier",	FuelMultiplier},
								{"Common Asteroid Resource Fuel Multiplier",	CommonFuelMultiplier},
								{"Common Asteroid Resource Fuel Odds",	CommonFuelOdds},
								{"Common Asteroid Resource Product Odds",	CommonProductOdds},
								{"Common Asteroid Resource Secondary Odds",	CommonSecondaryOdds},
							}
						},
					}
				}
            }
		}
    }
}