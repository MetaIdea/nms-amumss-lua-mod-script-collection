Author = "Gumsk"
ModName = "gVehicle"
ModNameSub = "Max"
BaseDescription = "Exocraft modifications"
GameVersion = "452"
ModVersion = "a"
FileSource1 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

BikeTopSpeedForward					= 35		--18
BikeTopSpeedReverse					= 15		--10
BikeUnderwaterEngineMaxSpeed		= 15		--15
BikeVehicleJumpForce				= 800		--475
BikeVehicleBoostForce				= 1200		--400
BikeVehicleBoostMaxSpeed			= 70		--32
BikeVehicleBoostTime				= 999		--0.5

BuggyTopSpeedForward				= 30		--16
BuggyTopSpeedReverse				= 12		--8
BuggyUnderwaterEngineMaxSpeed		= 15		--15
BuggyVehicleJumpForce				= 750		--420
BuggyVehicleBoostForce				= 1200		--300
BuggyVehicleBoostMaxSpeed			= 60		--30
BuggyVehicleBoostTime				= 999		--1.5

TruckTopSpeedForward				= 25		--12
TruckTopSpeedReverse 				= 10		--8
TruckUnderwaterEngineMaxSpeed 		= 15		--15
TruckVehicleJumpForce				= 700		--400
TruckVehicleBoostForce 				= 1200		--220
TruckVehicleBoostMaxSpeed 			= 50		--30
TruckVehicleBoostTime				= 999		--1.25

WheeledBikeTopSpeedForward			= 45		--19
WheeledBikeTopSpeedReverse 			= 20		--8
WheeledBikeUnderwaterEngineMaxSpeed	= 15		--15
WheeledBikeVehicleJumpForce			= 1500		--450
WheeledBikeVehicleBoostForce 		= 1200		--600
WheeledBikeVehicleBoostMaxSpeed		= 90		--35
WheeledBikeVehicleBoostTime			= 999		--0.6

HovercraftTopSpeedForward			= 35		--15
HovercraftTopSpeedReverse			= 15		--15
HovercraftUnderwaterEngineMaxSpeed	= 15		--15
HovercraftVehicleJumpForce			= 1000		--1200
HovercraftVehicleBoostForce			= 1200		--900
HovercraftVehicleBoostMaxSpeed		= 70		--25
HovercraftVehicleBoostTime			= 999		--1.5

SubTopSpeedForward					= 15		--15
SubTopSpeedReverse					= 15		--15
SubUnderwaterEngineMaxSpeed			= 30		--15
SubVehicleJumpForce					= 1000		--1200
SubVehicleBoostForce				= 1200		--900
SubVehicleBoostMaxSpeed				= 60		--25
SubVehicleBoostTime					= 999		--2.5


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