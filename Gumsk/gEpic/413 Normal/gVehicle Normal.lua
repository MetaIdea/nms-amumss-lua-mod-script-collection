Author = "Gumsk"
ModName = "gVehicle"
ModNameSub = "Normal"
BaseDescription = "Exocraft modifications"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

BikeTopSpeedForward					= 25		--18
BikeTopSpeedReverse					= 15		--10
BikeUnderwaterEngineMaxSpeed		= 15		--15
BikeVehicleJumpForce				= 700		--475
BikeVehicleBoostForce				= 600		--400
BikeVehicleBoostMaxSpeed			= 45		--32
BikeVehicleBoostTime				= 2			--0.5

BuggyTopSpeedForward				= 21		--16
BuggyTopSpeedReverse				= 12		--8
BuggyUnderwaterEngineMaxSpeed		= 15		--15
BuggyVehicleJumpForce				= 550		--420
BuggyVehicleBoostForce				= 500		--300
BuggyVehicleBoostMaxSpeed			= 40		--30
BuggyVehicleBoostTime				= 4			--1.5

TruckTopSpeedForward				= 18		--12
TruckTopSpeedReverse 				= 10		--8
TruckUnderwaterEngineMaxSpeed 		= 15		--15
TruckVehicleJumpForce				= 500		--400
TruckVehicleBoostForce 				= 350		--220
TruckVehicleBoostMaxSpeed 			= 36		--30
TruckVehicleBoostTime				= 3			--1.25

WheeledBikeTopSpeedForward			= 30		--19
WheeledBikeTopSpeedReverse 			= 18		--8
WheeledBikeUnderwaterEngineMaxSpeed	= 15		--15
WheeledBikeVehicleJumpForce			= 650		--450
WheeledBikeVehicleBoostForce 		= 800		--600
WheeledBikeVehicleBoostMaxSpeed		= 50		--35
WheeledBikeVehicleBoostTime			= 2			--0.6

HovercraftTopSpeedForward			= 20		--15
HovercraftTopSpeedReverse			= 15		--15
HovercraftUnderwaterEngineMaxSpeed	= 15		--15
HovercraftVehicleJumpForce			= 1200		--1200
HovercraftVehicleBoostForce			= 1200		--900
HovercraftVehicleBoostMaxSpeed		= 70		--25
HovercraftVehicleBoostTime			= 999		--1.5

SubTopSpeedForward					= 15		--15
SubTopSpeedReverse					= 15		--15
SubUnderwaterEngineMaxSpeed			= 25		--15
SubVehicleJumpForce					= 1200		--1200
SubVehicleBoostForce				= 1200		--900
SubVehicleBoostMaxSpeed				= 35		--25
SubVehicleBoostTime					= 6			--2.5


NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIKE"},
							["VALUE_CHANGE_TABLE"] = {
								{"TopSpeedForward",BikeTopSpeedForward},
								{"TopSpeedReverse",BikeTopSpeedReverse},
								{"UnderwaterEngineMaxSpeed",BikeUnderwaterEngineMaxSpeed},
								{"VehicleJumpForce",BikeVehicleJumpForce},
								{"VehicleBoostForce",BikeVehicleBoostForce},
								{"VehicleBoostMaxSpeed",BikeVehicleBoostMaxSpeed},
								{"VehicleBoostTime",BikeVehicleBoostTime},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MED_BUGGY"},
							["VALUE_CHANGE_TABLE"] = {
								{"TopSpeedForward",BuggyTopSpeedForward},
								{"TopSpeedReverse",BuggyTopSpeedReverse},
								{"UnderwaterEngineMaxSpeed",BuggyUnderwaterEngineMaxSpeed},
								{"VehicleJumpForce",BuggyVehicleJumpForce},
								{"VehicleBoostForce",BuggyVehicleBoostForce},
								{"VehicleBoostMaxSpeed",BuggyVehicleBoostMaxSpeed},
								{"VehicleBoostTime",BuggyVehicleBoostTime},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","TRUCK"},
							["VALUE_CHANGE_TABLE"] = {
								{"TopSpeedForward",TruckTopSpeedForward},
								{"TopSpeedReverse",TruckTopSpeedReverse},
								{"UnderwaterEngineMaxSpeed",TruckUnderwaterEngineMaxSpeed},
								{"VehicleJumpForce",TruckVehicleJumpForce},
								{"VehicleBoostForce",TruckVehicleBoostForce},
								{"VehicleBoostMaxSpeed",TruckVehicleBoostMaxSpeed},
								{"VehicleBoostTime",TruckVehicleBoostTime},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","WHEELEDBIKE"},
							["VALUE_CHANGE_TABLE"] = {
								{"TopSpeedForward",WheeledBikeTopSpeedForward},
								{"TopSpeedReverse",WheeledBikeTopSpeedReverse},
								{"UnderwaterEngineMaxSpeed",WheeledBikeUnderwaterEngineMaxSpeed},
								{"VehicleJumpForce",WheeledBikeVehicleJumpForce},
								{"VehicleBoostForce",WheeledBikeVehicleBoostForce},
								{"VehicleBoostMaxSpeed",WheeledBikeVehicleBoostMaxSpeed},
								{"VehicleBoostTime",WheeledBikeVehicleBoostTime},
							},
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Name","HOVERCRAFT"},
							["VALUE_CHANGE_TABLE"] = {
								{"TopSpeedForward",HovercraftTopSpeedForward},
								{"TopSpeedReverse",HovercraftTopSpeedReverse},
								{"UnderwaterEngineMaxSpeed",HovercraftUnderwaterEngineMaxSpeed},
								{"VehicleJumpForce",HovercraftVehicleJumpForce},
								{"VehicleBoostForce",HovercraftVehicleBoostForce},
								{"VehicleBoostMaxSpeed",HovercraftVehicleBoostMaxSpeed},
								{"VehicleBoostTime",HovercraftVehicleBoostTime},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SUBMARINE"},
							["VALUE_CHANGE_TABLE"] = {
								{"TopSpeedForward",SubTopSpeedForward},
								{"TopSpeedReverse",SubTopSpeedReverse},
								{"UnderwaterEngineMaxSpeed",SubUnderwaterEngineMaxSpeed},
								{"VehicleJumpForce",SubVehicleJumpForce},
								{"VehicleBoostForce",SubVehicleBoostForce},
								{"VehicleBoostMaxSpeed",SubVehicleBoostMaxSpeed},
								{"VehicleBoostTime",SubVehicleBoostTime},
							},
						},
					},
				},
			}
		}
	}
}