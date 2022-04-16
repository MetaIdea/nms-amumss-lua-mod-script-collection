--Torch Adjustments
TorchFoV = 110							--Torch arc width, in degrees. 181+=360 degrees. Original value "100"
TorchStrength = 18						--Torch brightness. Original value "4.0"
TorchOffsetX = 0						--Torch source, + right, -left of centerline of character, in u. Original value "0"
TorchOffsetY = 0.25						--Torch source, + above, -below top of character head, in u. Original value "0.5"
TorchOffsetZ = -0.5						--Torch source, + behind, - in front of centerline of character, in u. Original value "0"
TorchRotation = 0						--???
TorchColourRed = 0.19					--Torch color red saturation percent. Original value "0.95"
TorchColourGreen = 0.193				--Torch color green saturation percent. Original value "0.993"
TorchColourBlue = 0.164					--Torch color blue saturation percent. Original value "0.944"
TorchColourA = 1						--???? Original value "1"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Trevis Torch.pak",
["MOD_DESCRIPTION"]	= "LUA adaptation of Trevis's torch mod",
["MOD_AUTHOR"]		= "Trevis",
["NMS_VERSION"]		= "2.5.1",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"] = {

	{["VALUE_CHANGE_TABLE"] = {
--Torch
		{"TorchFoV", TorchFoV},
		{"TorchStrength", TorchStrength},
		{"TorchOffsetX", TorchOffsetX},
		{"TorchOffsetY", TorchOffsetY},
		{"TorchOffsetZ", TorchOffsetZ},
		{"TorchRotation", TorchRotation}}},
	{["PRECEDING_KEY_WORDS"] = "TorchColour",
	["VALUE_CHANGE_TABLE"] = {
		{"R", TorchColourRed},
		{"G", TorchColourGreen},
		{"B", TorchColourBlue},
		{"A", TorchColourA}
		}},
}},}},}}