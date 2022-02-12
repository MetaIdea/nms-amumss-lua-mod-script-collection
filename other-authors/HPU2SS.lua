NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "__HPU2SS.pak",														--this is the name of the .PAK this .LUA will produce in your MODS folder
["MOD_DESCRIPTION"]		= "Changes all Harzard Protection Units into Shield Stations.",		--optional description for the .LUA
["MOD_AUTHOR"]			= "XAVIER0SELF",													--optional handle
["NMS_VERSION"]			= "3.15",															--optional game version reference that you change manually when updating
["MODIFICATIONS"]		= {{  --You can modify all  "value"  below. 	    	
						      --Just be sure to keep the edit within the quotations.
							  --All green text is merely comments.
							  --Edit black text to achieve results.
							  --Look for this structure:
							  --
							  --			["SPECIAL_KEY_WORDS"] = {
							  --				["VALUE_CHANGE_TABLE"] = {
							  --		    		{ "ID"  ,  "value" },
							  --                               
							  --			eg.    {"Reward","SHIELDSMALL"}
							  --		   	  	  -no modify-  -do modify-
		 
["MBIN_CHANGE_TABLE"]	= {	
	
	
	---------------------
	----CHANGE EFFECT---- from restoring hazard protection to restoring shields
	----------------------------------------------------------------------------
	
	
	{["MBIN_FILE_SOURCE"]	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELDSTATION\ENTITIES\SHIELDSTATION.ENTITY.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Just beneath these three lines in green text, replace "SHIELDSMALL" with "SHIELDLARGE" to restore 100% shields per use. ("SHIELDSMALL" is 30% per use)
		  ---or replace "SHIELDSMALL" with "REFRESH_HAZ" to revert it back to hazard protection restoration 
		  ----probably can be changed to activate all sorts of different effects instead of recharging shields, experiment!
		["SPECIAL_KEY_WORDS"] = {"","GcRewardAction.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"Reward","SHIELDSMALL"}}},			--Original "REFRESH_HAZ"								
	}},
	
	
	---------------------
	-----CHANGE COST-----  per use from: 10x Ferrite Dust   to: 10x Di-hydrogen
	----------------------------------------------------------------------------
	
	
	{["MBIN_FILE_SOURCE"]	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELDSTATION\ENTITIES\SHIELDON.ENTITY.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Just beneath these three lines in green text, you can replace "LAUNCHSUB" with "LAND1" to revert cost back to Ferrite Dust.
		  ---additionally, you can edit the cost to what ever you like, including "0" for -FREE- shield recharges.
		  ----if you're a real keener, you can replace "LAUNCHSUB" with anything you want found in "ITEM-LIST GOOGLE-DOC" link provided in the README.txt 
		["SPECIAL_KEY_WORDS"] = {"","ActivationCost"},
			["VALUE_CHANGE_TABLE"] = {
				{"SubstanceId","LAUNCHSUB"},		--Original "LAND1"
				{"Cost","10"}}},				--Original "10"
	}},
	
	
	--------------------------------------------------------------------------------------
	------NAMES-------------------------------------------------------------------------------------------------
	----------------------------------------------------------------------------------------------------------------------------------
	
	
		--Below will replace the NAMES for the Hazard Protection Unit in the English Language gamefiles.  
		--You can rename it to what ever you want.
		--Look for structure: 
		--		
		--		["SPECIAL_KEY_WORDS"] = {
		--			["VALUE_CHANGE_TABLE"] = {
		--				{"Value" , "name"},
		--					                   
		--		eg.		{"Value" , "Shield Station"}
		--			   -no modify-    -do modify-
	


	{["MBIN_FILE_SOURCE"]	= "LANGUAGE\NMS_LOC1_ENGLISH.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --"Subtitle" (build menu title)
		["SPECIAL_KEY_WORDS"] = {"Id","HAZARD_UNIT_SUBTITLE","English","VariableSizeString.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value","Shield Station"}}},				--Original "Hazard Protection Unit"
	}},
	
	
			
	{["MBIN_FILE_SOURCE"]	= "LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --"Name" (all uppercase)
		["SPECIAL_KEY_WORDS"] = {"Id","BLD_HAZSTATION_NAME","English","VariableSizeString.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value","SHIELD STATION"}}},				--Original "HAZARD PROTECTION UNIT"
				
			
		{ --"NameLower" {displayed name on ID card) 
		["SPECIAL_KEY_WORDS"] = {"Id","BLD_HAZSTATION_NAME_L","English","VariableSizeString.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value","Shield Station"}}},				--Original "Hazard Protection Unit"
		
	
		{ --"Subtitle" on ID card (appears under displayed name)
		["SPECIAL_KEY_WORDS"] = {"Id","BLD_HAZSTATION_SUBTITLE","English","VariableSizeString.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value","Shield Restoration Module"}}},	--Original "Hazard Protection Charging System"
	
	  
		{ --"Description" on ID card 
		["SPECIAL_KEY_WORDS"] = {"Id","BLD_HAZSTATION_DESCRIPTION","English","VariableSizeString.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value","A wall mounted module that can be used to recharge the user's &lt;COMMODITY&gt;Shield&lt;&gt; systems.&#xA;&#xA;The Shield Station must be kept charged with a source of &lt;FUEL&gt;fuel&lt;&gt;."}}},
			--Original   "A wall mounted module that can be used to recharge the user's &lt;COMMODITY&gt;Hazard Protection&lt;&gt; systems.&#xA;&#xA;The Hazard Protection Unit must be kept charged with a source of &lt;FUEL&gt;fuel&lt;&gt;."
	
		{ --name displayed for interaction with object
		["SPECIAL_KEY_WORDS"] = {"Id","UI_HAZARD_STATION","English","VariableSizeString.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value","Shield Station"}}},				--Original "Hazard Protection Unit"
	}},


	------------------------------------------------------------------------------------	
	-------CHANGE RECIPE---------------------------------------------------------------------------------
	----------------------------------------------------------------------------------------------------------------------


		--The section below allows you to change the RECIPE for building the Hazard Protection Unit.
		--You can specify what ingredients by looking through the "ITEM-LIST GOOGLE-DOC" link included in the README.txt (some items in the list may not work)
		--
		--Everything down there is vanilla NMS by default.
		

		
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {
	

	
		 ---------------
		{--Ingredient 1
		 ---------------
		["SPECIAL_KEY_WORDS"] = {"Id","SHIELDSTATION","ID","CASING"},
			["VALUE_CHANGE_TABLE"] 	= {
				{"ID","CASING"},					--Original "CASING"  	--ingredient	     (eg. "CASING" is Metal Plate)
				{"Amount","1"}}},					--Original "1"		 	--amount required	 (can change to "0" for no requirement, but ingredient will remain on list. it's requirements will be met though)	
		
		
		
		 ---------------
		{--Ingredient 2
		 ---------------
		["SPECIAL_KEY_WORDS"] 		= {"Id","SHIELDSTATION","ID","CAVE2"},
			["VALUE_CHANGE_TABLE"] 	= {
				{"ID","CAVE2"},						--Original "CAVE2"  	--ingredient		 (eg. "CAVE2" is Ionized Cobalt)
				{"Amount","20"}}},					--Original "20"		 	--amount required	 (can change to "0" for no requirement, but ingredient will remain on list. it's requirements will be met though)
		
		
		
		 ---------------		
		{--Ingredient 3
		 ---------------
		["SPECIAL_KEY_WORDS"] 		= {"Id","SHIELDSTATION","ID","HOT1"},
			["VALUE_CHANGE_TABLE"] 	= {
				{"ID","HOT1"},						--Original "HOT1"  		--ingredient         (eg. "HOT1" is Phosphorous)
				{"Amount","50"}}},					--Original "50"		 	--amount required	 (can change to "0" for no requirement, but ingredient will remain on list. it's requirements will be met though)		
	}},
}}}}