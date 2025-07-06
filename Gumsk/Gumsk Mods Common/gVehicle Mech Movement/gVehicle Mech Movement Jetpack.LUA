Author = "Gumsk,Devilin Pixy,Jasondude"
ModName = "gVehicle Mech Movement"
ModNameSub = "Jetpack Only"
BaseDescription = "Mech modifications jetpack only"
GameVersion = "5.5.5.0"
ModVersion = "a"
FileSource2 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"


--GCVEHICLEGLOBALS Mech
	MechJetpackTurnSpeed						= 0.5		--3
	MechLandBrake										= 8			--4
	MechJetpackLandTime							= 0.2		--0.6
	MechJetpackMaxSpeed							= 40		--20
	MechJetpackMaxUpSpeed						= 40		--20
	MechJetpackUpForce							= 140		--100
	MechJetpackDrainRate						= 0			--0.5

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE	= FileSource2,
					EXML_CHANGE_TABLE	= {
						{
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE = {
								{"MechJetpackTurnSpeed",MechJetpackTurnSpeed},
								{"MechLandBrake",MechLandBrake},
								{"MechJetpackLandTime",MechJetpackLandTime},
								{"MechJetpackMaxSpeed",MechJetpackMaxSpeed},
								{"MechJetpackMaxUpSpeed",MechJetpackMaxUpSpeed},
								{"MechJetpackUpForce",MechJetpackUpForce},
								{"MechJetpackDrainRate",MechJetpackDrainRate},
							}
						},
					}
				},
			}
		}
	}
}