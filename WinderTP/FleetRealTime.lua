NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "_FleetRealTime.pak",
["MOD_DESCRIPTION"]	= "Be careful what you wish for!",
["MOD_AUTHOR"]		= "WinderTP based on Gumsk's script",
["NMS_VERSION"]		= "",
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] =
	{
		{
			["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
			["EXML_CHANGE_TABLE"] = 
			{
				-- {
					-- ["VALUE_CHANGE_TABLE"] = {
						-- -- house building time from https://www.google.com/search?q=how+long+does+it+take+to+build+a+house
						-- {"BuildingUpgradeTimeInSeconds", "18408206"},
						-- {"BuildingFreeUpgradeTimeInSeconds","10518975"},
						-- -- civil trial time from https://clic.org.hk/en/topics/civilCase/all
						-- {"JudgementWaitTimeMin",1},
						-- {"JudgementWaitTimeMax",1},
						-- {"SettlementMiniExpeditionSuccessChance",1.0},
					-- }
				-- },
				{
					["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
					["VALUE_CHANGE_TABLE"] = {
						-- helipad build time from https://www.airmedandrescue.com/latest/long-read/helipads-21st-century
						-- 3 weeks
						{"Settlement_LandingZone","1814400"},
						-- 10k sqft building build time from https://proest.com/construction/process/building-a-commercial-building/
						-- 6 months
						{"Settlement_Bar", "15778463"},
						-- water tower build time from https://www.townofsunnyvale.org/DocumentCenter/View/3309/CIP-Report---Water-Tower---May-2017?bidId=
						-- 1.5 years?????
						{"Settlement_Tower","47335389"},
						-- wet market build time from https://en.wikipedia.org/wiki/Wet_market
						-- 1.5 years
						{"Settlement_Market", "47335389"},
						-- small house building time from http://www.rempros.com/estimating-time/how_long_does_it_take_to_build_a_house.html
						-- 3 months
						{"Settlement_Small","7889231"},
						-- warehouse build time from https://tradingeconomics.com/united-states/time-required-to-build-a-warehouse-days-wb-data.html
						-- 80.6 days
						{"Settlement_SmallIndustrial", "6963840"},
						-- house building time from https://www.google.com/search?q=how+long+does+it+take+to+build+a+house
						-- 7 months
						{"Settlement_Medium","1814400"},
						-- apartment build time from https://www.wsj.com/articles/BL-REB-21554
						-- 11.2 months
						{"Settlement_Large","29453130"},
						-- monument build time from http://stjoemonument.com/resources/faqs/52-how-long-does-it-take-faq
						-- 120 days
						{"Settlement_Monument", "10368000"},
						-- police building build time from https://en.wikipedia.org/wiki/Hong_Kong_Police_Headquarters
						-- 2 years
						{"Settlement_SheriffsOffice","63113851"},
						-- house building time from https://www.google.com/search?q=how+long+does+it+take+to+build+a+house
						-- 7 months
						{"Settlement_Double","1814400"},
						-- farm build time from https://blog.zipgrow.com/to-build-a-farm-determine-your-timeline/
						-- 4 months
						{"Settlement_Farm", "10518975"},
						-- factory build time from https://www.quora.com/How-long-does-it-take-to-build-a-manufacturing-facility
						-- 2 years
						{"Settlement_Factory", "63113851"},
						-- landfill build time from https://www.waste360.com/mag/waste_preparing_landfill_designs
						-- 1.5 years
						{"Settlement_Clump","47335389"},
					}
				},
			}
		},
		{
			["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["VALUE_CHANGE_TABLE"] 	= 
					{
						-- 1.5 years
						{"TimeTakenForExpeditionEvent_Easy", "47335389"},
						-- 2 years
						{"TimeTakenForExpeditionEvent",	   "63113851"},
					}
				}
			}
		},
				}}}}