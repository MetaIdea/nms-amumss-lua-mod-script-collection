ModName = "PTSd Expensive Pilots + Broadcast Receivers"
GameVersion = "3_99.1"
Description = "Makes Emergency Broadcast Receivers for finding Derelict Freighters start out a little more expensive and continue increasing in price up until the eleventh daily purchase, instead of stopping at the fourth. Also more expensive Pilot slots."

--This is the price paid in Nanites during certain dialog choices. Mostly used for asking Travellers for directions to a grave to get portal glyphs, but is alaso rarely used in certain alien NPC dialog choices
MedNaniteCost =			500					--100

--Receiver prices reset each day
FirstReceiverCost = 	8000000				--5000000
SecondReceiverCost = 	16000000			--10000000
ThirdReceiverCost = 	24000000			--20000000
FourthReceiverCost = 	32000000			--30000000
FifthReceiverCost = 	40000000			--30000000
SixthReceiverCost = 	50000000			--30000000
SeventhReceiverCost = 	60000000			--30000000
EigthReceiverCost = 	70000000			--30000000
NinthReceiverCost = 	80000000			--30000000
TenthReceiverCost = 	90000000			--30000000
EleventhReceiverCost = 	100000000			--30000000
--All Receivers after this one will have this same price

--Pilot slot costs
FirstPilot =			1200				--800
SecondPilot =			5000				--3500
ThirdPilot =			10000				--7500
FourthPilot =			16000				--10000

--Nothing below this should need to be changed. All values can be edited in the sections above this line

NewCosts =
[[<Property name="Costs">
          <Property value="]]..FirstReceiverCost..[[" />
		  <Property value="]]..SecondReceiverCost..[[" />
		  <Property value="]]..ThirdReceiverCost..[[" />
		  <Property value="]]..FourthReceiverCost..[[" />
		  <Property value="]]..FifthReceiverCost..[[" />
		  <Property value="]]..SixthReceiverCost..[[" />
		  <Property value="]]..SeventhReceiverCost..[[" />
		  <Property value="]]..EigthReceiverCost..[[" />
		  <Property value="]]..NinthReceiverCost..[[" />
		  <Property value="]]..TenthReceiverCost..[[" />
		  <Property value="]]..EleventhReceiverCost..[[" />
        </Property>]]


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\COSTTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TECHFRAG_MD"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", MedNaniteCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewCosts,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REPLACE_TYPE"] 		= "",
				["REMOVE"] = "SECTION",
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["SPECIAL_KEY_WORDS"] = {"Id","C_PILOT_SLOT"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{800, FirstPilot},
					{3500, SecondPilot},
					{10000, FourthPilot},	--Have to do fourth pilot before third pilot to avoid having two costs at 10,000 at the same time
					{7500, ThirdPilot},
				}
			},
		}
	}
}}}}