ModName = "PTSd UI Description Adjustments"
GameVersion = "5_03"
Description = "Changes the UI display for things like Settlement Production rate, Crop Growth time (in the construction menu), Tech descriptions, etc. to match the adjusted PTSd rates"

VesperSailDesc =
[[A high-performance &lt;STELLAR&gt;solar sail&lt;&gt;, deployed automatically during flight. This advanced &lt;TECHNOLOGY&gt;propulsion device&lt;&gt; generates an electric field within the sails themselves, allowing the starship to build momentum from the solar wind.&#xA;&#xA;Offers substantial gains in &lt;STELLAR&gt;fuel efficiency&lt;&gt; and &lt;STELLAR&gt;Pulse Jump speed&lt;&gt; performance over conventional engine systems, as well as the photovoltaic cells enabling more &lt;STELLAR&gt;efficient&lt;&gt; use of the starship's &lt;TECHNOLOGY&gt;launch systems&lt;&gt;.]]

ConsciousnessBridgeMissionHint =
[[The Void Egg requires a &lt;TECHNOLOGY&gt;Consciousness Bridge&lt;&gt;&#xA;Gather %ITEM% to craft Consciousness Bridge: %CURRENT%/%AMOUNT%&#xA;%ITEM% can be mined on planets in &lt;TRADEABLE&gt;green star systems&lt;&gt;]]

PearlTime =
[[A medium-sized, farmable Crystal Orb that yields an occasional harvest of valuable Albumen Pearls.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;1 hour&lt;&gt;]]

GravTime =
[[A strange, potentially parasitic plant that yields an occasional harvest of the highly tradable commodity, Gravitino Balls.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;4 hours&lt;&gt;]]

VenomTime =
[[A small, innocuous looking plant whose leaves periodically secrete a small amount of potent Sac Venom, a valuable trading commodity.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;12 hours&lt;&gt;]]

NipNipTime =
[[This medicinal herb is known for its pungent buds, which are harvested to produce Gek Nip. NipNip thrives in dank environments, and often grows as a weed.&#xA;&#xA;Suitable for hydroponic planting indoors. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;4 hours 20 mins&lt;&gt;]]

SettlementRate =
[[%NUM% every 6 hours]]

SalvageConfirm =
[[&lt;FUEL&gt;WARNING:&lt;&gt; starship '&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;' will be destroyed along with all cargo.&lt;NEWLINE&gt;Select desired &lt;TECHNOLOGY&gt;customisation module&lt;&gt; to confirm salvage operation...&lt;NEWLINE&gt;Does not work on &lt;FUEL&gt;Living,&lt;&gt; or &lt;FUEL&gt;Interceptor&lt;&gt; starships]]

SalvageAttempt =
[[Attempt to extract Reactor]]

SalvageEngine =
[[Salvage Engines + Reactor]]

SalvageWings =
[[Salvage Wings + Reactor]]

SalvageLWing =
[[Salvage Left Wing + Reactor]]

SalvageRWing =
[[Salvage Right Wing + Reactor]]

SalvageHull =
[[Salvage Hull + Reactor]]

SalvageCockpit =
[[Salvage Cockpit + Reactor]]

SalvageSails =
[[Salvage Sails + Reactor]]

AresTradeItem4 = "Glowing Minerals"

AresTradeItem6 = "Pirate Transponders"

function AresTradeOffer (ItemName)
    return
[[Traveller hopes to make progress. Traveller tests themselves. I will help. An exchange. Progress for progress.&#xA;Or wealth, perhaps. Experience or materials. Both valid. Today... &lt;STELLAR&gt;]]..ItemName..[[&lt;&gt;.]]
end

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,   
    ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\\NMS_LOC1_ENGLISH.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_PEARL_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PearlTime}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_NIP_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NipNipTime}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\\NMS_LOC5_ENGLISH.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NPC_NEXUSMILES_LANG_3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AresTradeOffer (AresTradeItem4)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NPC_NEXUSMILES_LANG_6"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AresTradeOffer (AresTradeItem6)}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\\NMS_LOC6_ENGLISH.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_BIO_SHIP_MISSION1_MSG2B"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ConsciousnessBridgeMissionHint}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\\NMS_LOC7_ENGLISH.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SETTLEMENT_PROD_RATE_NUM"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SettlementRate}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SOLAR_SAIL_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", VesperSailDesc}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\\NMS_LOC8_ENGLISH.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SALVAGE_PROD_CONFIRM_LANG"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageConfirm}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_NO_SALVAGE_PRODS"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageAttempt}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_SALVAGE_PRODS_ENG"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageEngine}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_SALVAGE_PRODS_WING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageWings}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_SALVAGE_PRODS_WING_L"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageLWing}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_SALVAGE_PRODS_WING_R"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageRWing}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_SALVAGE_PRODS_HULL"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageHull}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_SALVAGE_PRODS_COCK"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageCockpit}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_COST_SALVAGE_PRODS_SAIL"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SalvageSails}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\\NMS_UPDATE3_ENGLISH.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PLANTPROD_NIP_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NipNipTime}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PLANT_11_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NipNipTime}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PLANT_12_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", VenomTime}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PLANT_13_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GravTime}
							}
						},
					}
				},
            }
		}
    }
}	