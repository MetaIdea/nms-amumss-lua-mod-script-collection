----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "BETA1"
METADATA_MOD_DESC       = "LANG"






----------------------------------------------------------------------------------------------------
-- tooltips, new Hesperus dialogue, start and credits
----------------------------------------------------------------------------------------------------

TEXT_TOOLTIP_TITLE = "Technology Opportunity Detected"
TEXT_TOOLTIP_ANOMALY =
[[
&lt;CATALYST&gt;New starship technology&lt;&gt; blueprints available&#xA;
Visit Iteration: Hesperus to assist them in research
]]
TEXT_TOOLTIP_STATION = TEXT_TOOLTIP_ANOMALY .. "&#xA;While in space, summon the &lt;SPECIAL&gt;Space Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)"

TEXT_DIALOGUE_RESEARCH = "Research exotic technology"

TEXT_MAIN_TITLE = "Lost in Time"
TEXT_MAIN_SUB = "Research exotic starship technology"
TEXT_MAIN_DESC = "Iteration: Hesperus has uncovered traces of temporal distortions across the galaxy. They ask for assistance in unveiling their secrets."

TEXT_MAIN_END_T = "PROJECT APOLLO"
TEXT_MAIN_END_A = "Mod developed by: FriendlyFirePL"

----------------------------------------------------------------------------------------------------
-- main mission - stage 0
----------------------------------------------------------------------------------------------------

TEXT_MAIN_S0_OSD = "TEMPORAL FRACTURE DETECTED &lt;IMG&gt;SLASH&lt;&gt; STARSHIP SYSTEMS COMPROMISED"
TEXT_MAIN_S0_HUD = "STARSHIP SYSTEMS COMPROMISED"
TEXT_MAIN_I0_LABEL1 = "&lt;TECHNOLOGY&gt;Starship Autodiagnostics System&lt;&gt;"
TEXT_MAIN_I0_LABEL2 = "&lt;SPECIAL&gt;????????&lt;&gt;"

TEXT_MAIN_I0_STORY1 = 
[[
&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; WARNING &lt;IMG&gt;SLASH&lt;&gt;  TEMPORAL FRACTURE DETECTED &lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; WARNING &lt;IMG&gt;SLASH&lt;&gt; BOUNDARY FAILURE IN PROGRESS &lt;IMG&gt;SLASH&lt;&gt;&#xA;
Starship integrity report follows:&#xA;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Primary Propulsion Systems: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;DISABLED&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Navigational Computer: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;OFFLINE&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Communicator Interface: &lt;DELAY&gt;1&lt;&gt;&lt;SPECIAL&gt;STATUS_UNKNOWN&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&#xA;
&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; &lt;SPECIAL&gt;WARNING&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; ANOMALOUS TRANSMISSION INTERCEPTED &lt;IMG&gt;SLASH&lt;&gt;
]]
TEXT_MAIN_I0_OPTION1 = "Analyze transmission"
TEXT_MAIN_I0_STORY2 = "&lt;FONT02&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- the Waveform --- leave --- &lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- every surface --- forsaken --- &lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- strength --- us all --- &lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;"
TEXT_MAIN_I0_STORY3 = 
[[
Extracting data from the transmission:&#xA;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Message timestamp: %RELAY%&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Galactic address: %UA%&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Sender signature: &lt;DELAY&gt;3&lt;&gt;TRAVELLER_&lt;DELAY&gt;1&lt;&gt;&lt;SPECIAL&gt;????????&lt;&gt;&lt;DELAY&gt;1&lt;&gt;
]]
TEXT_MAIN_I0_STORY4 = "With the starship drifting in space, I examine the logs in hope of learning more about this mysterious signal. My efforts are in vain, as the data appears to be corrupted - the coordinates for signal location and transmission time change rapidly on the screen.&#xA;As the control systems come back online, I prepare to make my way towards the Space Anomaly. I hope one of it's residents will be able to answer the many questions I have."
TEXT_MAIN_I0_OPTION2 = "End diagnostics"

----------------------------------------------------------------------------------------------------
-- main mission - stage 1
----------------------------------------------------------------------------------------------------

TEXT_MAIN_S1_OBJ = "Construct a temporal scanner"
TEXT_MAIN_S1_DESC1 = "Space Anomaly's systems detected &lt;SPECIAL&gt;temporal anomalies&lt;&gt;.&#xA;Speak with Iteration: Hesperus to learn more."
TEXT_MAIN_S1_TIP1 = "Space Anomaly's systems detected &lt;SPECIAL&gt;temporal anomalies&lt;&gt;&#xA;Speak with Iteration: Hesperus to learn more"

TEXT_MAIN_I1_LABEL = "Iteration: Hesperus"
TEXT_MAIN_I1_STORY1 = "Ah, Traveller-kindred, welcome. To what do I owe this pleasure?"
TEXT_MAIN_I1_OPTION1 = "Tell them about the transmission"
TEXT_MAIN_I1_STORY2 = "That is... most troubling, kindred. I have no explanation for the transmission you received, but the rest... It appears you have encountered a temporal distortion. A fracture in the flow of time, manifested in our reality.&#xA;Recently, the instruments aboard Anomaly have picked up traces of temporal energy emerging all across the galaxy. I am most intrigued by them, yet their true nature eludes me. Perhaps we could help each other."
TEXT_MAIN_I1_OPTION2 = "Ask what you can do"
TEXT_MAIN_I1_STORY3 = "I have devised blueprints for a temporal scanner, based on my studies of the data from our instruments. Once you construct this device, you should be able to locate those anomalies more acurately.&#xA;I can not guarantee you will get the answers you seek this way, Traveller-kindred. I can only hope we will get closer to the truth behind these anomalies. For now though, please, accept these blueprints."
TEXT_MAIN_I1_OPTION3 = "Take the blueprints"
TEXT_MAIN_I1_STORY4 = "I thank Iteration: Hesperus for their assistance."

TEXT_MAIN_S1_DESC2 = "Collect unique components for the scanner device.&#xA;Select a new mission from the Mission Log.&#xA;Construct the scanner in Multi-Tool inventory."
TEXT_MAIN_S1_TIP2 = "Collect unique components for the scanner device&#xA;Select a new mission from the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Construct the scanner in Multi-Tool inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)"

----------------------------------------------------------------------------------------------------
-- main mission - stage 2
----------------------------------------------------------------------------------------------------

TEXT_MAIN_S2_OBJ = "Find info about the Traveller"
TEXT_MAIN_S2_DESC = "Scanner needs to be tuned to a &lt;VISOR&gt;unique energy signature&lt;&gt;.&#xA;Launch into space and activate the starship scanner."
TEXT_MAIN_S2_TIP = "Scanner needs to be tuned to a &lt;VISOR&gt;unique energy signature&lt;&gt;&#xA;Launch into space and activate the starship scanner (&lt;IMG&gt;SCAN&lt;&gt;)"

TEXT_MAIN_E2_OSD = "SCANNER OVERRIDE &lt;IMG&gt;SLASH&lt;&gt; TEMPORAL SIGNATURE LOCKED &lt;IMG&gt;SLASH&lt;&gt; COORDINATES AVAILABLE"
TEXT_MAIN_E2_TIP1 = "Investigate the &lt;SPECIAL&gt;temporal signature&lt;&gt;&#xA;Land near the &lt;STELLAR&gt;approximate coordinates&lt;&gt;"
TEXT_MAIN_E2_TIP2 = "Examine the Boundary Failure&#xA;Interact with the &lt;TECHNOLOGY&gt;terminal&lt;&gt;"
TEXT_MAIN_E2_MARKER = "Temporal signature"
TEXT_MAIN_E2_TARGET = "[ Temporal signature located ]"

TEXT_MAIN_I2_LABEL = "Data Repository BK-201"
TEXT_MAIN_I2_STORY1 = "An unnatural energy crackles in the air around this aberrant construction, blasting me with waves of static. My suit flashes an array of warnings and errors as I make my way towards its main terminal.&#xA;Upon interacting with it, I discover it holds a series of data logs, similar in nature to the mysterious transmission I encountered before.&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP&lt;&gt;"
TEXT_MAIN_I2_STORY2 = "[ Sol 51 ] &lt;IMG&gt;SLASH&lt;&gt; ... managed to get the Waveform Engine repaired ... now I can finally leave this toxic hellhole ... Gisto Major, may you rot to the core ...&#xA;[ Sol 136 ] &lt;IMG&gt;SLASH&lt;&gt; ... had to run from the worms ... this cursed dust is everywhere, spreading to every surface ... has Atlas forsaken this place? ...&#xA;[ Sol 247 ] &lt;IMG&gt;SLASH&lt;&gt; ... must reenter the Cycle ... find strength in Perpetuity ... praised be the Recursion ... may the Leviathan take pity on us all ...&#xA;[ Sol 312 ] &lt;IMG&gt;SLASH&lt;&gt; ... the Utopia project was a trap, we were never meant to restore it ... pirate dreadnoughts swarmed all over us ... the Prismatic Bulwark got destroyed ... need to land and repair it ..."
TEXT_MAIN_I2_STORY3 = "&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP_STOP&lt;&gt;This journal proves the late Traveller visited this place. It bears their unique temporal signature, a crescendo of the all the broken boundaries that led them to this reality... And ultimately, to their demise..."
TEXT_MAIN_I2_STORY4 = "But my purpose here is clear. The Fabricator module has been active in presence of a temporal distortion for some time now. It is time I finalize its construction."
TEXT_MAIN_I2_OPTION = "Activate the scanner"
TEXT_MAIN_I2_STORY5 = "As the Fabricator starts processing data, the screen on my Multi-Tool flashes bombarded with messages. After a while, the process is complete - the anomaly in it was imprinted with Traveller's temporal signature.&#xA;I can finally use the scanner for my own purpose. Before leaving this place, I notice one last message on the screen - the Fabricator managed to extract some kind of data from this structure."

----------------------------------------------------------------------------------------------------
-- main mission - stage 3
----------------------------------------------------------------------------------------------------

TEXT_MAIN_S3_OBJ = "Synthesize exotic starship technology"
TEXT_MAIN_S3_DESC1 = "Return to Space Anomaly to inform Iteration: Hesperus of your findings.&#xA;Present them with the &lt;TECHNOLOGY&gt;Salvaged Framework Module&lt;&gt;."
TEXT_MAIN_S3_TIP = "Return to Space Anomaly to inform Iteration: Hesperus of your findings&#xA;Present them with the &lt;TECHNOLOGY&gt;Salvaged Framework Module&lt;&gt;"
TEXT_MAIN_S3_DESC2 = "Collect more data using the &lt;TECHNOLOGY&gt;Impossible Fabricator&lt;&gt;.&#xA;While on a planet, activate the scanner from the Multi-Tool inventory.&#xA;Examine the crash sites of &lt;SPECIAL&gt;fallen Travellers&lt;&gt; to extract the temporal data.&#xA;Use it to synthesize &lt;CATALYST&gt;exotic technology blueprints&lt;&gt;."

TEXT_MAIN_I3_LABEL = "Iteration: Hesperus"
TEXT_MAIN_I3_STORY1 = "Ah, welcome back, kindred. Have you sought out the source of the temporal anomalies?"
TEXT_MAIN_I3_STORY2 = "I tell them of the journey I've been through. I tell them the story of the fallen Traveller, of the many realities they have been through. Realities that I could never have dreamt of, now envisioning them just outside my reach. Their eyes are fixed on me, calm and understanding.&#xA;At last, I mention the data module produced by the Fabricator unit. These words seem to have piqued their interest..."
TEXT_MAIN_I3_OPTION = "Present the data module"
TEXT_MAIN_I3_STORY3 = "Thank you for this gift, Traveller-kindred. My scans indicate this device carries unique data structures... fragments of instruments this late Traveller was in possession of.&#xA;With the Impossible Fabricator fully operational, you should be able to acquire more of this elusive data. When you do, please, bring it to me. I will synthesize these exotic blueprints to aid you in your journey."
TEXT_MAIN_I3_STORY4 = "Iteration: Hesperus begins their work at once. They offer me to purchase a new technology module of my choosing..."
TEXT_MAIN_I3_REWARD = "Research new technology"

TEXT_MAIN_S3_INFO0 = "Continue assisting Iteration: Hesperus in research of temporal anomalies to synthesize more &lt;CATALYST&gt;exotic starship technology&lt;&gt;:"
TEXT_MAIN_S3_INFO1 = "Collect more data using the &lt;TECHNOLOGY&gt;Impossible Fabricator&lt;&gt;"
TEXT_MAIN_S3_INFO2 = "While on a planet, activate the scanner from the Multi-Tool inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)"
TEXT_MAIN_S3_INFO3 = "Examine the crash sites of &lt;SPECIAL&gt;fallen Travellers&lt;&gt; to extract the temporal data"
TEXT_MAIN_S3_INFO4 = "Purchase new blueprints with collected Salvaged Framework Units"

----------------------------------------------------------------------------------------------------
-- mission for plating
----------------------------------------------------------------------------------------------------

TEXT_PLATING_TITLE = "Locate Stalwart Plating"
TEXT_PLATING_SUB = "Mission: " .. TEXT_MAIN_TITLE
TEXT_PLATING_DESC = "The scanner casing requires a special material that will withstand temporal anomalies. I will make my way to a material research facility that may hold the data I need."

TEXT_PLATING_S1_OBJ = "Locate scanner component"
TEXT_PLATING_S1_DESC = "&lt;RARE&gt;Advanced materials&lt;&gt; for scanner casing required.&#xA;Launch into space to locate a &lt;TECHNOLOGY&gt;research facility&lt;&gt;."
TEXT_PLATING_S1_TIP1 = "&lt;RARE&gt;Advanced materials&lt;&gt; for scanner casing required&#xA;Launch into space to locate a &lt;TECHNOLOGY&gt;research facility&lt;&gt;"
TEXT_PLATING_S1_TIP2 = "&lt;RARE&gt;Advanced materials&lt;&gt; for scanner casing required&#xA;Interact with the terminal at &lt;TECHNOLOGY&gt;research facility&lt;&gt;"

TEXT_PLATING_E1_OSD = "DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; COORDINATES RECEIVED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN"
TEXT_PLATING_E1_TIP1 = "Extract data from the &lt;TECHNOLOGY&gt;research facility&lt;&gt;&#xA;Land near the &lt;STELLAR&gt;approximate coordinates&lt;&gt;"
TEXT_PLATING_E1_TIP2 = "Break into the &lt;TECHNOLOGY&gt;research facility&lt;&gt;&#xA;Damaging facilities may attract &lt;FUEL&gt;Sentinel attention&lt;&gt;"
TEXT_PLATING_E1_MARKER = "Research Facility"
TEXT_PLATING_E1_TARGET = "[ Research facility located ]"

TEXT_PLATING_I1_LABEL = "Research facility terminal"
TEXT_PLATING_I1_OPTION = "Repair wiring"
TEXT_PLATING_I1_STORY1 = "I arrived at the research facility. The data logs are scrambled, but I manage to get some information about this place.&#xA;The primary directive of this installation was research of anomalous materials. The scientist were experimenting with various samples of the material found on ancient monoliths.&#xA;The available logs end with mentions of a breakthrough in recreating said material. The rest of the databanks appear to be offline. Perhaps there exists a way to reestablish the connection..."
TEXT_PLATING_I1_STORY2 = "Nanites seep deep into the hardware of the terminal. As they flow over the circuits leading to the mainframe, they are able to locate the damaged connection sockets and repair them.&#xA;The final log entries become available. I'm presented with a recipe for a new material."

----------------------------------------------------------------------------------------------------
-- mission for time fragment
----------------------------------------------------------------------------------------------------

TEXT_FRAGMENT_TITLE = "Locate Encapsulated Variance"
TEXT_FRAGMENT_SUB = "Mission: " .. TEXT_MAIN_TITLE
TEXT_FRAGMENT_DESC = "The scanner will be powered by a caputred temporal anomaly. Probing it will resonate with other anomalies of its kind, allowing me to locate them. Iteration: Hesperus informed me that Space Anomaly's systems have detected a spike in temporal energy in this region of galaxy."

TEXT_FRAGMENT_S1_OBJ = "Locate scanner component"
TEXT_FRAGMENT_S1_DESC = "A localized &lt;VISOR&gt;temporal singularity&lt;&gt; can be probed to reveal other anomalies.&#xA;Launch into space to continue the search for components."
TEXT_FRAGMENT_S1_TIP1 = "A localized &lt;VISOR&gt;temporal singularity&lt;&gt; can be probed to reveal other anomalies&#xA;Launch into space to continue the search for components"
TEXT_FRAGMENT_S1_TIP2 = "A localized &lt;VISOR&gt;temporal singularity&lt;&gt; can be probed to reveal other anomalies&#xA;Examine the monolith structure"

TEXT_FRAGMENT_E1_MESSAGE = "DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; TEMPORAL SURGE DETECTED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN"
TEXT_FRAGMENT_E1_TIP1 = "Follow the energy signature&#xA;Land near the &lt;STELLAR&gt;approximate coordinates&lt;&gt;"
TEXT_FRAGMENT_E1_TIP2 = "Investigate the temporal distortion&#xA;Examine the monolith structure"
TEXT_FRAGMENT_E1_MARKER = "Energy source"
TEXT_FRAGMENT_E1_TARGET = "[ Energy source detected ]"

TEXT_FRAGMENT_I1_LABEL = "Unstable Monolith"
TEXT_FRAGMENT_I1_OPTION = "Contain the anomaly"
TEXT_FRAGMENT_I1_STORYA = "I stand before the monolith, a silent testament of the ages past. An unwavering agent of ages that are yet to be. And yet, this sacrament of stone eternal strikes me with fear.&#xA;Where normally I would be met with perpetual silence, I hear a rumbling noise. Where normally I would embrace surroundings of this planet, I witness a boiling chasm of colours.&#xA;This monolith... No, this machine is in distress. As I try to regain focus, a series of visions begins forming in my mind."
TEXT_FRAGMENT_I1_STORYB = "[1693500313] Running process: PROTOCOL_ATLAS &lt;IMG&gt;SLASH&lt;&gt; Process status: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;ERROR_0x00000101&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Faulting module: RENDERPRIMEREALITY &lt;IMG&gt;SLASH&lt;&gt; Faulting block: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;1616161616001616&lt;&gt;"
TEXT_FRAGMENT_I1_STORYC = "The error messages repeat over and over. Time converges and compresses to this very location. Space warps around and gives in to the unfolding iridescent cataclysm. Only the obsidian spire remains.&#xA;At the heart of this phenomenon, I see a tear in reality. An ethereal scar cast in monolith, its scream for help echoing in a place where no words exist.&#xA;Whatever I will do, I must do it quickly..."
TEXT_FRAGMENT_I1_STORYD = "As I hold the Atlas seed in my hand, a whirl of particles and light emerges from the monolith and settles within it. The noise and colours surrounding this place abate. The reality of this place is restored.&#xA;At last, I'm left with a captured temporal anomaly."

----------------------------------------------------------------------------------------------------
-- mission for matrix
----------------------------------------------------------------------------------------------------

TEXT_CIRCUIT_TITLE = "Locate Harmonic Matrix"
TEXT_CIRCUIT_SUB = "Mission: " .. TEXT_MAIN_TITLE
TEXT_CIRCUIT_DESC = "The anomaly powering the scanner needs a regulator to keep it dormant outside of activations. I recall that harmonic camps might make use of a similar technology that allows them to stay inert in current timeline."

TEXT_CIRCUIT_S1_OBJ = "Locate scanner component"
TEXT_CIRCUIT_S1_DESC = "Harmonic camps hold technology to &lt;TECHNOLOGY&gt;regulate temporal anomalies&lt;&gt;.&#xA;Locate a camp on a dissonant planet from space."
TEXT_CIRCUIT_S1_TIP1 = "Harmonic camps hold technology to &lt;TECHNOLOGY&gt;regulate temporal anomalies&lt;&gt;&#xA;Locate a camp on a dissonant planet from space"
TEXT_CIRCUIT_S1_TIP2 = "Harmonic camps hold technology to &lt;TECHNOLOGY&gt;regulate temporal anomalies&lt;&gt;&#xA;Interact with the central terminal"

TEXT_CIRCUIT_E1_MESSAGE = "DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; HARMONIC ECHO LOCATED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN"
TEXT_CIRCUIT_E1_TIP1 = "Locate the abandoned &lt;TRANS_BUI&gt;Autophage encampment&lt;&gt;&#xA;Land near the &lt;STELLAR&gt;approximate coordinates&lt;&gt;"
TEXT_CIRCUIT_E1_TIP2 = "Examine the workings of the Autophage race&#xA;Interact with the central terminal"
TEXT_CIRCUIT_E1_MARKER = "Harmonic Camp"
TEXT_CIRCUIT_E1_TARGET = "[ Harmonic camp located ] "

TEXT_CIRCUIT_I1_LABEL = "Autophage Terminal"
TEXT_CIRCUIT_I1_STORYA = "I find the terminal in disarray. The fragments of casing has been removed, giving me access to the internal mechanisms. Between various components I can make out the Harmonic Matrix - the core of this unit.&#xA;Despite the terminal being dormant, the matrix glows with a faint light, indicating it might still be operational. It will not be of any use in this destroyed machinery..."
TEXT_CIRCUIT_I1_OPTION = "Remove the matrix"
TEXT_CIRCUIT_I2_STORYA = "As I remove the Harmonic Matrix from the housing and step back, the terminal comes back online. Its screen flashes and begins to display a series of distorted warnings:"
TEXT_CIRCUIT_I2_STORYB =
[[
&lt;TRANS_BUI&gt;... u&#x3b7;au&#x3c4;h0riz&#x3b5;d &#x3b1;cce&#x3c2;s d&#x3b5;tec&#x3c4;ed ...&lt;&gt;&lt;NEWLINE&gt;
&lt;TRANS_BUI&gt;... c&#x3b5;ntr&#x3b1;l &#x3b7;0de d&#x3b1;mag&#x3b5;d ...&lt;&gt;&lt;NEWLINE&gt;
&lt;TRANS_BUI&gt;... &#x3c1;ro&#x3c4;0co1 &lt;HIGHLIGHT&gt;&#x3b2;r0&#x3ba;en gla&#x3c2;&#x3c2;&lt;&gt; &lt;TRANS_BUI&gt;i&#x3b7; &#x3b5;ffec&#x3c4; ...&lt;&gt;
]]
TEXT_CIRCUIT_I2_STORYC = "An alarm rings out, alerting Sentinels to the presence of an intruder. As they begin to swarm this camp, the terminal renders a new image. A heart of a Sentinel unit warped by corruption of this planet. Maybe that will be the right device to use as a replacement..."
TEXT_CIRCUIT_I2_OPTION = "Replace the matrix"
TEXT_CIRCUIT_I2_STORYD = "I hastily rewire the terminal to connect it to a Crystallised Heart taken from a spider-like Sentinel. The terminal reboots to normal operations and the alarm stops.&#xA;Finally, I can make my way out of this place with another component for the scanner."

----------------------------------------------------------------------------------------------------
-- mission from scanner activation
----------------------------------------------------------------------------------------------------

TEXT_SCANNER_TITLE = "Lost in Time: Planet %PLANET%"
TEXT_SCANNER_SUB = "Investigate the crash site"
TEXT_SCANNER_DESC = "Impossible Fabricator detected a temporal signature on planet %PLANET%. I will investigate this anomaly in hopes of extracting another piece of technology data."

TEXT_SCANNER_S1_OBJ = "Extract data from the crash site"
TEXT_SCANNER_S1_DESC = "&lt;SPECIAL&gt;Temporal signature&lt;&gt; detected on planet %PLANET%.&#xA;Investigate the crash site to extract &lt;TECHNOLOGY&gt;starship technology data&lt;&gt;."
TEXT_SCANNER_S1_TIP = "&lt;SPECIAL&gt;Temporal signature&lt;&gt; detected on planet %PLANET%&#xA;Investigate the crash site to extract &lt;TECHNOLOGY&gt;starship technology data&lt;&gt;"
TEXT_SCANNER_S2_TIP = "System authorities detected use of illegal technology&#xA;Defeat the &lt;FUEL&gt;Sentinel forces&lt;&gt; or hide to loose their attention"

TEXT_SCANNER_E1_MESSAGE = "TEMPORAL ANOMALY DETECTED &lt;IMG&gt;SLASH&lt;&gt; TRAVELLER SIGNATURE MATCH &lt;IMG&gt;SLASH&lt;&gt; COORDINATES AVAILABLE"
TEXT_SCANNER_E1_TIP = "Investigate the &lt;SPECIAL&gt;Traveller crash site&lt;&gt;&#xA;Interact with the &lt;TECHNOLOGY&gt;distress beacon&lt;&gt;"
TEXT_SCANNER_E1_MARKER = "Traveller's signature"
TEXT_SCANNER_E1_TARGET = "[ Temporal signature detected ]"

TEXT_SCANNER_I1_STORY = 
[[
The communicator unit flashes as I arrive at the crashsite, evidence of someone attempting to make contact with &lt;SPECIAL&gt; a fallen Traveller&lt;&gt;.&#xA;&#xA;
The buzz and pop of static surrounds this crashed starship. Placing my hand against its hull, I discover a section which is oddly insubstantial. Where they should touch solid matter, my fingers pass through into thin air. A temporal anomaly engulfs this craft and I need to stop this process.
]]
TEXT_SCANNER_I1_OPTION = "Extract data"
TEXT_SCANNER_I1_RESULT = "The temporal distortion of this craft fades away as the Impossible Fabricator starts processing data. The technology the late Traveller possessed will see the light of stars again."
TEXT_SCANNER_I1_WANTED = "&lt;IMG&gt;SLASH&lt;&gt;NON-COMPLIANCE DETECTED&lt;IMG&gt;SLASH&lt;&gt;SENTINEL FORCES ENGAGED&lt;IMG&gt;SLASH&lt;&gt;"

----------------------------------------------------------------------------------------------------
-- mission for dissonant system warp path
----------------------------------------------------------------------------------------------------

TEXT_DISS_TITLE = "Radiant Peripheral"
TEXT_DISS_SUB = "Dissonant system located"
TEXT_DISS_DESC = "Radiant Peripheral detected a dissonant system in this region of the galaxy."

TEXT_DISS_S1_OBJ = "Reach the target planet"
TEXT_DISS_S1_OSD = "Dissonant System Located &lt;IMG&gt;SLASH&lt;&gt; Warp Path Available"

TEXT_DISS_S1_DESC = "Dissonant resonance detected in the &lt;SPECIAL&gt;%SYSTEM%&lt;&gt; system.&#xA;Warp path available in the Galaxy Map."
TEXT_DISS_S1_TIP = "Dissonant resonance detected in the &lt;SPECIAL&gt;%SYSTEM%&lt;&gt; system&#xA;Warp path available in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)"

TEXT_DISS_S2_DESC = "Dissonant energy field located. Reach the planet &lt;SPECIAL&gt;%PLANET%&lt;&gt;."
TEXT_DISS_S2_TIP = "Dissonant energy field located&#xA;Reach the planet &lt;SPECIAL&gt;%PLANET%&lt;&gt;"

----------------------------------------------------------------------------------------------------
-- scanner  + changes to expedition tech desctiption
----------------------------------------------------------------------------------------------------

TEXT_SCANNER_N = "IMPOSSIBLE FABRICATOR"
TEXT_SCANNER_L = "Impossible Fabricator"
TEXT_SCANNER_S = "Temporal Scanner Device"
TEXT_SCANNER_D = "A unique scanner module for the &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; technology.&#xA;&#xA;Engineered against all known data processing standards, this bespoke apparatus is capable of detecting and capturing asynchronous technology data. Universally defunct, traces of it can be pinpointed at locations of &lt;SPECIAL&gt;past anomalous activity&lt;&gt;.&#xA;&#xA;Warning: using this device might result in&#xA;&lt;PET3&gt;&lt;IMG&gt;SLASH&lt;&gt;NON-COMPLIANCE DETECTED&lt;IMG&gt;SLASH&lt;&gt;DATA EXPUNGED&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;"

TEXT_NEWDESC_SHIPJUMP = "A highly-tuned version of conventional starship &lt;TECHNOLOGY&gt;Pulse Engine&lt;&gt;. Wavefront occupancy has been pushed to the limit, creating a pulse experience that is both &lt;STELLAR&gt;efficient&lt;&gt; and &lt;STELLAR&gt;highly responsive&lt;&gt;.&#xA;&#xA;User is advised that &lt;EXOTIC&gt;Tritium&lt;&gt; is required to charge the drive. Tritium is abundant in &lt;COMMODITY&gt;near-space asteroid fields&lt;&gt;. Scan (&lt;IMG&gt;SHIPSCAN&lt;&gt;) to search for &lt;TECHNOLOGY&gt;tritium-rich asteroids&lt;&gt;.&#xA;&#xA;Hold &lt;IMG&gt;PULSEJUMP&lt;&gt; to engage Pulse Jump. Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.&#xA;&#xA;&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Pulse Engine&lt;&gt; technology before installing this replacement module."

TEXT_NEWDESC_HYPERDRIVE = "This experimental drive augments conventional &lt;TECHNOLOGY&gt;hyperdrive&lt;&gt; technology by distorting local geometry at the point of warp initialisation, boosting &lt;STELLAR&gt;range&lt;&gt; and &lt;STELLAR&gt;efficiency&lt;&gt; far beyond standard drives.&#xA;&#xA;User is advised to access Hyperdrive systems through the &lt;STELLAR&gt;Galactic Map&lt;&gt;.&#xA;&#xA;&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Hyperdrive&lt;&gt; technology before installing this replacement module."

TEXT_NEWDESC_LAUNCHER = "A custom-made &lt;TECHNOLOGY&gt;launch control&lt;&gt; system for high-performance starships. Sensitive gyroscopes and specialised control circuits plot custom take-off routines for increased launch &lt;STELLAR&gt;speed&lt;&gt; and &lt;STELLAR&gt;efficiency&lt;&gt;.&#xA; &#xA;Specialised, &lt;TECHNOLOGY&gt;deuterium-derived fuel&lt;&gt; is required to recharge thruster. Launch procedures require sufficient fuel levels before activation.&#xA; &#xA;Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet. Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.&#xA;&#xA;&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Launch Thruster&lt;&gt; technology before installing this replacement module."

TEXT_NEWDESC_MEGAWARP = "Unstable and highly-experimental piece of &lt;TECHNOLOGY&gt;freighter hyperdrive technology&lt;&gt;. This extreme gravity device generates a &lt;SPECIAL&gt;wormhole&lt;&gt; deep within the freighter's reactor core, inverting the entire vessel and transporting it across the universe.&#xA;&#xA;Speak to the &lt;STELLAR&gt;freighter's commander&lt;&gt; to engage the drive.&#xA;&lt;FUEL&gt;Warning&lt;&gt;: destination is not controllable."

----------------------------------------------------------------------------------------------------
-- starship shield and weapons
----------------------------------------------------------------------------------------------------

TEXT_SHIELD_N = "PRISMATIC BULWARK"
TEXT_SHIELD_L = "Prismatic Bulwark"
TEXT_SHIELD_S = "Impossible Shielding System"
TEXT_SHIELD_D = "Utilizing a yet to be understood &lt;TECHNOLOGY&gt;hard-light projector array&lt;&gt;, this module deploys a defensive matrix in combat scenarios. It provides &lt;STELLAR&gt;outstanding protection&lt;&gt; across full spectrum of both conventional projectiles and energy-based weaponry.&#xA;&#xA;Supply &lt;CATALYST&gt;catalytic elements&lt;&gt; to maintain the energy output of the array. Operates automatically once constructed within user's starship inventory.&#xA;&#xA;&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Deflector Shield&lt;&gt; technology before installing this replacement module."

TEXT_PHOTON_N = "REFACTORED GAUSS CANNON"
TEXT_PHOTON_L = "Refactored Gauss Cannon"
TEXT_PHOTON_S = "Kinetic Mass Driver"
TEXT_PHOTON_D = "An exotic modification for the &lt;VAL_ON&gt;Photon Cannon&lt;&gt; weapon system.&#xA;&#xA;The barrels have been retrofitted with &lt;TECHNOLOGY&gt;multi-stage magnetic resonators&lt;&gt; that are switched on and off in a precisely timed sequence. The oscillating magnetic fields allow the metallic projectiles to be accelerated along the axis of the barrel, increasing their &lt;STELLAR&gt;damage potential&lt;&gt;.&#xA;&#xA;User is advised that the extra energy used for operating coils causes the weapon system to &lt;PET5&gt;overheat quicker&lt;&gt;."

TEXT_CYCLO_N = "CALIBRATED ION SYNERGIZER"
TEXT_CYCLO_L = "Calibrated Ion Synergizer"
TEXT_CYCLO_S = "Amplified Plasma Caster"
TEXT_CYCLO_D = "An exotic modification for the &lt;VAL_ON&gt;Cyclotron Ballista&lt;&gt; weapon system.&#xA;&#xA;A &lt;TECHNOLOGY&gt;high-efficiency plasma generator&lt;&gt; with integrated controller unit produces ionized gas, which gets transferred through a series of Cobalt-plated channels before reaching the launch tubes. The collisions between metal electrons and charged medium particles result in faster &lt;RARE&gt;theta-state transition&lt;&gt;, effectively improving the &lt;STELLAR&gt;energy throughput&lt;&gt; of the Ballista unit."

TEXT_PHASE_N = "QUASAR RAY MODULATOR"
TEXT_PHASE_L = "Quasar Ray Modulator"
TEXT_PHASE_S = "Radiant Energy Engine"
TEXT_PHASE_D = "An exotic modification for the &lt;VAL_ON&gt;Phase Beam&lt;&gt; weapon system.&#xA;&#xA;This unit houses a &lt;RARE&gt;microscale black hole&lt;&gt; encased in a layer of Liquid Sun, separated by strong magnetic forces. As it gradually falls towards the singularity, the gravitational stresses produce enormous amounts of energy. Conversion of &lt;TECHNOLOGY&gt;potential energy to radiation&lt;&gt; results in forming of a &lt;STELLAR&gt;directed high-energy beam&lt;&gt;.&#xA;&#xA;User is advised the rapid increase in temperature causes the weapon to &lt;PET5&gt;overheat instantly&lt;&gt;, allowing only for a single shot to be fired before the cooldown cycle."

TEXT_SHOTGUN_N = "REVERSE RECOIL GENERATOR"
TEXT_SHOTGUN_L = "Reverse Recoil Generator"
TEXT_SHOTGUN_S = "Advanced Stabilization Platform"
TEXT_SHOTGUN_D = "An exotic modification for the &lt;VAL_ON&gt;Positron Ejector&lt;&gt; weapon system.&#xA;&#xA;A highly-advanced control system equipped with non-linear compensation matrix. This module uses a series of &lt;TECHNOLOGY&gt;precisly tuned hydraulic manipulators&lt;&gt; to actively compensate for internal recoil forces. As a result, this weapon system benefits from &lt;STELLAR&gt;highly improved accuracy&lt;&gt;. In addition, the faster recoil recovery allows user to fire at an &lt;STELLAR&gt;increased rate&lt;&gt;."

TEXT_ROCKET_N = "TYPHOON LAUNCHER"
TEXT_ROCKET_L = "Typhoon Lancher"
TEXT_ROCKET_S = "Unlicensed Warhead Delivery System"
TEXT_ROCKET_D = "An exotic modification for the &lt;VAL_ON&gt;Rocket Launcher&lt;&gt; weapon system.&#xA;&#xA;A total rework of the conventional launcher unit, this technology features &lt;TECHNOLOGY&gt;reinforced multi-ejector tubes&lt;&gt; capable of firing a volley of smaller missiles. Whereas the individual projectiles deal less damage compared to standard rockets, the directed barrage has &lt;STELLAR&gt;higher damage potential&lt;&gt;.&#xA;&#xA;User is advised that the &lt;PET5&gt;reduced blast radius&lt;&gt; of each missile warrants application of proper targeting techniques to achieve full capabilities of this system."

TEXT_SENTINEL_N = "AERON SUPPORT RELAY"
TEXT_SENTINEL_L = "Aeron Support Relay"
TEXT_SENTINEL_S = "Hypnotic Starship Presence"
TEXT_SENTINEL_D = "An exotic modification for the &lt;VAL_ON&gt;Sentinel Cannon&lt;&gt; weapon system.&#xA;&#xA;A forbidden amalgamation of hearts of &lt;SPECIAL&gt;corrupted Sentinels&lt;&gt;. Born from anomalous greed, it can not be found anywhere else in the universe. A perpetual hunger fills every crevice of this contraption, seeking out sustenance. Its cursed circuits reached out towards the ship's weapon systems. With each projectile fired, they resonate with dissonance of collapsed shields, generating energy to &lt;STELLAR&gt;recharge the shield systems&lt;&gt;.&#xA;&#xA;User is advised to &lt;PET3&gt;&lt;IMG&gt;SLASH&lt;&gt;DO NOT INSTALL&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;"

----------------------------------------------------------------------------------------------------
-- starship trails
----------------------------------------------------------------------------------------------------

TEXT_WHITE_N = "LUMINESCENT STARSHIP TRAIL"
TEXT_WHITE_L = "Luminescent Starship Trail"
TEXT_WHITE_S = "Primary Exhaust Modification"
TEXT_WHITE_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;
In a process of &lt;TECHNOLOGY&gt;reversed photosynthesis&lt;&gt;, a chemical extracted from Kelp Sacs absorbs the burning byproducts, breaks them down and releases their energy in the white light spectrum.&#xA;&#xA;
Install this technology in your starship inventory to change the appearance of the engine exhaust trails.
]]

TEXT_CYAN_N = "REACTIVE STARSHIP TRAIL"
TEXT_CYAN_L = "Reactive Starship Trail"
TEXT_CYAN_S = "Primary Exhaust Modification"
TEXT_CYAN_D =
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;
The superheated products of burning &lt;TECHNOLOGY&gt;Deuterium-enriched fuel&lt;&gt; discharge excess energy in visible light spectrum, producing a unique cyan glow.&#xA;&#xA;
Install this technology in your starship inventory to change the appearance of the engine exhaust trails.
]]

TEXT_ORANGE_N = "CORONAL STARSHIP TRAIL"
TEXT_ORANGE_L = "Coronal Starship Trail"
TEXT_ORANGE_S = "Primary Exhaust Modification"
TEXT_ORANGE_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;
The Liquid Sun coated plates of Pulse Engine unit react to high temperatures, activating the &lt;TECHNOLOGY&gt;unique spectral features&lt;&gt; of the material and emitting an orange glow.&#xA;&#xA;
Install this technology in your starship inventory to change the appearance of the engine exhaust trails.
]]

TEXT_PINK_N = "MYTHICAL STARSHIP TRAIL"
TEXT_PINK_L = "Mythical Starship Trail"
TEXT_PINK_S = "Primary Exhaust Modification"
TEXT_PINK_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;
Harnessing the power of an otherworldly presence contained in the Living Fragment crystals, this module propagates a distinct pink glow. No one is immune to its song. &lt;RARE&gt;You will sing with us&lt;&gt;.&#xA;&#xA;
Install this technology in your starship inventory to change the appearance of the engine exhaust trails.
]]

TEXT_ELECTRIC_N = "VOLTAIC STARSHIP TRAIL"
TEXT_ELECTRIC_L = "Voltaic Starship Trail"
TEXT_ELECTRIC_S = "Advanced Exhaust Modification"
TEXT_ELECTRIC_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;
This unique device assists pulse drive's compressors in starting under adverse gravitational conditions. The excess energy gets discharged from the exhaust tube, resulting in &lt;TECHNOLOGY&gt;sparkling visual effects&lt;&gt;.&#xA;&#xA;
Install this technology in your starship inventory to change the appearance of the engine exhaust trails.
]]

TEXT_GLITCH_N = "FRAGMENTED STARSHIP TRAIL"
TEXT_GLITCH_L = "Fragmented Starship Trail"
TEXT_GLITCH_S = "Advanced Exhaust Modification"
TEXT_GLITCH_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;
As a part of an experiment, the Hex Core is subjected to heat from starship's exhaust fumes. In result, the effects of its boundary weaken, allowing &lt;TECHNOLOGY&gt;spatial distortions&lt;&gt; to manifest along the starship's trail.&#xA;&#xA;
Install this technology in your starship inventory to change the appearance of the engine exhaust trails.
]]

TEXT_PSYCHIC_N = "DISCORDANT STARSHIP TRAIL"
TEXT_PSYCHIC_L = "Discordant Starship Trail"
TEXT_PSYCHIC_S = "Advanced Exhaust Modification"
TEXT_PSYCHIC_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;
By retrofitting the exhaust with fragments of a corrupted mirror, the large portion of the light spectrum emited by the engine gets warped and diffused into a &lt;TECHNOLOGY&gt;psychedelic haze&lt;&gt;.&#xA;&#xA;
Install this technology in your starship inventory to change the appearance of the engine exhaust trails.
]]

----------------------------------------------------------------------------------------------------
-- other starship tech
----------------------------------------------------------------------------------------------------

TEXT_TRANSFER_N = "DIGISTRUCT ADAPTER MODULE"
TEXT_TRANSFER_L = "Digistruct Adapter Module"
TEXT_TRANSFER_S = "Matter Transportation Technology"
TEXT_TRANSFER_D = "A replacement for &lt;VAL_ON&gt;Teleporter Receiver&lt;&gt; starship technology.&#xA;&#xA;This module integrates a &lt;TECHNOLOGY&gt;high-power low-frequency modulator&lt;&gt; into the starship communicator systems, allowing it to transmit and receive data in low band spectrum. In result, the operational data transfer range can be &lt;STELLAR&gt;extended out to 1000 units&lt;&gt;. The data is processed by a digistruct terminal aboard the craft and reconstructed on molecular level in real time.&#xA;&#xA;Warning: transmission of organic matter is &lt;SPECIAL&gt;not recommended&lt;&gt;. Manufacturer takes no responsibility for any results or failures of organic matter transport."

TEXT_HYPERDRIVE_N = "ODVINSKO AMPLIFIER"
TEXT_HYPERDRIVE_L = "Odvinsko Amplifier"
TEXT_HYPERDRIVE_S = "Non-Existent Propulsion Module"
TEXT_HYPERDRIVE_D = "An exotic modification for the &lt;VAL_ON&gt;Starship Hyperdrive&lt;&gt; unit.&#xA;&#xA;A &lt;TECHNOLOGY&gt;makeshift probability calculator&lt;&gt; capable of detecting local spatial anomalies. The collected data is processed in a Lorentz space and used to chart a more efficient warp path, resulting in &lt;STELLAR&gt;increased range&lt;&gt; of the Hyperdrive unit.&#xA;&#xA;Warning: user is advised&lt;CATALYST&gt;&lt;IMG&gt;SLASH&lt;&gt;the crimson -kzzt- is watching&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;"

TEXT_COMPUTER_N = "COSMIC NOISE SPECTOGRAPH"
TEXT_COMPUTER_L = "Cosmic Noise Spectograph"
TEXT_COMPUTER_S = "Recombined Data Analyzer"
TEXT_COMPUTER_D = "An improvised data processing unit assembled from frigate technology modules.&#xA;&#xA;The spectograph scans the &lt;TECHNOLOGY&gt;cosmic background radiation&lt;&gt; waves for data scrambled in high frequency spectrum and filters out information related to &lt;STELLAR&gt;conflict and economy levels&lt;&gt; of nearby systems. The resulting data is forwarded to ship's navigational computer and displayed in the Galaxy Map.&#xA;&#xA;This module replaces the conventional &lt;VAL_ON&gt;Conflict and Economy scanner units&lt;&gt;."

TEXT_LOCATOR_N = "SCAVENGED SURVEY BEACON"
TEXT_LOCATOR_L = "Scavenged Survey Beacon"
TEXT_LOCATOR_S = "Advanced Scanner Interface"
TEXT_LOCATOR_D = "An exotic upgrade to the starship's navigational computer.&#xA;&#xA;This makeshift antenna interface has been tuned to receive signals in selected frequencies associated with &lt;TECHNOLOGY&gt;high-energy profile sources&lt;&gt;. As a result, this module allows user to reveal locations of selected alien structures, such as &lt;SPECIAL&gt;ancient portals&lt;&gt; or &lt;STELLAR&gt;colossal archives&lt;&gt;.&#xA;&#xA;Interact with the built-in terminal to initiate scan."

TEXT_DISSONANT_N = "RADIANT PERIPHERAL"
TEXT_DISSONANT_L = "Radiant Peripheral"
TEXT_DISSONANT_S = "Dissonant Navigational Unit"
TEXT_DISSONANT_D = "An exotic upgrade to the starship's navigational computer.&#xA;&#xA;A unique extension card module housing a customized logic board and a &lt;TECHNOLOGY&gt;crystalline meta-structure&lt;&gt; composed of fragments of Radiant Shards. High voltage signals are generated to probe the structure, while the ship's receivers are tuned to detect a resonance response in low frequency spectrum from nearby &lt;SPECIAL&gt;dissonant energy fields&lt;&gt;.&#xA;&#xA;Interact with the terminal to chart path to a dissonant system in Galaxy Map."

TEXT_POLICE_N = "EMERGENCY ANTENNA"
TEXT_POLICE_L = "Emergency Antenna"
TEXT_POLICE_S = "System Authority Link"
TEXT_POLICE_D = "A redundant long-range communication interface, capable of broadcasting a &lt;TECHNOLOGY&gt;system-wide emergency call&lt;&gt;. User can use its functionality to request assisstance from system authority forces in an event of a &lt;FUEL&gt;targeted pirate ambush&lt;&gt;."

----------------------------------------------------------------------------------------------------
-- bobbleheads
----------------------------------------------------------------------------------------------------

TEXT_HOLO_DESC1 = "A miniaturized holographic display with dedicated mount for starship's cockpit. It is programmed to project a scaled down model of a "
TEXT_HOLO_DESC2 = ".&#xA;&#xA;Install this module in a technology inventory slot to decorate your ship's interior."

TEXT_BLOB_N = "HOLOGRAHPIC BLOB FAUNA"
TEXT_BLOB_L = "Holographic Blob Fauna"
TEXT_BLOB_S = "Virtual Companion Unit"
TEXT_BLOB_D = TEXT_HOLO_DESC1 .. "&lt;TECHNOLOGY&gt;planetary blob fauna&lt;&gt;" .. TEXT_HOLO_DESC2

TEXT_JELLYFISH_N = "HOLOGRAHPIC SPACE HORROR"
TEXT_JELLYFISH_L = "Holographic Space Horror"
TEXT_JELLYFISH_S = "Virtual Companion Unit"
TEXT_JELLYFISH_D = TEXT_HOLO_DESC1 .. "&lt;TRADE&gt;doomed space horror&lt;&gt;" .. TEXT_HOLO_DESC2

TEXT_WALKER_N = "HOLOGRAHPIC WALKER UNIT"
TEXT_WALKER_L = "Holographic Walker Unit"
TEXT_WALKER_S = "Virtual Companion Unit"
TEXT_WALKER_D = TEXT_HOLO_DESC1 .. "&lt;PET5&gt;Sentinel Walker unit&lt;&gt;" .. TEXT_HOLO_DESC2

TEXT_GLOBE_N = "PLANETARY GLOBE STATUE"
TEXT_GLOBE_L = "Planetary Globe Statue"
TEXT_GLOBE_S = "Dashboard Adornment"
TEXT_GLOBE_D = "An intricate dashboard gadget representing a globe found in &lt;STELLAR&gt;planetary settlements&lt;&gt;. The combination of mechanical workings and inner holographic display serves as a proof of the maker's craftsmanship.&#xA;&#xA;Install this module in a technology inventory slot to decorate your ship's interior."

----------------------------------------------------------------------------------------------------
-- items
----------------------------------------------------------------------------------------------------

TEXT_TOKEN_N = "SALVAGED FRAMEWORK UNIT"
TEXT_TOKEN_L = "Salvaged Framework Unit"
TEXT_TOKEN_S = "Recovered Technology Data"
TEXT_TOKEN_D = "A unique storage device produced by the &lt;TECHNOLOGY&gt;Impossible Fabricator&lt;&gt;.&#xA;&#xA;Infused with effects of the contained time anomaly, it can store &lt;SPECIAL&gt;misplaced temporal data&lt;&gt; that would become corrupted when presented with conventional carriers found in this reality."

TEXT_PLATING_N = "STALWART PLATING"
TEXT_PLATING_L = "Stalwart Plating"
TEXT_PLATING_S = "Processed Metal Component"
TEXT_PLATING_D = "Advanced building and crafting component, encompassing an extremely durable alloy of &lt;STELLAR&gt;processed stellar metals&lt;&gt; and cobalt. Its colour and texture are reminiscent of the material used in construction of the &lt;RARE&gt;ancient monoliths&lt;&gt;."

TEXT_FRAGMENT_N = "ENCAPSULATED VARIANCE"
TEXT_FRAGMENT_L = "Encapsulated Variance"
TEXT_FRAGMENT_S = "Contingent Temporal Anomaly"
TEXT_FRAGMENT_D = "This tachyon based mega-particle is formulating a materialized and spatially bound crevice in time.&#xA;&#xA;Its existence can not be described mathematically."

TEXT_CIRCUIT_N = "HARMONIC MATRIX"
TEXT_CIRCUIT_L = "Harmonic Matrix"
TEXT_CIRCUIT_S = "Phase-state Stability Engine"
TEXT_CIRCUIT_D = "A piece of technology originally developed by the &lt;TRANS_BUI&gt;Autophage&lt;&gt;.&#xA;&#xA;By continuously wrapping and unwrapping an &lt;HIGHLIGHT&gt;&#x3b7;-dimensional manifold&lt;&gt; housed inside a dedicated chamber, the temporal fluctuations generated in the process nullify the anomalous effects of nearby objects. This interaction ensures objects are being tethered to the flow of &lt;TECHNOLOGY&gt;reference timeline&lt;&gt;, allowing proper operations of a harmonic camp terminal."

TEXT_BYPASS_N = "HIJACKED PROCESSOR"
TEXT_BYPASS_L = "Hijacked Processor"
TEXT_BYPASS_S = "Mainframe Override Unit"
TEXT_BYPASS_D = "An &lt;SPECIAL&gt;illegally repurposed&lt;&gt; Station Override key.&#xA;&#xA;Featuring a highly complex assembly of data processing units and memory banks storing access codes for &lt;TECHNOLOGY&gt;starship outfitting terminals&lt;&gt;, this device can be used to interfere with standard operations of the space station's upgrade terminal, allowing user to upgrade the starship class &lt;STELLAR&gt;free of charge&lt;&gt;."

TEXT_CRYSTAL_N = "DIFFUSED TRITIUM"
TEXT_CRYSTAL_L = "Diffused Tritium"
TEXT_CRYSTAL_S = "Sub-Critical Fuel Material"
TEXT_CRYSTAL_D = "A highly reactive compound of &lt;SPECIAL&gt;Tritium crystals&lt;&gt; and transmuted stellar metals. The layer of Liquid Sun forces a nuclear decay reaction in the hydrogen isotope, resulting in an &lt;TECHNOLOGY&gt;emission of anti-neutrinos&lt;&gt;. These high-energy particles can efficiently fuel the starship's propulsion systems.&#xA;&#xA;Thanks to high concentration of Tritium, a single shard of this formation can &lt;STELLAR&gt;provide full charge&lt;&gt; to both standard pulse drive unit and its Waveform variant."

TEXT_BOX_N = "TEMPORAL MEMORY: "
TEXT_BOX_L = "Temporal Memory: "
TEXT_BOX_S = "Mysterious Blueprint Data"
TEXT_BOX_D = "A record of &lt;SPECIAL&gt;misplaced temporal data&lt;&gt; from another reality, detected by the instruments aboard Space Anomaly. Initial scans indicate this device stores information pertaining to a &lt;STELLAR&gt;bespoke item crafting recipe&lt;&gt;.&#xA;&#xA;Temporal anomaly class: "

TEXT_BOXA_N = TEXT_BOX_N .. "METIS"
TEXT_BOXA_L = TEXT_BOX_L .. "Metis"
TEXT_BOXA_S = TEXT_BOX_S
TEXT_BOXA_D = TEXT_BOX_D .. "&lt;TRADEABLE&gt;METIS&lt;&gt;"

TEXT_BOXB_N = TEXT_BOX_N .. "DEMETER"
TEXT_BOXB_L = TEXT_BOX_L .. "Demeter"
TEXT_BOXB_S = TEXT_BOX_S
TEXT_BOXB_D = TEXT_BOX_D .. "&lt;HIGHLIGHT&gt;DEMETER&lt;&gt;"

TEXT_BOXC_N = TEXT_BOX_N .. "APOLLYON"
TEXT_BOXC_L = TEXT_BOX_L .. "Apollyon"
TEXT_BOXC_S = TEXT_BOX_S
TEXT_BOXC_D = TEXT_BOX_D .. "&lt;SPECIAL&gt;APOLLYON&lt;&gt;"

----------------------------------------------------------------------------------------------------
-- misc text elements
----------------------------------------------------------------------------------------------------

TEXT_COST_UPGRADE = "Nanites or Hijacked Processor"
TEXT_COST_POLICE = "Defence Chit OR Emergency Antenna"

TEXT_SCANNER_B = "ACTIVATE SCANNER"
TEXT_SCANNER_U = "Scan for temporal anomalies"
TEXT_SCANNER_F = "Operational Error &lt;IMG&gt;SLASH&lt;&gt; No Temporal Anomalies Detected"

TEXT_COMPUTER_B = "PERFORM SCAN"
TEXT_COMPUTER_U = "Locate a trading outpost in the system"
TEXT_COMPUTER_F = "Navigational Error &lt;IMG&gt;SLASH&lt;&gt; No Trading Outpost Found In System"

TEXT_LOCATOR_B = "PERFORM SCAN"
TEXT_LOCATOR_U = "Locate an alien structure in the system"
TEXT_LOCATOR_F = "Navigational Error &lt;IMG&gt;SLASH&lt;&gt; No Alien Structures Found In System"

TEXT_DISSONANT_B = "PERFORM SCAN"
TEXT_DISSONANT_U = "Chart a path to a dissonant system"

TEXT_BOX_B = "ANALYZE BLUEPRINT"
TEXT_BOX_U = "Learn a crafting recipe"

TEXT_TREE_T = "&lt;IMG&gt;DIFFICULTY&lt;&gt; Exotic Starship Technology &lt;IMG&gt;DIFFICULTY&lt;&gt;"
TEXT_TREE_S = "Craftable Starship Blueprints"
TEXT_TREE_W = "Insufficient Blueprint Data"

TEXT_WIKI_ID = "Mod: Project Apollo"
TEXT_WIKI_UP = "MOD: PROJECT APOLLO"

----------------------------------------------------------------------------------------------------
-- player titles
----------------------------------------------------------------------------------------------------

TEXT_TITLE_UNLOCK = "(Mod) Investigated the temporal anomalies"

TEXT_TITLE_FORMAT_1 = "%NAME% The Misplaced"
TEXT_TITLE_FORMAT_2 = "%NAME% The Perpetual"
TEXT_TITLE_FORMAT_3 = "%NAME% The Transpired"
TEXT_TITLE_FORMAT_4 = "%NAME% The Asynchronous"
TEXT_TITLE_FORMAT_5 = "%NAME%, Lost in Time"

TEXT_TITLE_OWNED_1 = "Extracted blueprint data from 5 crashed starships"
TEXT_TITLE_OWNED_2 = "Extracted blueprint data from 10 crashed starships"
TEXT_TITLE_OWNED_3 = "Extracted blueprint data from 15 crashed starships"
TEXT_TITLE_OWNED_4 = "Extracted blueprint data from 20 crashed starships"
TEXT_TITLE_OWNED_5 = "Extracted blueprint data from 30 crashed starships"



----------------------------------------------------------------------------------------------------
-- function to build properties
----------------------------------------------------------------------------------------------------

function BuildTextProperty(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
  <Property name="Id" value="]]..id..[[" />
  <Property name="English" value="VariableSizeString.xml">
    <Property name="Value" value="]]..value..[[" />
  </Property>
  <Property name="French" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Italian" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="German" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Spanish" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Russian" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Polish" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Dutch" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Portuguese" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="LatinAmericanSpanish" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="BrazilianPortuguese" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="SimplifiedChinese" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="TraditionalChinese" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="TencentChinese" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Korean" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="Japanese" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="USEnglish" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
</Property>
]]
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_LANGUAGE =             "LANGUAGE\\NMS_LOC5_ENGLISH.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_LANGUAGE,
                    ["EXML_CHANGE_TABLE"] = {},
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- adding new text elements to localization file
----------------------------------------------------------------------------------------------------

local LANG_EXML = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

function ModifyEXML(exml)
  local change =
  {
    ["PKW"] = "Table",
    ["ADD"] =
    {

        BuildTextProperty("TEXT_TOOLTIP_TITLE",TEXT_TOOLTIP_TITLE),
        BuildTextProperty("TEXT_TOOLTIP_ANOMALY",TEXT_TOOLTIP_ANOMALY),
        BuildTextProperty("TEXT_TOOLTIP_STATION",TEXT_TOOLTIP_STATION),

        BuildTextProperty("TEXT_DIALOGUE_RESEARCH",TEXT_DIALOGUE_RESEARCH),

        BuildTextProperty("TEXT_MAIN_TITLE",TEXT_MAIN_TITLE),
        BuildTextProperty("TEXT_MAIN_SUB",TEXT_MAIN_SUB),
        BuildTextProperty("TEXT_MAIN_DESC",TEXT_MAIN_DESC),

        BuildTextProperty("TEXT_MAIN_END_T",TEXT_MAIN_END_T),
        BuildTextProperty("TEXT_MAIN_END_A",TEXT_MAIN_END_A),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_MAIN_S0_OSD",TEXT_MAIN_S0_OSD),
        BuildTextProperty("TEXT_MAIN_S0_HUD",TEXT_MAIN_S0_HUD),
        BuildTextProperty("TEXT_MAIN_I0_LABEL1",TEXT_MAIN_I0_LABEL1),
        BuildTextProperty("TEXT_MAIN_I0_LABEL2",TEXT_MAIN_I0_LABEL2),

        BuildTextProperty("TEXT_MAIN_I0_STORY1",TEXT_MAIN_I0_STORY1),
        BuildTextProperty("TEXT_MAIN_I0_OPTION1",TEXT_MAIN_I0_OPTION1),
        BuildTextProperty("TEXT_MAIN_I0_STORY2",TEXT_MAIN_I0_STORY2),
        BuildTextProperty("TEXT_MAIN_I0_STORY3",TEXT_MAIN_I0_STORY3),
        BuildTextProperty("TEXT_MAIN_I0_STORY4",TEXT_MAIN_I0_STORY4),
        BuildTextProperty("TEXT_MAIN_I0_OPTION2",TEXT_MAIN_I0_OPTION2),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_MAIN_S1_OBJ",TEXT_MAIN_S1_OBJ),
        BuildTextProperty("TEXT_MAIN_S1_DESC1",TEXT_MAIN_S1_DESC1),
        BuildTextProperty("TEXT_MAIN_S1_TIP1",TEXT_MAIN_S1_TIP1),

        BuildTextProperty("TEXT_MAIN_I1_LABEL",TEXT_MAIN_I1_LABEL),
        BuildTextProperty("TEXT_MAIN_I1_STORY1",TEXT_MAIN_I1_STORY1),
        BuildTextProperty("TEXT_MAIN_I1_OPTION1",TEXT_MAIN_I1_OPTION1),
        BuildTextProperty("TEXT_MAIN_I1_STORY2",TEXT_MAIN_I1_STORY2),
        BuildTextProperty("TEXT_MAIN_I1_OPTION2",TEXT_MAIN_I1_OPTION2),
        BuildTextProperty("TEXT_MAIN_I1_STORY3",TEXT_MAIN_I1_STORY3),
        BuildTextProperty("TEXT_MAIN_I1_OPTION3",TEXT_MAIN_I1_OPTION3),
        BuildTextProperty("TEXT_MAIN_I1_STORY4",TEXT_MAIN_I1_STORY4),

        BuildTextProperty("TEXT_MAIN_S1_DESC2",TEXT_MAIN_S1_DESC2),
        BuildTextProperty("TEXT_MAIN_S1_TIP2",TEXT_MAIN_S1_TIP2),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_MAIN_S2_OBJ",TEXT_MAIN_S2_OBJ),
        BuildTextProperty("TEXT_MAIN_S2_DESC",TEXT_MAIN_S2_DESC),
        BuildTextProperty("TEXT_MAIN_S2_TIP",TEXT_MAIN_S2_TIP),

        BuildTextProperty("TEXT_MAIN_E2_OSD",TEXT_MAIN_E2_OSD),
        BuildTextProperty("TEXT_MAIN_E2_TARGET",TEXT_MAIN_E2_TARGET),
        BuildTextProperty("TEXT_MAIN_E2_TIP1",TEXT_MAIN_E2_TIP1),
        BuildTextProperty("TEXT_MAIN_E2_TIP2",TEXT_MAIN_E2_TIP2),
        BuildTextProperty("TEXT_MAIN_E2_MARKER",TEXT_MAIN_E2_MARKER),

        BuildTextProperty("TEXT_MAIN_I2_LABEL",TEXT_MAIN_I2_LABEL),
        BuildTextProperty("TEXT_MAIN_I2_STORY1",TEXT_MAIN_I2_STORY1),
        BuildTextProperty("TEXT_MAIN_I2_STORY2",TEXT_MAIN_I2_STORY2),
        BuildTextProperty("TEXT_MAIN_I2_STORY3",TEXT_MAIN_I2_STORY3),
        BuildTextProperty("TEXT_MAIN_I2_STORY4",TEXT_MAIN_I2_STORY4),
        BuildTextProperty("TEXT_MAIN_I2_STORY5",TEXT_MAIN_I2_STORY5),
        BuildTextProperty("TEXT_MAIN_I2_OPTION",TEXT_MAIN_I2_OPTION),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_MAIN_S3_OBJ",TEXT_MAIN_S3_OBJ),
        BuildTextProperty("TEXT_MAIN_S3_DESC1",TEXT_MAIN_S3_DESC1),
        BuildTextProperty("TEXT_MAIN_S3_TIP",TEXT_MAIN_S3_TIP),
        BuildTextProperty("TEXT_MAIN_S3_DESC2",TEXT_MAIN_S3_DESC2),

        BuildTextProperty("TEXT_MAIN_I3_LABEL",TEXT_MAIN_I3_LABEL),
        BuildTextProperty("TEXT_MAIN_I3_STORY1",TEXT_MAIN_I3_STORY1),
        BuildTextProperty("TEXT_MAIN_I3_STORY2",TEXT_MAIN_I3_STORY2),
        BuildTextProperty("TEXT_MAIN_I3_OPTION",TEXT_MAIN_I3_OPTION),
        BuildTextProperty("TEXT_MAIN_I3_STORY3",TEXT_MAIN_I3_STORY3),
        BuildTextProperty("TEXT_MAIN_I3_STORY4",TEXT_MAIN_I3_STORY4),
        BuildTextProperty("TEXT_MAIN_I3_REWARD",TEXT_MAIN_I3_REWARD),

        BuildTextProperty("TEXT_MAIN_S3_INFO0",TEXT_MAIN_S3_INFO0),
        BuildTextProperty("TEXT_MAIN_S3_INFO1",TEXT_MAIN_S3_INFO1),
        BuildTextProperty("TEXT_MAIN_S3_INFO2",TEXT_MAIN_S3_INFO2),
        BuildTextProperty("TEXT_MAIN_S3_INFO3",TEXT_MAIN_S3_INFO3),
        BuildTextProperty("TEXT_MAIN_S3_INFO4",TEXT_MAIN_S3_INFO4),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_PLATING_TITLE",TEXT_PLATING_TITLE),
        BuildTextProperty("TEXT_PLATING_SUB",TEXT_PLATING_SUB),
        BuildTextProperty("TEXT_PLATING_DESC",TEXT_PLATING_DESC),

        BuildTextProperty("TEXT_PLATING_S1_OBJ",TEXT_PLATING_S1_OBJ),
        BuildTextProperty("TEXT_PLATING_S1_DESC",TEXT_PLATING_S1_DESC),
        BuildTextProperty("TEXT_PLATING_S1_TIP1",TEXT_PLATING_S1_TIP1),
        BuildTextProperty("TEXT_PLATING_S1_TIP2",TEXT_PLATING_S1_TIP2),

        BuildTextProperty("TEXT_PLATING_E1_OSD",TEXT_PLATING_E1_OSD),
        BuildTextProperty("TEXT_PLATING_E1_TARGET",TEXT_PLATING_E1_TARGET),
        BuildTextProperty("TEXT_PLATING_E1_TIP1",TEXT_PLATING_E1_TIP1),
        BuildTextProperty("TEXT_PLATING_E1_TIP2",TEXT_PLATING_E1_TIP2),
        BuildTextProperty("TEXT_PLATING_E1_MARKER",TEXT_PLATING_E1_MARKER),

        BuildTextProperty("TEXT_PLATING_I1_LABEL",TEXT_PLATING_I1_LABEL),
        BuildTextProperty("TEXT_PLATING_I1_OPTION",TEXT_PLATING_I1_OPTION),
        BuildTextProperty("TEXT_PLATING_I1_STORY1",TEXT_PLATING_I1_STORY1),
        BuildTextProperty("TEXT_PLATING_I1_STORY2",TEXT_PLATING_I1_STORY2),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_FRAGMENT_TITLE",TEXT_FRAGMENT_TITLE),
        BuildTextProperty("TEXT_FRAGMENT_SUB",TEXT_FRAGMENT_SUB),
        BuildTextProperty("TEXT_FRAGMENT_DESC",TEXT_FRAGMENT_DESC),

        BuildTextProperty("TEXT_FRAGMENT_S1_OBJ",TEXT_FRAGMENT_S1_OBJ),
        BuildTextProperty("TEXT_FRAGMENT_S1_DESC",TEXT_FRAGMENT_S1_DESC),
        BuildTextProperty("TEXT_FRAGMENT_S1_TIP1",TEXT_FRAGMENT_S1_TIP1),
        BuildTextProperty("TEXT_FRAGMENT_S1_TIP2",TEXT_FRAGMENT_S1_TIP2),

        BuildTextProperty("TEXT_FRAGMENT_E1_MESSAGE",TEXT_FRAGMENT_E1_MESSAGE),
        BuildTextProperty("TEXT_FRAGMENT_E1_TARGET",TEXT_FRAGMENT_E1_TARGET),
        BuildTextProperty("TEXT_FRAGMENT_E1_TIP1",TEXT_FRAGMENT_E1_TIP1),
        BuildTextProperty("TEXT_FRAGMENT_E1_TIP2",TEXT_FRAGMENT_E1_TIP2),
        BuildTextProperty("TEXT_FRAGMENT_E1_MARKER",TEXT_FRAGMENT_E1_MARKER),

        BuildTextProperty("TEXT_FRAGMENT_I1_LABEL",TEXT_FRAGMENT_I1_LABEL),
        BuildTextProperty("TEXT_FRAGMENT_I1_OPTION",TEXT_FRAGMENT_I1_OPTION),
        BuildTextProperty("TEXT_FRAGMENT_I1_STORYA",TEXT_FRAGMENT_I1_STORYA),
        BuildTextProperty("TEXT_FRAGMENT_I1_STORYB",TEXT_FRAGMENT_I1_STORYB),
        BuildTextProperty("TEXT_FRAGMENT_I1_STORYC",TEXT_FRAGMENT_I1_STORYC),
        BuildTextProperty("TEXT_FRAGMENT_I1_STORYD",TEXT_FRAGMENT_I1_STORYD),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_CIRCUIT_TITLE",TEXT_CIRCUIT_TITLE),
        BuildTextProperty("TEXT_CIRCUIT_SUB",TEXT_CIRCUIT_SUB),
        BuildTextProperty("TEXT_CIRCUIT_DESC",TEXT_CIRCUIT_DESC),

        BuildTextProperty("TEXT_CIRCUIT_S1_OBJ",TEXT_CIRCUIT_S1_OBJ),
        BuildTextProperty("TEXT_CIRCUIT_S1_DESC",TEXT_CIRCUIT_S1_DESC),
        BuildTextProperty("TEXT_CIRCUIT_S1_TIP1",TEXT_CIRCUIT_S1_TIP1),
        BuildTextProperty("TEXT_CIRCUIT_S1_TIP2",TEXT_CIRCUIT_S1_TIP2),

        BuildTextProperty("TEXT_CIRCUIT_E1_MESSAGE",TEXT_CIRCUIT_E1_MESSAGE),
        BuildTextProperty("TEXT_CIRCUIT_E1_TARGET",TEXT_CIRCUIT_E1_TARGET),
        BuildTextProperty("TEXT_CIRCUIT_E1_TIP1",TEXT_CIRCUIT_E1_TIP1),
        BuildTextProperty("TEXT_CIRCUIT_E1_TIP2",TEXT_CIRCUIT_E1_TIP2),
        BuildTextProperty("TEXT_CIRCUIT_E1_MARKER",TEXT_CIRCUIT_E1_MARKER),

        BuildTextProperty("TEXT_CIRCUIT_I1_LABEL",TEXT_CIRCUIT_I1_LABEL),
        BuildTextProperty("TEXT_CIRCUIT_I1_STORYA",TEXT_CIRCUIT_I1_STORYA),
        BuildTextProperty("TEXT_CIRCUIT_I1_OPTION",TEXT_CIRCUIT_I1_OPTION),

        BuildTextProperty("TEXT_CIRCUIT_I2_STORYA",TEXT_CIRCUIT_I2_STORYA),
        BuildTextProperty("TEXT_CIRCUIT_I2_STORYB",TEXT_CIRCUIT_I2_STORYB),
        BuildTextProperty("TEXT_CIRCUIT_I2_STORYC",TEXT_CIRCUIT_I2_STORYC),
        BuildTextProperty("TEXT_CIRCUIT_I2_OPTION",TEXT_CIRCUIT_I2_OPTION),
        BuildTextProperty("TEXT_CIRCUIT_I2_STORYD",TEXT_CIRCUIT_I2_STORYD),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_SCANNER_TITLE",TEXT_SCANNER_TITLE),
        BuildTextProperty("TEXT_SCANNER_SUB",TEXT_SCANNER_SUB),
        BuildTextProperty("TEXT_SCANNER_DESC",TEXT_SCANNER_DESC),

        BuildTextProperty("TEXT_SCANNER_S1_OBJ",TEXT_SCANNER_S1_OBJ),
        BuildTextProperty("TEXT_SCANNER_S1_DESC",TEXT_SCANNER_S1_DESC),
        BuildTextProperty("TEXT_SCANNER_S1_TIP",TEXT_SCANNER_S1_TIP),
        BuildTextProperty("TEXT_SCANNER_S2_TIP",TEXT_SCANNER_S2_TIP),

        BuildTextProperty("TEXT_SCANNER_E1_MESSAGE",TEXT_SCANNER_E1_MESSAGE),
        BuildTextProperty("TEXT_SCANNER_E1_TARGET",TEXT_SCANNER_E1_TARGET),
        BuildTextProperty("TEXT_SCANNER_E1_TIP",TEXT_SCANNER_E1_TIP),
        BuildTextProperty("TEXT_SCANNER_E1_MARKER",TEXT_SCANNER_E1_MARKER),

        BuildTextProperty("TEXT_SCANNER_I1_STORY",TEXT_SCANNER_I1_STORY),
        BuildTextProperty("TEXT_SCANNER_I1_OPTION",TEXT_SCANNER_I1_OPTION),
        BuildTextProperty("TEXT_SCANNER_I1_RESULT",TEXT_SCANNER_I1_RESULT),
        BuildTextProperty("TEXT_SCANNER_I1_WANTED",TEXT_SCANNER_I1_WANTED),

        BuildTextProperty("TEXT_DISS_TITLE",TEXT_DISS_TITLE),
        BuildTextProperty("TEXT_DISS_SUB",TEXT_DISS_SUB),
        BuildTextProperty("TEXT_DISS_DESC",TEXT_DISS_DESC),
        BuildTextProperty("TEXT_DISS_S1_OBJ",TEXT_DISS_S1_OBJ),
        BuildTextProperty("TEXT_DISS_S1_OSD",TEXT_DISS_S1_OSD),

        BuildTextProperty("TEXT_DISS_S1_DESC",TEXT_DISS_S1_DESC),
        BuildTextProperty("TEXT_DISS_S1_TIP",TEXT_DISS_S1_TIP),
        BuildTextProperty("TEXT_DISS_S2_DESC",TEXT_DISS_S2_DESC),
        BuildTextProperty("TEXT_DISS_S2_TIP",TEXT_DISS_S2_TIP),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_SHIELD_N",TEXT_SHIELD_N),
        BuildTextProperty("TEXT_SHIELD_L",TEXT_SHIELD_L),
        BuildTextProperty("TEXT_SHIELD_S",TEXT_SHIELD_S),
        BuildTextProperty("TEXT_SHIELD_D",TEXT_SHIELD_D),

        BuildTextProperty("TEXT_PHOTON_N",TEXT_PHOTON_N),
        BuildTextProperty("TEXT_PHOTON_L",TEXT_PHOTON_L),
        BuildTextProperty("TEXT_PHOTON_S",TEXT_PHOTON_S),
        BuildTextProperty("TEXT_PHOTON_D",TEXT_PHOTON_D),

        BuildTextProperty("TEXT_CYCLO_N",TEXT_CYCLO_N),
        BuildTextProperty("TEXT_CYCLO_L",TEXT_CYCLO_L),
        BuildTextProperty("TEXT_CYCLO_S",TEXT_CYCLO_S),
        BuildTextProperty("TEXT_CYCLO_D",TEXT_CYCLO_D),

        BuildTextProperty("TEXT_PHASE_N",TEXT_PHASE_N),
        BuildTextProperty("TEXT_PHASE_L",TEXT_PHASE_L),
        BuildTextProperty("TEXT_PHASE_S",TEXT_PHASE_S),
        BuildTextProperty("TEXT_PHASE_D",TEXT_PHASE_D),

        BuildTextProperty("TEXT_SHOTGUN_N",TEXT_SHOTGUN_N),
        BuildTextProperty("TEXT_SHOTGUN_L",TEXT_SHOTGUN_L),
        BuildTextProperty("TEXT_SHOTGUN_S",TEXT_SHOTGUN_S),
        BuildTextProperty("TEXT_SHOTGUN_D",TEXT_SHOTGUN_D),

        BuildTextProperty("TEXT_ROCKET_N",TEXT_ROCKET_N),
        BuildTextProperty("TEXT_ROCKET_L",TEXT_ROCKET_L),
        BuildTextProperty("TEXT_ROCKET_S",TEXT_ROCKET_S),
        BuildTextProperty("TEXT_ROCKET_D",TEXT_ROCKET_D),

        BuildTextProperty("TEXT_SENTINEL_N",TEXT_SENTINEL_N),
        BuildTextProperty("TEXT_SENTINEL_L",TEXT_SENTINEL_L),
        BuildTextProperty("TEXT_SENTINEL_S",TEXT_SENTINEL_S),
        BuildTextProperty("TEXT_SENTINEL_D",TEXT_SENTINEL_D),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_TRANSFER_N",TEXT_TRANSFER_N),
        BuildTextProperty("TEXT_TRANSFER_L",TEXT_TRANSFER_L),
        BuildTextProperty("TEXT_TRANSFER_S",TEXT_TRANSFER_S),
        BuildTextProperty("TEXT_TRANSFER_D",TEXT_TRANSFER_D),

        BuildTextProperty("TEXT_COMPUTER_N",TEXT_COMPUTER_N),
        BuildTextProperty("TEXT_COMPUTER_L",TEXT_COMPUTER_L),
        BuildTextProperty("TEXT_COMPUTER_S",TEXT_COMPUTER_S),
        BuildTextProperty("TEXT_COMPUTER_D",TEXT_COMPUTER_D),

        BuildTextProperty("TEXT_HYPERDRIVE_N",TEXT_HYPERDRIVE_N),
        BuildTextProperty("TEXT_HYPERDRIVE_L",TEXT_HYPERDRIVE_L),
        BuildTextProperty("TEXT_HYPERDRIVE_S",TEXT_HYPERDRIVE_S),
        BuildTextProperty("TEXT_HYPERDRIVE_D",TEXT_HYPERDRIVE_D),

        BuildTextProperty("TEXT_LOCATOR_N",TEXT_LOCATOR_N),
        BuildTextProperty("TEXT_LOCATOR_L",TEXT_LOCATOR_L),
        BuildTextProperty("TEXT_LOCATOR_S",TEXT_LOCATOR_S),
        BuildTextProperty("TEXT_LOCATOR_D",TEXT_LOCATOR_D),

        BuildTextProperty("TEXT_DISSONANT_N",TEXT_DISSONANT_N),
        BuildTextProperty("TEXT_DISSONANT_L",TEXT_DISSONANT_L),
        BuildTextProperty("TEXT_DISSONANT_S",TEXT_DISSONANT_S),
        BuildTextProperty("TEXT_DISSONANT_D",TEXT_DISSONANT_D),

        BuildTextProperty("TEXT_POLICE_N",TEXT_POLICE_N),
        BuildTextProperty("TEXT_POLICE_L",TEXT_POLICE_L),
        BuildTextProperty("TEXT_POLICE_S",TEXT_POLICE_S),
        BuildTextProperty("TEXT_POLICE_D",TEXT_POLICE_D),

        BuildTextProperty("TEXT_NEWDESC_SHIPJUMP",TEXT_NEWDESC_SHIPJUMP),
        BuildTextProperty("TEXT_NEWDESC_HYPERDRIVE",TEXT_NEWDESC_HYPERDRIVE),
        BuildTextProperty("TEXT_NEWDESC_LAUNCHER",TEXT_NEWDESC_LAUNCHER),
        BuildTextProperty("TEXT_NEWDESC_MEGAWARP",TEXT_NEWDESC_MEGAWARP),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_CYAN_N",TEXT_CYAN_N),
        BuildTextProperty("TEXT_CYAN_L",TEXT_CYAN_L),
        BuildTextProperty("TEXT_CYAN_S",TEXT_CYAN_S),
        BuildTextProperty("TEXT_CYAN_D",TEXT_CYAN_D),

        BuildTextProperty("TEXT_ORANGE_N",TEXT_ORANGE_N),
        BuildTextProperty("TEXT_ORANGE_L",TEXT_ORANGE_L),
        BuildTextProperty("TEXT_ORANGE_S",TEXT_ORANGE_S),
        BuildTextProperty("TEXT_ORANGE_D",TEXT_ORANGE_D),

        BuildTextProperty("TEXT_PINK_N",TEXT_PINK_N),
        BuildTextProperty("TEXT_PINK_L",TEXT_PINK_L),
        BuildTextProperty("TEXT_PINK_S",TEXT_PINK_S),
        BuildTextProperty("TEXT_PINK_D",TEXT_PINK_D),

        BuildTextProperty("TEXT_WHITE_N",TEXT_WHITE_N),
        BuildTextProperty("TEXT_WHITE_L",TEXT_WHITE_L),
        BuildTextProperty("TEXT_WHITE_S",TEXT_WHITE_S),
        BuildTextProperty("TEXT_WHITE_D",TEXT_WHITE_D),

        BuildTextProperty("TEXT_ELECTRIC_N",TEXT_ELECTRIC_N),
        BuildTextProperty("TEXT_ELECTRIC_L",TEXT_ELECTRIC_L),
        BuildTextProperty("TEXT_ELECTRIC_S",TEXT_ELECTRIC_S),
        BuildTextProperty("TEXT_ELECTRIC_D",TEXT_ELECTRIC_D),
        
        BuildTextProperty("TEXT_GLITCH_N",TEXT_GLITCH_N),
        BuildTextProperty("TEXT_GLITCH_L",TEXT_GLITCH_L),
        BuildTextProperty("TEXT_GLITCH_S",TEXT_GLITCH_S),
        BuildTextProperty("TEXT_GLITCH_D",TEXT_GLITCH_D),

        BuildTextProperty("TEXT_PSYCHIC_N",TEXT_PSYCHIC_N),
        BuildTextProperty("TEXT_PSYCHIC_L",TEXT_PSYCHIC_L),
        BuildTextProperty("TEXT_PSYCHIC_S",TEXT_PSYCHIC_S),
        BuildTextProperty("TEXT_PSYCHIC_D",TEXT_PSYCHIC_D),

        BuildTextProperty("TEXT_SCANNER_N",TEXT_SCANNER_N),
        BuildTextProperty("TEXT_SCANNER_L",TEXT_SCANNER_L),
        BuildTextProperty("TEXT_SCANNER_S",TEXT_SCANNER_S),
        BuildTextProperty("TEXT_SCANNER_D",TEXT_SCANNER_D),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_GLOBE_N",TEXT_GLOBE_N),
        BuildTextProperty("TEXT_GLOBE_L",TEXT_GLOBE_L),
        BuildTextProperty("TEXT_GLOBE_S",TEXT_GLOBE_S),
        BuildTextProperty("TEXT_GLOBE_D",TEXT_GLOBE_D),

        BuildTextProperty("TEXT_BLOB_N",TEXT_BLOB_N),
        BuildTextProperty("TEXT_BLOB_L",TEXT_BLOB_L),
        BuildTextProperty("TEXT_BLOB_S",TEXT_BLOB_S),
        BuildTextProperty("TEXT_BLOB_D",TEXT_BLOB_D),

        BuildTextProperty("TEXT_JELLYFISH_N",TEXT_JELLYFISH_N),
        BuildTextProperty("TEXT_JELLYFISH_L",TEXT_JELLYFISH_L),
        BuildTextProperty("TEXT_JELLYFISH_S",TEXT_JELLYFISH_S),
        BuildTextProperty("TEXT_JELLYFISH_D",TEXT_JELLYFISH_D),

        BuildTextProperty("TEXT_WALKER_N",TEXT_WALKER_N),
        BuildTextProperty("TEXT_WALKER_L",TEXT_WALKER_L),
        BuildTextProperty("TEXT_WALKER_S",TEXT_WALKER_S),
        BuildTextProperty("TEXT_WALKER_D",TEXT_WALKER_D),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_TOKEN_N",TEXT_TOKEN_N),
        BuildTextProperty("TEXT_TOKEN_L",TEXT_TOKEN_L),
        BuildTextProperty("TEXT_TOKEN_S",TEXT_TOKEN_S),
        BuildTextProperty("TEXT_TOKEN_D",TEXT_TOKEN_D),

        BuildTextProperty("TEXT_PLATING_N",TEXT_PLATING_N),
        BuildTextProperty("TEXT_PLATING_L",TEXT_PLATING_L),
        BuildTextProperty("TEXT_PLATING_S",TEXT_PLATING_S),
        BuildTextProperty("TEXT_PLATING_D",TEXT_PLATING_D),

        BuildTextProperty("TEXT_FRAGMENT_N",TEXT_FRAGMENT_N),
        BuildTextProperty("TEXT_FRAGMENT_L",TEXT_FRAGMENT_L),
        BuildTextProperty("TEXT_FRAGMENT_S",TEXT_FRAGMENT_S),
        BuildTextProperty("TEXT_FRAGMENT_D",TEXT_FRAGMENT_D),

        BuildTextProperty("TEXT_CIRCUIT_N",TEXT_CIRCUIT_N),
        BuildTextProperty("TEXT_CIRCUIT_L",TEXT_CIRCUIT_L),
        BuildTextProperty("TEXT_CIRCUIT_S",TEXT_CIRCUIT_S),
        BuildTextProperty("TEXT_CIRCUIT_D",TEXT_CIRCUIT_D),

        BuildTextProperty("TEXT_CRYSTAL_N",TEXT_CRYSTAL_N),
        BuildTextProperty("TEXT_CRYSTAL_L",TEXT_CRYSTAL_L),
        BuildTextProperty("TEXT_CRYSTAL_S",TEXT_CRYSTAL_S),
        BuildTextProperty("TEXT_CRYSTAL_D",TEXT_CRYSTAL_D),

        BuildTextProperty("TEXT_BYPASS_N",TEXT_BYPASS_N),
        BuildTextProperty("TEXT_BYPASS_L",TEXT_BYPASS_L),
        BuildTextProperty("TEXT_BYPASS_S",TEXT_BYPASS_S),
        BuildTextProperty("TEXT_BYPASS_D",TEXT_BYPASS_D),

        BuildTextProperty("TEXT_BOXA_N",TEXT_BOXA_N),
        BuildTextProperty("TEXT_BOXA_L",TEXT_BOXA_L),
        BuildTextProperty("TEXT_BOXA_S",TEXT_BOXA_S),
        BuildTextProperty("TEXT_BOXA_D",TEXT_BOXA_D),

        BuildTextProperty("TEXT_BOXB_N",TEXT_BOXB_N),
        BuildTextProperty("TEXT_BOXB_L",TEXT_BOXB_L),
        BuildTextProperty("TEXT_BOXB_S",TEXT_BOXB_S),
        BuildTextProperty("TEXT_BOXB_D",TEXT_BOXB_D),

        BuildTextProperty("TEXT_BOXC_N",TEXT_BOXC_N),
        BuildTextProperty("TEXT_BOXC_L",TEXT_BOXC_L),
        BuildTextProperty("TEXT_BOXC_S",TEXT_BOXC_S),
        BuildTextProperty("TEXT_BOXC_D",TEXT_BOXC_D),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_COST_UPGRADE",TEXT_COST_UPGRADE),
        BuildTextProperty("TEXT_COST_POLICE",TEXT_COST_POLICE),

        BuildTextProperty("TEXT_SCANNER_B",TEXT_SCANNER_B),
        BuildTextProperty("TEXT_SCANNER_U",TEXT_SCANNER_U),
        BuildTextProperty("TEXT_SCANNER_F",TEXT_SCANNER_F),

        BuildTextProperty("TEXT_COMPUTER_B",TEXT_COMPUTER_B),
        BuildTextProperty("TEXT_COMPUTER_U",TEXT_COMPUTER_U),
        BuildTextProperty("TEXT_COMPUTER_F",TEXT_COMPUTER_F),

        BuildTextProperty("TEXT_LOCATOR_B",TEXT_LOCATOR_B),
        BuildTextProperty("TEXT_LOCATOR_U",TEXT_LOCATOR_U),
        BuildTextProperty("TEXT_LOCATOR_F",TEXT_LOCATOR_F),

        BuildTextProperty("TEXT_DISSONANT_B",TEXT_DISSONANT_B),
        BuildTextProperty("TEXT_DISSONANT_U",TEXT_DISSONANT_U),

        BuildTextProperty("TEXT_BOX_B",TEXT_BOX_B),
        BuildTextProperty("TEXT_BOX_U",TEXT_BOX_U),

        BuildTextProperty("TEXT_TREE_T",TEXT_TREE_T),
        BuildTextProperty("TEXT_TREE_S",TEXT_TREE_S),
        BuildTextProperty("TEXT_TREE_W",TEXT_TREE_W),

        BuildTextProperty("TEXT_WIKI_ID",TEXT_WIKI_ID),
        BuildTextProperty("TEXT_WIKI_UP",TEXT_WIKI_UP),

        -------------------------------------------------------------------

        BuildTextProperty("TEXT_TITLE_UNLOCK",TEXT_TITLE_UNLOCK),

        BuildTextProperty("TEXT_TITLE_FORMAT_1",TEXT_TITLE_FORMAT_1),
        BuildTextProperty("TEXT_TITLE_FORMAT_2",TEXT_TITLE_FORMAT_2),
        BuildTextProperty("TEXT_TITLE_FORMAT_3",TEXT_TITLE_FORMAT_3),
        BuildTextProperty("TEXT_TITLE_FORMAT_4",TEXT_TITLE_FORMAT_4),
        BuildTextProperty("TEXT_TITLE_FORMAT_5",TEXT_TITLE_FORMAT_5),

        BuildTextProperty("TEXT_TITLE_OWNED_1",TEXT_TITLE_OWNED_1),
        BuildTextProperty("TEXT_TITLE_OWNED_2",TEXT_TITLE_OWNED_2),
        BuildTextProperty("TEXT_TITLE_OWNED_3",TEXT_TITLE_OWNED_3),
        BuildTextProperty("TEXT_TITLE_OWNED_4",TEXT_TITLE_OWNED_4),
        BuildTextProperty("TEXT_TITLE_OWNED_5",TEXT_TITLE_OWNED_5),
    },
  }

  exml[#exml+1] = change
end

ModifyEXML(LANG_EXML)



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------