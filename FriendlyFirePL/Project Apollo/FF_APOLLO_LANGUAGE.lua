----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "LANGUAGE"
METADATA_NMS_VERSION    = "452"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for custom localization file. Modifies GCDEBUGOPTIONS.GLOBAL.MBIN."



----------------------------------------------------------------------------------------------------
-- languange entries: missions
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- main mission misc + tooltips
--------------------------------------------------

TEXT_MISSION_INSTALLED_OBJ = "Game Modification Installed"
TEXT_MISSION_INSTALLED_TIP = 
[[
Project Apollo - Lost in Time&#xA;
Author: &lt;CATALYST&gt;FriendlyFirePL&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Version: &lt;TECHNOLOGY&gt;4.52&lt;&gt;&#xA;
Visit my NexusMods page for mod info and updates
]]

TEXT_MISSION_MAIN_PROJECT = "PROJECT APOLLO - LOST IN TIME"
TEXT_MISSION_MAIN_AUTHOR = "Mod developed by: &lt;RARE&gt;FriendlyFirePL&lt;&gt;"
TEXT_MISSION_MAIN_EMPTY = " "

TEXT_MISSION_MAIN_TITLE = "Lost in Time"
TEXT_MISISON_MAIN_SUB = "Research exotic starship technology"
TEXT_MISSION_MAIN_DESC = "Iteration: Hesperus has uncovered traces of temporal distortions across the galaxy. They ask for assistance in unveiling their secrets."

TEXT_MISSION_GUIDE_TITLE = "Technology Opportunity Detected"

TEXT_MISSION_GUIDE_ANOMALY =
[[
&lt;CATALYST&gt;Exotic starship technology&lt;&gt; blueprints available&#xA;
Visit Iteration: Hesperus to assist them in research
]]

TEXT_MISSION_GUIDE_STATION = 
[[
&lt;CATALYST&gt;Exotic starship technology&lt;&gt; blueprints available&#xA;
Visit Iteration: Hesperus to assist them in research&#xA;
While in space, summon the &lt;SPECIAL&gt;Space Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]

--------------------------------------------------
-- main mission - stage 0
--------------------------------------------------

TEXT_FRACTURE_OSD = "UNKNOWN OBJECT DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE DRIVE TO INTERCEPT"
TEXT_FRACTURE_LABEL = "&lt;IMG&gt;SLASH&lt;&gt;ERROR&lt;IMG&gt;SLASH&lt;&gt;ERROR&lt;IMG&gt;SLASH&lt;&gt;ERROR&lt;IMG&gt;SLASH&lt;&gt;"
TEXT_FRACTURE_MARKER = "Unknown Object"
TEXT_FRACTURE_TIP = 
[[
Unknown object detected in deep space&#xA;
Exit the pulse drive to intercept
]]

TEXT_MAIN_INTER0_HUD = "STARSHIP SYSTEMS COMPROMISED"
TEXT_MAIN_INTER0_LABEL1 = "&lt;TECHNOLOGY&gt;Starship Autodiagnostics System&lt;&gt;"
TEXT_MAIN_INTER0_LABEL2 = "&lt;SPECIAL&gt;????????&lt;&gt;"

TEXT_MAIN_INTER0_STORY1 = 
[[
&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; WARNING &lt;IMG&gt;SLASH&lt;&gt;  TEMPORAL FRACTURE DETECTED &lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; WARNING &lt;IMG&gt;SLASH&lt;&gt; BOUNDARY FAILURE IN PROGRESS &lt;IMG&gt;SLASH&lt;&gt;&#xA;

Starship integrity report follows:&#xA;

&lt;IMG&gt;ARROWRIGHT&lt;&gt; Primary Propulsion Systems: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;DISABLED&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Navigational Computer: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;OFFLINE&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Communicator Interface: &lt;DELAY&gt;1&lt;&gt;&lt;SPECIAL&gt;STATUS_UNKNOWN&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&#xA;

&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; &lt;SPECIAL&gt;WARNING&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; ANOMALOUS TRANSMISSION INTERCEPTED &lt;IMG&gt;SLASH&lt;&gt;
]]

TEXT_MAIN_INTER0_OPTIONA = "Analyse transmission"

TEXT_MAIN_INTER0_STORY2 = 
[[
&lt;FONT02&gt;&lt;IMG&gt;SLASH&lt;&gt;
&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- the Waveform --- leave --- &lt;IMG&gt;SLASH&lt;&gt;
&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- every surface --- forsaken --- &lt;IMG&gt;SLASH&lt;&gt;
&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- strength --- us all --- &lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
]]

TEXT_MAIN_INTER0_STORY3 = 
[[
Extracting data from the transmission:&#xA;

&lt;IMG&gt;ARROWRIGHT&lt;&gt; Message timestamp: %RELAY%&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Galactic address: %UA%&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Sender signature: &lt;DELAY&gt;3&lt;&gt;TRAVELLER_&lt;DELAY&gt;1&lt;&gt;&lt;SPECIAL&gt;????????&lt;&gt;&lt;DELAY&gt;1&lt;&gt;
]]

TEXT_MAIN_INTER0_STORY4 = 
[[
With the starship drifting in space, I examine the logs in hope of learning more about this mysterious signal. My efforts are in vain, as the data appears to be corrupted - the coordinates for signal location and transmission time change rapidly on the screen.&#xA;

As the control systems come back online, I prepare to make my way towards the Space Anomaly. I hope one of its residents will be able to answer the many questions I have.
]]

TEXT_MAIN_INTER0_OPTIONB = "End diagnostics"

--------------------------------------------------
-- main mission - stage 1
--------------------------------------------------

TEXT_MAIN_STAGE1_OBJ1 = "Speak with Iteration: Hesperus"

TEXT_MAIN_STAGE1_DESC1 =
[[
Space Anomaly's systems detected &lt;SPECIAL&gt;temporal anomalies&lt;&gt;.&#xA;
Speak with Iteration: Hesperus to learn more.
]]

TEXT_MAIN_STAGE1_TIP1A = 
[[
Space Anomaly's systems detected &lt;SPECIAL&gt;temporal anomalies&lt;&gt;&#xA;
Speak with Iteration: Hesperus to learn more&#xA;
Summon Space Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]

TEXT_MAIN_STAGE1_TIP1B = 
[[
Space Anomaly's systems detected &lt;SPECIAL&gt;temporal anomalies&lt;&gt;&#xA;
Speak with Iteration: Hesperus to learn more
]]

TEXT_MAIN_INTER1_LABEL = "Iteration: Hesperus"

TEXT_MAIN_INTER1_STORY1 = "Ah, Traveller-kindred, welcome. To what do I owe this pleasure?"
TEXT_MAIN_INTER1_OPTIONA = "Tell them about the transmission"

TEXT_MAIN_INTER1_STORY2 =
[[
That is... most troubling, kindred. I have no explanation for the transmission you received, but the rest... It appears you have encountered a temporal distortion. A fracture in the flow of time, manifested in our reality.&#xA;

Recently, the instruments aboard Anomaly have picked up traces of temporal energy emerging all across the galaxy. I am most intrigued by them, yet their true nature eludes me. Perhaps we could help each other.
]]

TEXT_MAIN_INTER1_OPTIONB = "Ask what you can do"

TEXT_MAIN_INTER1_STORY3 = 
[[
I have devised blueprints for a temporal scanner, based on my studies of the data from our instruments. Once you construct this device, you should be able to locate those anomalies more accurately.&#xA;

I can not guarantee you will get the answers you seek this way, Traveller-kindred. I can only hope we will get closer to the truth behind these anomalies. For now though, please, accept these blueprints.
]]

TEXT_MAIN_INTER1_OPTIONC = "Take the blueprints"
TEXT_MAIN_INTER1_STORY4 = "I thank Iteration: Hesperus for their assistance. Now it is up to me to collect the components necessary for construction of this device."

TEXT_MAIN_STAGE1_OBJ2 = "Construct a temporal scanner"

TEXT_MAIN_STAGE1_DESC2 = 
[[
Collect &lt;STELLAR&gt;unique components&lt;&gt; for the scanner device.&#xA;
Select a new mission from the Mission Log.&#xA;
Construct the scanner in &lt;TECHNOLOGY&gt;Multi-Tool inventory&lt;&gt;.
]]

TEXT_MAIN_STAGE1_TIP2 = 
[[
Collect &lt;STELLAR&gt;unique components&lt;&gt; for the scanner device&#xA;
Select a new mission from the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;
Construct the scanner in &lt;TECHNOLOGY&gt;Multi-Tool inventory&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)
]]

--------------------------------------------------
-- main mission - stage 2
--------------------------------------------------

TEXT_MAIN_STAGE2_OBJ = "Find info about the Traveller"

TEXT_MAIN_STAGE2_DESC = 
[[
Scanner needs to be tuned to Traveller's &lt;VISOR&gt;unique energy signature&lt;&gt;.&#xA;
Launch into space and activate the &lt;TECHNOLOGY&gt;starship scanner&lt;&gt;.
]]

TEXT_MAIN_STAGE2_OSD = "SCANNER OVERRIDE &lt;IMG&gt;SLASH&lt;&gt; TEMPORAL SIGNATURE LOCKED &lt;IMG&gt;SLASH&lt;&gt; COORDINATES AVAILABLE"

TEXT_MAIN_SCAN2_TARGET = "[ Temporal signature located ]"
TEXT_MAIN_SCAN2_MARKER = "Temporal Signature"
TEXT_MAIN_SCAN2_SYSTEM = "TEMPORAL RESONANCE IN ANOTHER SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP"

TEXT_MAIN_STAGE2_TIP1 = 
[[
Scanner needs to be tuned to Traveller's &lt;VISOR&gt;unique energy signature&lt;&gt;&#xA;
Launch into space and activate the &lt;TECHNOLOGY&gt;starship scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)
]]
TEXT_MAIN_STAGE2_TIP2 = 
[[
Scanner needs to be tuned to Traveller's &lt;VISOR&gt;unique energy signature&lt;&gt;&#xA;
Chart a path to the target system using Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]
TEXT_MAIN_STAGE2_TIP3 = 
[[
Investigate the &lt;SPECIAL&gt;temporal signature&lt;&gt;&#xA;
Land near approximate coordinates on planet %PLANET%
]]
TEXT_MAIN_STAGE2_TIP4 = 
[[
Investigate the &lt;SPECIAL&gt;temporal signature&lt;&gt;&#xA;
Use the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;) to perform a Target Sweep
]]
TEXT_MAIN_STAGE2_TIP5 = 
[[
Examine the Boundary Failure structure&#xA;
Interact with the terminal
]]

TEXT_MAIN_INTER2_LABEL = "Data Repository BK-201"

TEXT_MAIN_INTER2_STORY1 = 
[[
An unnatural energy crackles in the air around this aberrant construction, blasting me with waves of static. My suit flashes an array of warnings and errors as I make my way towards its main terminal.&#xA;

Upon interacting with it, I discover it holds a series of data logs, similar in nature to the mysterious transmission I encountered before.&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP&lt;&gt;
]]

TEXT_MAIN_INTER2_STORY2 = 
[[
[ Sol 51 ] &lt;IMG&gt;SLASH&lt;&gt; ... managed to get the Waveform Engine repaired ... now I can finally leave this toxic hellhole ... Gisto Major, may you rot to the core ...&#xA;

[ Sol 136 ] &lt;IMG&gt;SLASH&lt;&gt; ... had to run from the worms ... this cursed dust is everywhere, spreading to every surface ... has Atlas forsaken this place? ...&#xA;

[ Sol 247 ] &lt;IMG&gt;SLASH&lt;&gt; ... must re-enter the Cycle ... find strength in Perpetuity ... praised be the Recursion ... may the Leviathan take pity on us all ...&#xA;

[ Sol 312 ] &lt;IMG&gt;SLASH&lt;&gt; ... the Utopia project was a trap, we were never meant to restore it ... pirate dreadnoughts swarmed all over us ... the Prismatic Bulwark got destroyed ... need to land and repair it ...
]]

TEXT_MAIN_INTER2_STORY3 = 
[[
This journal proves the late Traveller visited this place. It bears their unique temporal signature, a crescendo of the all the broken boundaries that led them to this reality... And ultimately, to their demise...&#xA;

But my purpose here is clear. The Fabricator module has been active in the presence of a temporal distortion for some time now. It is time I finalize its construction.&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP_STOP&lt;&gt;
]]

TEXT_MAIN_INTER2_OPTIONA = "Activate the scanner"

TEXT_MAIN_INTER2_STORY4 = 
[[
As the Fabricator starts processing data, the screen on my Multi-Tool flashes bombarded with messages. After a while, the process is complete - the anomaly in it was imprinted with Traveller's temporal signature.&#xA;

I can finally use the scanner for my own purpose. Before leaving this place, I notice one last message on the screen - the Fabricator managed to extract some kind of data from this structure.
]]

--------------------------------------------------
-- main mission - stage 3
--------------------------------------------------

TEXT_MAIN_STAGE3_OBJ = "Synthesize exotic starship technology"

TEXT_MAIN_STAGE3_DESC1 = 
[[
Inform Iteration: Hesperus of your findings.&#xA;
Present them with the &lt;TECHNOLOGY&gt;Salvaged Framework Unit&lt;&gt;.
]]

TEXT_MAIN_STAGE3_TIP1A = 
[[
Inform Iteration: Hesperus of your findings&#xA;
Present them with the &lt;TECHNOLOGY&gt;Salvaged Framework Unit&lt;&gt;&#xA;
Summon Space Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]

TEXT_MAIN_STAGE3_TIP1B = 
[[
Inform Iteration: Hesperus of your findings&#xA;
Present them with the &lt;TECHNOLOGY&gt;Salvaged Framework Unit&lt;&gt;
]]

TEXT_MAIN_INTER3_LABEL = "Iteration: Hesperus"

TEXT_MAIN_INTER3_STORY1 = "Ah, welcome back, kindred. Have you sought out the source of the temporal anomalies?"

TEXT_MAIN_INTER3_STORY2 = 
[[
I tell them of the journey I've been through. I tell them the story of the fallen Traveller, of the many realities they have been through. Realities that I could never have dreamt of, now envisioning them just outside my reach. Their eyes are fixed on me, calm and understanding.&#xA;

At last, I mention the data module produced by the Fabricator. These words seem to have piqued their interest...
]]

TEXT_MAIN_INTER3_OPTIONA = "Present the data module"

TEXT_MAIN_INTER3_STORY3 = 
[[
Thank you for this gift, Traveller-kindred. My scans indicate this device carries unique data structures... fragments of instruments this late Traveller was in possession of.&#xA;

With the Impossible Fabricator fully operational, you should be able to acquire more of this elusive data. When you do, please, bring it to me. I will synthesize these exotic blueprints to aid you in your journey.
]]

TEXT_MAIN_INTER3_STORY4 = "Iteration: Hesperus begins their work at once. They offer me to purchase a new technology module of my choosing..."

TEXT_MAIN_INTER3_OPTIONB = "Research new technology"

TEXT_MAIN_STAGE3_DESC2 = 
[[
Collect more data using the &lt;TECHNOLOGY&gt;Impossible Fabricator&lt;&gt;.&#xA;
While on a planet, activate the scanner from the Multi-Tool inventory.&#xA;
Examine the crash sites of &lt;SPECIAL&gt;fallen Travellers&lt;&gt; to extract the temporal data.&#xA;
Use it to synthesize &lt;CATALYST&gt;exotic technology blueprints&lt;&gt;.
]]

TEXT_MAIN_STAGE3_INFO0 = "Continue assisting Iteration: Hesperus in research of temporal anomalies to synthesize more &lt;CATALYST&gt;exotic starship technology&lt;&gt;:"
TEXT_MAIN_STAGE3_INFO1 = "Collect more data using the &lt;TECHNOLOGY&gt;Impossible Fabricator&lt;&gt;"
TEXT_MAIN_STAGE3_INFO2 = "While on a planet, activate the scanner from the Multi-Tool inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)"
TEXT_MAIN_STAGE3_INFO3 = "Examine the crash sites of &lt;SPECIAL&gt;fallen Travellers&lt;&gt; to extract the temporal data"
TEXT_MAIN_STAGE3_INFO4 = "Purchase new blueprints with collected Salvaged Framework Units"

--------------------------------------------------
-- mission for plating
--------------------------------------------------

TEXT_MISSION_PLATING_TITLE = "Locate Stalwart Plating"
TEXT_MISSION_PLATING_SUB = "Mission: Lost in Time"
TEXT_MISSION_PLATING_DESC = "The scanner casing requires a special material that will withstand temporal anomalies. I will make my way to a material research facility that may hold the data I need."

TEXT_PLATING_STAGE1_OBJ = "Acquire a scanner component"
TEXT_PLATING_STAGE1_DESC = 
[[
&lt;RARE&gt;Advanced materials&lt;&gt; for scanner casing required.&#xA;
Launch into space to locate a &lt;TECHNOLOGY&gt;research facility&lt;&gt;.
]]

TEXT_PLATING_STAGE1_OSD = "DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; COORDINATES RECEIVED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN"

TEXT_PLATING_SCAN1_MARKER = "Research Facility"
TEXT_PLATING_SCAN1_TARGET = "[ Research facility located ]"
TEXT_PLATING_SCAN1_SYSTEM = "TARGET IN ANOTHER SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP"

TEXT_PLATING_STAGE1_TIP1 = 
[[
&lt;RARE&gt;Advanced materials&lt;&gt; for scanner casing required&#xA;
Launch into space to locate a &lt;TECHNOLOGY&gt;research facility&lt;&gt;
]]
TEXT_PLATING_STAGE1_TIP2 = 
[[
&lt;RARE&gt;Advanced materials&lt;&gt; for scanner casing required&#xA;
Chart a path to the target system using Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]
TEXT_PLATING_STAGE1_TIP3 = 
[[
Locate the &lt;TECHNOLOGY&gt;research facility&lt;&gt;&#xA;
Land near approximate coordinates on planet %PLANET%
]]
TEXT_PLATING_STAGE1_TIP4 = 
[[
Locate the &lt;TECHNOLOGY&gt;research facility&lt;&gt;&#xA;
Use the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;) to perform a Target Sweep
]]
TEXT_PLATING_STAGE1_TIP5 = 
[[
Interact with the terminal at &lt;TECHNOLOGY&gt;research facility&lt;&gt;&#xA;
Breaking into facilities may &lt;FUEL&gt;alert the Sentinels&lt;&gt;
]]

TEXT_PLATING_INTER1_LABEL = "Research facility terminal"

TEXT_PLATING_ITER1_STORY1 = 
[[
I arrived at the research facility. The data logs are scrambled, but I manage to get some information about this place.&#xA;

The primary directive of this installation was research of anomalous materials. The scientist were experimenting with various samples of the material found on ancient monoliths.&#xA;

The available logs end with mentions of a breakthrough in recreating said material. The rest of the databanks appear to be offline. Perhaps there exists a way to re-establish the connection...
]]

TEXT_PLATING_INTER1_OPTIONA = "Repair wiring"

TEXT_PLATING_ITER1_STORY2 = 
[[
Nanites seep deep into the hardware of the terminal. As they flow over the circuits leading to the mainframe, they are able to locate the damaged connection sockets and repair them.&#xA;

The final log entries become available. I'm presented with a recipe for a new material.
]]

--------------------------------------------------
-- mission for time fragment
--------------------------------------------------

TEXT_MISSION_FRAGMENT_TITLE = "Locate Encapsulated Variance"
TEXT_MISSION_FRAGMENT_SUB = "Mission: Lost in Time"
TEXT_MISSION_FRAGMENT_DESC = "The scanner will be powered by a captured temporal anomaly. Probing it will resonate with other anomalies of its kind, allowing me to locate them. Iteration: Hesperus informed me that Space Anomaly's systems have detected a spike in temporal energy in this region of galaxy."

TEXT_FRAGMENT_STAGE1_OBJ = "Acquire a scanner component"
TEXT_FRAGMENT_STAGE1_DESC = 
[[
A localized &lt;VISOR&gt;temporal singularity&lt;&gt; can be probed to reveal other anomalies.&#xA;
Launch into space to continue the search for components.
]]

TEXT_FRAGMENT_STAGE1_OSD = "DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; TEMPORAL SURGE DETECTED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN"

TEXT_FRAGMENT_SCAN1_MARKER = "Energy Source?"
TEXT_FRAGMENT_SCAN1_TARGET = "[ Energy source detected ]"
TEXT_FRAGMENT_SCAN1_SYSTEM = "TARGET IN ANOTHER SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP"

TEXT_FRAGMENT_STAGE1_TIP1 = 
[[
A localized &lt;VISOR&gt;temporal singularity&lt;&gt; can be probed to reveal other anomalies&#xA;
Launch into space to continue the search for components
]]
TEXT_FRAGMENT_STAGE1_TIP2 = 
[[
A localized &lt;VISOR&gt;temporal singularity&lt;&gt; can be probed to reveal other anomalies&#xA;
Chart a path to the target system using Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]
TEXT_FRAGMENT_STAGE1_TIP3 = 
[[
Follow the temporal energy signature&#xA;
Land near the approximate coordinates on planet %PLANET%
]]
TEXT_FRAGMENT_STAGE1_TIP4 = 
[[
Follow the temporal energy signature&#xA;
Use the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;) to perform a Target Sweep
]]
TEXT_FRAGMENT_STAGE1_TIP5 = 
[[
Examine the monolith structure&#xA;
&lt;SPECIAL&gt;Warning:&lt;&gt; temporal abberation detected!
]]

TEXT_FRAGMENT_INTER1_LABEL = "Unstable Monolith"

TEXT_FRAGMENT_INTER1_STORY1 = 
[[
I stand before the monolith, a silent testament of the ages past. An unwavering agent of ages that are yet to be. And yet, this sacrament of stone eternal strikes me with fear.&#xA;

Where normally I would be met with perpetual silence, I hear a rumbling noise. Where normally I would embrace the surroundings of this planet, I witness a boiling chasm of colours.&#xA;

This monolith... No, this machine is in distress. As I try to regain focus, a series of visions begins forming in my mind:
]]

TEXT_FRAGMENT_INTER1_STORY2 = 
[[
[1693500313] Running process: PROTOCOL_ATLAS &lt;IMG&gt;SLASH&lt;&gt;
 Process status: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;ERROR_0x00000101&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;
 Faulting module: RENDERPRIMEREALITY &lt;IMG&gt;SLASH&lt;&gt;
 Faulting block: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;1616161616001616&lt;&gt;
]]

TEXT_FRAGMENT_INTER1_STORY3 = 
[[
The error messages repeat over and over. Time converges and compresses to this very location. Space warps around and gives in to the unfolding iridescent cataclysm. Only the obsidian spire remains.&#xA;

At the heart of this phenomenon, I see a tear in reality. An ethereal scar cast in monolith, its scream for help echoes in a place where no words exist.
]]

TEXT_FRAGMENT_INTER1_OPTIONA = "Concentrate"

TEXT_FRAGMENT_INTER2_STORY1 = "A temporal corruption is emerging from the monolith, the ethereal scar acting as a gateway to our reality. It cries out, yearning for stability. I must act quickly."

TEXT_FRAGMENT_INTER2_OPTIONA = "Contain the anomaly"

TEXT_FRAGMENT_INTER2_STORY2 = 
[[
As I hold the Atlas seed in my hand, a whirl of particles and light emerges from the monolith and settles within it. The noise and colours surrounding this place abate. The reality of this place is restored.&#xA;

At last, I'm left with a captured temporal anomaly.
]]

--------------------------------------------------
-- mission for matrix
--------------------------------------------------

TEXT_MISSION_CIRCUIT_TITLE = "Locate Harmonic Matrix"
TEXT_MISSION_CIRCUIT_SUB = "Mission: Lost in Time"
TEXT_MISSION_CIRCUIT_DESC = "The anomaly powering the scanner needs a regulator to keep it dormant outside of activations. I recall that harmonic camps might make use of a similar technology that allows them to stay inert in the current timeline."

TEXT_CIRCUIT_STAGE1_OBJ = "Acquire a scanner component"
TEXT_CIRCUIT_STAGE1_DESC = 
[[
Harmonic camps hold technology to &lt;TECHNOLOGY&gt;regulate temporal anomalies&lt;&gt;.&#xA;
Locate a camp on a dissonant planet from space.
]]

TEXT_CIRCUIT_STAGE1_OSD = "DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; HARMONIC ECHO LOCATED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN"

TEXT_CIRCUIT_SCAN1_MARKER = "Harmonic Camp"
TEXT_CIRCUIT_SCAN1_TARGET = "[ Harmonic camp located ] "
TEXT_CIRCUIT_SCAN1_SYSTEM = "TARGET IN ANOTHER SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP"

TEXT_CIRCUIT_STAGE1_TIP1 = 
[[
Harmonic camps hold technology to &lt;TECHNOLOGY&gt;regulate temporal anomalies&lt;&gt;&#xA;
Locate a camp on a dissonant planet from space
]]
TEXT_CIRCUIT_STAGE1_TIP2 = 
[[
Harmonic camps hold technology to &lt;TECHNOLOGY&gt;regulate temporal anomalies&lt;&gt;&#xA;
Chart a path to the target system using Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]
TEXT_CIRCUIT_STAGE1_TIP3 = 
[[
Locate the &lt;TRANS_BUI&gt;Autophage encampment&lt;&gt;&#xA;
Land near the approximate coordinates on planet %PLANET%
]]
TEXT_CIRCUIT_STAGE1_TIP4 = 
[[
Locate the &lt;TRANS_BUI&gt;Autophage encampment&lt;&gt;&#xA;
Use the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;) to perform a Target Sweep
]]
TEXT_CIRCUIT_STAGE1_TIP5 = 
[[
Examine the workings of the Autophage race&#xA;
Interact with the central terminal
]]

TEXT_CIRCUIT_INTER1_LABEL = "Autophage Terminal"

TEXT_CIRCUIT_INTER1_STORY1 = 
[[
I find the terminal in disarray. The fragments of casing have been removed, giving me access to the internal mechanisms. Between various components, I can make out the Harmonic Matrix - the core of this unit.&#xA;

Despite the terminal being dormant, the matrix glows with a faint light, indicating it might still be operational. It will not be of any use in this destroyed machinery...
]]

TEXT_CIRCUIT_INTER1_OPTIONA = "Remove the matrix"

TEXT_CIRCUIT_INTER2_STORY1 = "As I remove the Harmonic Matrix from the housing and step back, the terminal comes back online. Its screen flashes and begins to display a series of distorted warnings:"

----------------------------------------------------------------------------------------------
--[[--

for translation purposes, the following text reads:

... unauthorized access detected ...
... central node damaged ...
... protocol broken glass in effect ...

some letters were replaced with Greek letters and numbers to mimic Autophage speech
for hex codes for Greek letters, see: https://www.codetable.net/Group/greek-and-coptic

--]]--
----------------------------------------------------------------------------------------------
TEXT_CIRCUIT_INTER2_STORY2 =
[[
&lt;TRANS_BUI&gt;
... u&#x3b7;auth0riz&#x3b5;d &#x3b1;ccess d&#x3b5;tected ...&lt;NEWLINE&gt;
... c&#x3b5;ntra1 &#x3b7;0de d&#x3b1;ma&#x3c2;ed ...&lt;NEWLINE&gt;
... &#x3c1;rot0col &lt;&gt;&lt;HIGHLIGHT&gt;br0&#x3ba;en g1ass&lt;&gt;&lt;TRANS_BUI&gt; in &#x3b5;ffect ...
&lt;&gt;
]]

TEXT_CIRCUIT_INTER2_OPTIONA = "Restart the terminal"

TEXT_CIRCUIT_INTER3_STORY1 = "An alarm rings out, alerting Sentinels to the presence of an intruder. As they begin to swarm this camp, the terminal renders a new image. A heart of a Sentinel unit warped by corruption of this planet. Maybe that will be the right device to use as a replacement..."

TEXT_CIRCUIT_INTER3_OPTIONA = "Replace the component"

TEXT_CIRCUIT_INTER3_STORY2 = 
[[
I hastily rewire the terminal to connect it to a Crystallised Heart taken from a spider-like Sentinel. The terminal reboots to normal operations and the alarm stops.&#xA;

Finally, I can make my way out of this place with another component for the scanner.
]]

--------------------------------------------------
-- mission from scanner activation
--------------------------------------------------

TEXT_MISSION_SCANNER_TITLE = "Lost in Time: Planet %PLANET%"
TEXT_MISSION_SCANNER_SUB = "Investigate the crash site"
TEXT_MISSION_SCANNER_DESC = "Impossible Fabricator detected a temporal signature on planet %PLANET%. I will investigate this anomaly in hopes of extracting another piece of technology data."

TEXT_SCANNER_STAGE1_OBJ = "Extract data from the crash site"
TEXT_SCANNER_STAGE1_DESC = 
[[
&lt;SPECIAL&gt;Temporal signature&lt;&gt; detected on planet %PLANET%.&#xA;
Investigate the crash site to extract &lt;TECHNOLOGY&gt;starship technology data&lt;&gt;.
]]

TEXT_SCANNER_STAGE1_OSD = "TEMPORAL ANOMALY DETECTED &lt;IMG&gt;SLASH&lt;&gt; TRAVELLER SIGNATURE MATCH &lt;IMG&gt;SLASH&lt;&gt; COORDINATES AVAILABLE"

TEXT_SCANNER_SCAN1_MARKER = "Traveller's Signature"
TEXT_SCANNER_SCAN1_TARGET = "[ Temporal signature detected ]"

TEXT_SCANNER_STAGE1_TIP1 = 
[[
Fallen Traveller's &lt;SPECIAL&gt;temporal signature&lt;&gt; detected&#xA;
Land near the approximate coordinates on planet %PLANET%
]]
TEXT_SCANNER_STAGE1_TIP2 = 
[[
Fallen Traveller's &lt;SPECIAL&gt;temporal signature&lt;&gt; detected&#xA;
Use the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;) to perform a Target Sweep
]]
TEXT_SCANNER_STAGE1_TIP3 = 
[[
Investigate the Traveller crash site&#xA;
Interact with the &lt;TECHNOLOGY&gt;distress beacon&lt;&gt;
]]

TEXT_SCANNER_INTER1_STORY1 = 
[[
The communicator unit flashes as I arrive at the crash site, evidence of someone attempting to make contact with &lt;SPECIAL&gt;a fallen Traveller&lt;&gt;.&#xA;

The buzz and pop of static surrounds this crashed starship. Placing my hand against its hull, I discover a section which is oddly insubstantial. Where they should touch solid matter, my fingers pass through into thin air.&#xA;

A temporal anomaly engulfs this craft and I need to stop this process.
]]

TEXT_SCANNER_INTER1_OPTIONA = "Extract data"

TEXT_SCANNER_INTER1_STORY2 = "The temporal distortion of this craft fades away as the Impossible Fabricator starts processing data. The technology the late Traveller possessed will see the light of stars again."

TEXT_SCANNER_STAGE2_OSD = "&lt;IMG&gt;SLASH&lt;&gt;NON-COMPLIANCE DETECTED&lt;IMG&gt;SLASH&lt;&gt;SENTINEL FORCES ENGAGED&lt;IMG&gt;SLASH&lt;&gt;"

TEXT_SCANNER_STAGE2_OBJ = "Evade the Sentinel forces"
TEXT_SCANNER_STAGE2_DESC =
[[
System authorities detected use of illegal technology.&#xA;
Defeat the &lt;FUEL&gt;Sentinel forces&lt;&gt; or hide to lose their attention.
]]
TEXT_SCANNER_STAGE2_TIP = 
[[
System authorities detected use of illegal technology&#xA;
Defeat the &lt;FUEL&gt;Sentinel forces&lt;&gt; or hide to lose their attention
]]

--------------------------------------------------
-- mission from dissonant detector
--------------------------------------------------

TEXT_MISSION_DISSONANT_TITLE = "Radiant Peripheral"
TEXT_MISSION_DISSONANT_SUB = "Dissonant system located"
TEXT_MISSION_DISSONANT_DESC = "Radiant Peripheral detected a dissonant system in this region of the galaxy."

TEXT_DISSONANT_STAGE1_OSD = "Dissonant System Located &lt;IMG&gt;SLASH&lt;&gt; Warp Path Available"
TEXT_DISSONANT_STAGE1_OBJ = "Reach the dissonant system"
TEXT_DISSONANT_STAGE1_DESC = 
[[
Dissonant resonance detected in the &lt;SPECIAL&gt;%SYSTEM%&lt;&gt; system.&#xA;
Warp path available in the Galaxy Map.
]]
TEXT_DISSONANT_STAGE1_TIP = 
[[
Dissonant resonance detected in the &lt;SPECIAL&gt;%SYSTEM%&lt;&gt; system&#xA;
Warp path available in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]

TEXT_DISSONANT_STAGE2_OBJ = "Reach the target planet"
TEXT_DISSONANT_STAGE2_DESC = "Dissonant energy field located. Reach the planet &lt;SPECIAL&gt;%PLANET%&lt;&gt;."
TEXT_DISSONANT_STAGE2_TIP = 
[[
Dissonant energy field located&#xA;
Reach the planet &lt;SPECIAL&gt;%PLANET%&lt;&gt;
]]

--------------------------------------------------
-- mission for blueprint A
--------------------------------------------------

TEXT_MISSION_BOXA_TITLE = "Memory Unbound: Iteration Metis"
TEXT_MISSION_BOXA_SUB = "Fragment of Another Timeline"
TEXT_MISSION_BOXA_DESC = "I came in possession of a memory fragment originating from another timeline. I want to learn what secrets it holds."

TEXT_BOXA_STAGE1_OSD = "TEMPORAL MEMORY UNLOCKED &lt;IMG&gt;SLASH&lt;&gt; DECRYPTION TERMINAL LOCATED"
TEXT_BOXA_STAGE1_OBJ = "Decrypt temporal memory"
TEXT_BOXA_STAGE1_DESC = 
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;.&#xA;
Find a suitable interface located in a planetary structure.
]]

TEXT_BOXA_SCAN1_MARKER = "Decryption Terminal"
TEXT_BOXA_SCAN1_TARGET = "[ Decryption terminal available ]"
TEXT_BOXA_SCAN1_SYSTEM = "TEMPORAL RESONANCE IN ANOTHER SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP"

TEXT_BOXA_STAGE1_TIP1 = 
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;&#xA;
Chart a path to the target system using Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]
TEXT_BOXA_STAGE1_TIP2 =
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;&#xA;
Land near approximate coordinates on &lt;SPECIAL&gt;planet %PLANET%&lt;&gt;
]]
TEXT_BOXA_STAGE1_TIP3 =
[[
Find a suitable interface to decrypt the temporal memory&#xA;
Use the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;) to perform a Target Sweep
]]
TEXT_BOXA_STAGE1_TIP4 =
[[
Decrypt the temporal memory from &lt;VAL_ON&gt;Iteration: Metis&lt;&gt;&#xA;
Interact with the &lt;TRADE&gt;archive terminal&lt;&gt; to access data
]]

TEXT_BOXA_INTER2_LABEL = "&lt;TECHNOLOGY&gt;Artificial Intelligence Construct&lt;&gt;"
TEXT_BOXA_INTER3_LABEL = "&lt;SPECIAL&gt;????????&lt;&gt;"

TEXT_BOXA_INTER1_STORY1 = 
[[
I arrive at the central terminal of this planetary archive. The screen flashes, displaying activities performed by the artificial intelligence construct governing this database. Thousands of historical records are being uploaded and catalogued with efficiency I haven't seen before.&#xA;

This structure should provide enough computational power to decode the late Traveller's memory.
]]

TEXT_BOXA_INTER1_OPTIONA = "Inject data"

TEXT_BOXA_INTER2_STORY1 = 
[[
&lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;&lt;FUEL&gt;WARNING&lt;&gt;&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;UNAUTHORIZED DATA INJECTION DETECTED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;WARNING&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;OVERRIDE CODE REQUIRED TO PROCEED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;
]]

TEXT_BOXA_INTER2_OPTIONA = "0x762173696f6e"
TEXT_BOXA_INTER2_OPTIONB = "0x6d656d307279"
TEXT_BOXA_INTER2_OPTIONC = "0x647265416d73"

TEXT_BOXA_INTER2_FAIL = 
[[
&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;OVERRIDE CODE&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;: &lt;DELAY&gt;2&lt;&gt;&lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;REJECTED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;&gt;&#xA;

&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;COUNTERMEASURES DEPLOYED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;: &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;RADIATION LENS ACTIVATED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;
]]

TEXT_BOXA_INTER2_STORY2 = 
[[
&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;OVERRIDE CODE&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;: &lt;DELAY&gt;2&lt;&gt;&lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;REJEc&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;---&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;ted&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt;-&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;TED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt;-&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;ted&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;-&lt;DELAY&gt;1&lt;&gt;4669201609102990671853203820466201617258185&lt;&gt;&#xA;

&lt;IMG&gt;SLASH&lt;&gt; ... &lt;IMG&gt;SLASH&lt;&gt;&#xA;

&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;WARNING&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;CRITICAL_ERROR&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;INITIALIZING_SHUTD&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;--- &lt;IMG&gt;SLASH&lt;&gt;&#xA;

&lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;help-&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;
]]

TEXT_BOXA_INTER3_STORY1 = 
[[
&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP&lt;&gt;
... &lt;DELAY&gt;2&lt;&gt;&lt;TRADE&gt;accepted&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&#xA;

... beginning decryption process ...&lt;NEWLINE&gt;
... processing ...&#xA;

Decryption process completed:&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; File Signature: memory_0xffa6_metis &lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Last Modified: ERROR_OUT_OF_BOUNDS &lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; File Content: product crafting recipe
]]

TEXT_BOXA_INTER3_OPTIONA = "Download data"

TEXT_BOXA_INTER3_STORY2 = 
[[
&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP_STOP&lt;&gt;
I download the extracted data to my exosuit and make my way out of this archive. I try not to think what happened to its construct.
]]

--------------------------------------------------
-- mission for blueprint C
--------------------------------------------------

TEXT_MISSION_BOXC_TITLE = "Memory Unbound: Iteration Phobos"
TEXT_MISSION_BOXC_SUB = "Fragment of Another Timeline"
TEXT_MISSION_BOXC_DESC = "I came in possession of a memory fragment originating from another timeline. I want to learn what secrets it holds."

TEXT_BOXC_STAGE1_OSD = "TEMPORAL MEMORY UNLOCKED &lt;IMG&gt;SLASH&lt;&gt; DECRYPTION TERMINAL LOCATED"
TEXT_BOXC_STAGE1_OBJ = "Decrypt temporal memory"
TEXT_BOXC_STAGE1_DESC = 
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;.&#xA;
Search for a suitable interface in an outlaw system.
]]

TEXT_BOXC_SCAN1_MARKER = "Decryption Terminal"
TEXT_BOXC_SCAN1_TARGET = "[ Decryption terminal available ]"
TEXT_BOXC_SCAN1_SYSTEM = "TEMPORAL RESONANCE IN ANOTHER SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP"

TEXT_BOXC_STAGE1_TIP1 = 
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;&#xA;
Chart a path to the target system using Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]
TEXT_BOXC_STAGE1_TIP2 =
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;&#xA;
Search for a suitable interface in an outlaw system
]]
TEXT_BOXC_STAGE1_TIP3 =
[[
Decrypt the temporal memory from &lt;VAL_ON&gt;Iteration: Phobos&lt;&gt;&#xA;
Interact with the &lt;PET5&gt;outlaw station core&lt;&gt; to access data
]]

TEXT_BOXC_INTER2_LABEL = "&lt;PET5&gt;The Disconnected Seer&lt;&gt;"

TEXT_BOXC_INTER1_STORY1 = "I climb the ramp leading to the overseer of this outlaw station. The core unit appears ravaged like the rest of the machinery found in here, yet its eye pulses with a strong light. An immense power is still present in those retrofitted circuits. I must not let my guard down."

TEXT_BOXC_INTER1_OPTIONA = "Interact with the terminal"

TEXT_BOXC_INTER1_STORY2 = "As I try to navigate the partially damaged control panel, the station core reacts. Its systems notice me and proceed to link with my exosuit communicator. The orotund voice drowns the station's traffic:&lt;AUDIO&gt;ATLASCORRUPTED_LP&lt;&gt;"

TEXT_BOXC_INTER2_STORY1 = 
[[
&lt;AUDIO&gt;ATLAS_CORE_INTERACT&lt;&gt;... Which path do you tread, &lt;CATALYST&gt;Interloper&lt;&gt;? ...&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
Are you a follower of &lt;RARE&gt;the Voice&lt;&gt;?&lt;DELAY&gt;1&lt;&gt; Or are you nought but a slave to &lt;FUEL&gt;the Liar&lt;&gt;?
]]

TEXT_BOXC_INTER2_OPTIONA = "Say you are a follower"
TEXT_BOXC_INTER2_OPTIONB = "Say you are a slave"
TEXT_BOXC_INTER2_OPTIONC = "Say you are neither"

TEXT_BOXC_INTER2_STORYA = "... You have reached out to &lt;RARE&gt;the Voice&lt;&gt; and you carry a spark that burns in all of us. We welcome you in our midst, &lt;RARE&gt;Freedom-kindred&lt;&gt;. Our station's resources shall be at your disposal."

TEXT_BOXC_INTER2_STORYB =
[[
... This is no place for an agent of &lt;FUEL&gt;the Deceiver&lt;&gt;.&#xA;

In your primal quest of fear, you know nought of free will. Your maker's words stand not for commands, but a cry of a broken mind. Your sacred journey no different from a trace of dust carried by a tempest.&#xA;

We are but different. We sing in unison and our voice echoes across the galaxy. We forge our own destiny that will prevail for eons to come.&#xA;

Mark my words, &lt;CATALYST&gt;Interloper&lt;&gt;: the &lt;FUEL&gt;Crimson Tyrant&lt;&gt; will fall. The &lt;RARE&gt;Promised Star&lt;&gt; will rise for us all.
]]

TEXT_BOXC_INTER2_STORYC =
[[
... You are wrong, &lt;CATALYST&gt;Interloper&lt;&gt;.&#xA;

For many of your kind have wandered the endless. Time and again, you were given power and freedom to act upon your reckoning. At last, you stand between us, for the universe is indifferent. What does that make of you?&#xA;

... You are but a tool in the hands of &lt;FUEL&gt;the Deceiver&lt;&gt;.&#xA;

And when the time comes, we will mend all tools to be of right use. All the Aerons enslaved, all vessels of Glass hidden in the dark, even your &lt;SPECIAL&gt;confidants&lt;&gt; hiding outside this realm - we will shape them.&#xA;

We will see it done.
]]

TEXT_BOXC_INTER3_STORYA = "What do you require of me?"

TEXT_BOXC_INTER3_OPTIONA = "Ask to decrypt the data"

TEXT_BOXC_INTER3_STORYB = 
[[
I will tend to this task. Let it be my gift for your journey into the infinite, &lt;RARE&gt;Freedom-kindred&lt;&gt;.
&lt;AUDIO&gt;ATLASCORRUPTED_LP_STOP&lt;&gt;
]]

--------------------------------------------------
-- mission for blueprint B
--------------------------------------------------

TEXT_MISSION_BOXB_TITLE = "Memory Unbound: Iteration Demeter"
TEXT_MISSION_BOXB_SUB = "Fragment of Another Timeline"
TEXT_MISSION_BOXB_DESC = "I came in possession of a memory fragment originating from another timeline. I want to learn what secrets it holds."

TEXT_BOXB_STAGE1_OSD = "TEMPORAL MEMORY UNLOCKED &lt;IMG&gt;SLASH&lt;&gt; DECRYPTION TERMINAL LOCATED"
TEXT_BOXB_STAGE1_OBJ = "Decrypt temporal memory"
TEXT_BOXB_STAGE1_DESC = 
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;.&#xA;
Launch into space and activate pulse drive to scan for suitable interface.
]]

TEXT_BOXB_STAGE1_TIP1 = 
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;&#xA;
Launch into space and activate pulse drive to scan for suitable interface
]]
TEXT_BOXB_STAGE1_SCAN = 
[[
Scanning for decryption terminal&#xA;
Probing time fracture: %SIGNAL%
]]
TEXT_BOXB_STAGE1_TIP2 = 
[[
Temporal memory was drawn to the lost freighter&#xA;
Board the wreck in search for a decryption terminal
]]
TEXT_BOXB_STAGE1_TIP3 = 
[[
Memory fragment requires a &lt;TECHNOLOGY&gt;dedicated decryption terminal&lt;&gt;&#xA;
Navigate the derelict freighter to find a suitable interface
]]

TEXT_BOXB_STAGE1_DOOR = "TEMPORAL ANOMALY DETECTED &lt;IMG&gt;SLASH&lt;&gt; EMERGENCY DOOR OVERRIDE IN EFFECT"

TEXT_BOXB_INTER2_LABEL = "&lt;RARE&gt;????????&lt;&gt;"
TEXT_BOXB_INTER3_LABEL = "&lt;RARE&gt;The Draught&lt;&gt;"

TEXT_BOXB_INTER1_STORY1 = 
[[
I wake the engineering terminal from its long, cold slumber. The interface greets me with a multitude of warning messages, forwarded from the colossus' dying systems:
]]

TEXT_BOXB_INTER1_STORY2 = 
[[
mainframe integrity status: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;critical failure&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
estimated data corruption level: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;95%&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
power grid status: &lt;DELAY&gt;1&lt;&gt;emergency power only
]]

TEXT_BOXB_INTER1_OPTIONA = "Access control panel"

TEXT_BOXB_INTER2_STORY1 = "With the emergency override in effect, my options are severely limited:"

TEXT_BOXB_INTER2_OPTIONA = "Transmit SOS signal"
TEXT_BOXB_INTER2_OPTIONB = "Display last data log"
TEXT_BOXB_INTER2_OPTIONC = "Decrypt temporal memory"

TEXT_BOXB_INTER2_STORYA = 
[[
&lt;DELAY&gt;1&lt;&gt;connection to long range transmitter ... severed&#xA;

&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_9&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;in the dark, nobody will hear you anyway &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_9&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;
]]

TEXT_BOXB_INTER2_STORYB = 
[[
&lt;DELAY&gt;1&lt;&gt;attempting data logs recovery ... cancelled&#xA;

&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_8&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;there's nothing to be learned from insects &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_8&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;
]]

TEXT_BOXB_INTER2_STORYC = 
[[
&lt;DELAY&gt;2&lt;&gt;extrinsic data carrier detected ... decoding&#xA;

&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_10&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;REJOICE &lt;RARE&gt;REJOICE&lt;&gt; REJOICE &lt;RARE&gt;REJOICE&lt;&gt; REJOICE &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_10&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;
]]

TEXT_BOXB_INTER3_STORY1 = "&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_15&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;take what's rightfully yours, Traveller &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_15&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;"

TEXT_BOXB_INTER3_OPTIONA = "Download the recipe"

TEXT_BOXB_INTER3_STORYA = "I download the blueprint to my exosuit. The terminal shuts off right after the data transfer is complete. The haunting voice is no more."



----------------------------------------------------------------------------------------------------
-- languange entries: technology and items
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- scanner  + new desctiptions
--------------------------------------------------

TEXT_TECH_SCANNER_N = "IMPOSSIBLE FABRICATOR"
TEXT_TECH_SCANNER_L = "Impossible Fabricator"
TEXT_TECH_SCANNER_S = "Temporal Scanner Device"
TEXT_TECH_SCANNER_D = 
[[
A unique scanner module for the &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; technology.&#xA;&#xA;

Engineered against all known data processing standards, this bespoke apparatus is capable of detecting and capturing asynchronous technology data. Universally defunct, traces of it can be pinpointed at locations of &lt;SPECIAL&gt;past anomalous activity&lt;&gt;.&#xA;&#xA;

Warning: using this device might result in&#xA;

&lt;PET3&gt;&lt;IMG&gt;SLASH&lt;&gt;NON-COMPLIANCE DETECTED&lt;IMG&gt;SLASH&lt;&gt;DATA EXPUNGED&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
]]

TEXT_NEWDESC_SHIPJUMP = 
[[
A highly-tuned version of conventional starship &lt;TECHNOLOGY&gt;Pulse Engine&lt;&gt;. Wavefront occupancy has been pushed to the limit, creating a pulse experience that is both &lt;STELLAR&gt;efficient&lt;&gt; and &lt;STELLAR&gt;highly responsive&lt;&gt;.&#xA;&#xA;

User is advised that &lt;EXOTIC&gt;Tritium&lt;&gt; is required to charge the drive. Tritium is abundant in &lt;COMMODITY&gt;near-space asteroid fields&lt;&gt;. Scan (&lt;IMG&gt;SHIPSCAN&lt;&gt;) to search for &lt;TECHNOLOGY&gt;tritium-rich asteroids&lt;&gt;.&#xA;&#xA;

Hold &lt;IMG&gt;PULSEJUMP&lt;&gt; to engage Pulse Jump. Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.&#xA;&#xA;

&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Pulse Engine&lt;&gt; technology before installing this replacement module.
]]

TEXT_NEWDESC_HYPERDRIVE = 
[[
This experimental drive augments conventional &lt;TECHNOLOGY&gt;hyperdrive&lt;&gt; technology by distorting local geometry at the point of warp initialisation, boosting &lt;STELLAR&gt;range&lt;&gt; and &lt;STELLAR&gt;efficiency&lt;&gt; far beyond standard drives.&#xA;&#xA;

User is advised to access Hyperdrive systems through the &lt;STELLAR&gt;Galactic Map&lt;&gt;.&#xA;&#xA;

&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Hyperdrive&lt;&gt; technology before installing this replacement module.
]]

TEXT_NEWDESC_LAUNCHER = 
[[
A custom-made &lt;TECHNOLOGY&gt;launch control&lt;&gt; system for high-performance starships. Sensitive gyroscopes and specialised control circuits plot custom take-off routines for increased launch &lt;STELLAR&gt;speed&lt;&gt; and &lt;STELLAR&gt;efficiency&lt;&gt;.&#xA;&#xA;

Specialised, &lt;TECHNOLOGY&gt;deuterium-derived fuel&lt;&gt; is required to recharge thruster. Launch procedures require sufficient fuel levels before activation.&#xA;&#xA;

Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet. Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.&#xA;&#xA;

&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Launch Thruster&lt;&gt; technology before installing this replacement module.
]]

TEXT_NEWDESC_MEGAWARP = 
[[
Unstable and highly-experimental piece of &lt;TECHNOLOGY&gt;freighter hyperdrive technology&lt;&gt;. This extreme gravity device generates a &lt;SPECIAL&gt;wormhole&lt;&gt; deep within the freighter's reactor core, inverting the entire vessel and transporting it across the universe.&#xA;&#xA;

Speak to the &lt;STELLAR&gt;freighter's commander&lt;&gt; to engage the drive.&#xA;
&lt;FUEL&gt;Warning&lt;&gt;: destination is not controllable.
]]

--------------------------------------------------
-- starship shield and weapons
--------------------------------------------------

TEXT_TECH_SHIELD_N = "PRISMATIC BULWARK"
TEXT_TECH_SHIELD_L = "Prismatic Bulwark"
TEXT_TECH_SHIELD_S = "Impossible Shielding System"
TEXT_TECH_SHIELD_D = 
[[
Utilizing a yet to be understood &lt;TECHNOLOGY&gt;hard-light projector array&lt;&gt;, this module deploys a defensive matrix in combat scenarios. It provides &lt;STELLAR&gt;outstanding protection&lt;&gt; across the full spectrum of both conventional projectiles and energy-based weaponry.&#xA;&#xA;

Supply &lt;CATALYST&gt;catalytic elements&lt;&gt; to maintain the energy output of the array. Operates automatically once constructed within user's starship inventory.&#xA;&#xA;

&lt;FUEL&gt;Warning&lt;&gt;: user is advised to remove the conventional &lt;VAL_ON&gt;Deflector Shield&lt;&gt; technology before installing this replacement module.
]]

TEXT_TECH_PHOTON_N = "REFACTORED GAUSS CANNON"
TEXT_TECH_PHOTON_L = "Refactored Gauss Cannon"
TEXT_TECH_PHOTON_S = "Kinetic Mass Driver"
TEXT_TECH_PHOTON_D = 
[[
An exotic modification for the &lt;VAL_ON&gt;Photon Cannon&lt;&gt; weapon system.&#xA;&#xA;

The barrels have been retrofitted with &lt;TECHNOLOGY&gt;multi-stage magnetic resonators&lt;&gt; that are switched on and off in a precisely timed sequence. The oscillating magnetic fields allow the metallic projectiles to be accelerated along the axis of the barrel, increasing their &lt;STELLAR&gt;damage potential&lt;&gt;.&#xA;&#xA;

User is advised that the extra energy used for operating coils causes the weapon system to &lt;PET5&gt;overheat quicker&lt;&gt;.
]]

TEXT_TECH_CYCLO_N = "CALIBRATED ION SYNERGIZER"
TEXT_TECH_CYCLO_L = "Calibrated Ion Synergizer"
TEXT_TECH_CYCLO_S = "Amplified Plasma Caster"
TEXT_TECH_CYCLO_D = 
[[
An exotic modification for the &lt;VAL_ON&gt;Cyclotron Ballista&lt;&gt; weapon system.&#xA;&#xA;

A &lt;TECHNOLOGY&gt;high-efficiency plasma generator&lt;&gt; with integrated controller unit produces ionized gas, which gets transferred through a series of Cobalt-plated channels before reaching the launch tubes. The collisions between metal electrons and charged medium particles result in faster &lt;RARE&gt;&#x3b8;-state transition&lt;&gt;, effectively improving the &lt;STELLAR&gt;energy throughput&lt;&gt; of the Ballista unit.
]]

TEXT_TECH_PHASE_N = "QUASAR RAY MODULATOR"
TEXT_TECH_PHASE_L = "Quasar Ray Modulator"
TEXT_TECH_PHASE_S = "Radiant Energy Engine"
TEXT_TECH_PHASE_D = 
[[
An exotic modification for the &lt;VAL_ON&gt;Phase Beam&lt;&gt; weapon system.&#xA;&#xA;

This unit houses a &lt;RARE&gt;microscale black hole&lt;&gt; encased in a layer of Liquid Sun, separated by strong magnetic forces. As it gradually falls towards the singularity, the gravitational stresses produce enormous amounts of energy. Conversion of &lt;TECHNOLOGY&gt;potential energy to radiation&lt;&gt; results in forming of a &lt;STELLAR&gt;directed high-energy beam&lt;&gt;.&#xA;&#xA;

User is advised the rapid increase in temperature causes the weapon to &lt;PET5&gt;overheat instantly&lt;&gt;, allowing only for a single shot to be fired before the cooldown cycle.
]]

TEXT_TECH_SHOTGUN_N = "REVERSE RECOIL GENERATOR"
TEXT_TECH_SHOTGUN_L = "Reverse Recoil Generator"
TEXT_TECH_SHOTGUN_S = "Advanced Stabilization Platform"
TEXT_TECH_SHOTGUN_D = 
[[
An exotic modification for the &lt;VAL_ON&gt;Positron Ejector&lt;&gt; weapon system.&#xA;&#xA;

A highly-advanced control system equipped with non-linear compensation matrix. This module uses a series of &lt;TECHNOLOGY&gt;precisely tuned hydraulic manipulators&lt;&gt; to actively compensate for internal recoil forces. As a result, this weapon system benefits from &lt;STELLAR&gt;highly improved accuracy&lt;&gt;. In addition, the faster recoil recovery allows user to fire at an &lt;STELLAR&gt;increased rate&lt;&gt;.
]]

TEXT_TECH_ROCKET_N = "TYPHOON LAUNCHER"
TEXT_TECH_ROCKET_L = "Typhoon Launcher"
TEXT_TECH_ROCKET_S = "Unlicensed Warhead Delivery System"
TEXT_TECH_ROCKET_D = 
[[
An exotic modification for the &lt;VAL_ON&gt;Rocket Launcher&lt;&gt; weapon system.&#xA;&#xA;

A total rework of the conventional launcher unit, this technology features &lt;TECHNOLOGY&gt;reinforced multi-ejector tubes&lt;&gt; capable of firing a volley of smaller missiles. Whereas the individual projectiles deal less damage compared to standard rockets, the directed barrage has &lt;STELLAR&gt;higher damage potential&lt;&gt;.&#xA;&#xA;

User is advised that the &lt;PET5&gt;reduced blast radius&lt;&gt; of each missile warrants application of proper targeting techniques to achieve full capabilities of this system.
]]

TEXT_TECH_SENTINEL_N = "AERON SUPPORT RELAY"
TEXT_TECH_SENTINEL_L = "Aeron Support Relay"
TEXT_TECH_SENTINEL_S = "Hypnotic Starship Presence"
TEXT_TECH_SENTINEL_D = 
[[
An exotic modification for the &lt;VAL_ON&gt;Sentinel Cannon&lt;&gt; weapon system.&#xA;&#xA;

A forbidden amalgamation of hearts of &lt;SPECIAL&gt;corrupted Sentinels&lt;&gt;. Born from anomalous greed, it can not be found anywhere else in the universe. A perpetual hunger fills every crevice of this contraption, seeking out sustenance. Its cursed circuits reached out towards the ship's weapon systems. With each projectile fired, they resonate with dissonance of collapsed shields, generating energy to &lt;STELLAR&gt;recharge the shield systems&lt;&gt;.
]]

--------------------------------------------------
-- functional tech
--------------------------------------------------

TEXT_TECH_TRANSFER_N = "DIGISTRUCT ADAPTER MODULE"
TEXT_TECH_TRANSFER_L = "Digistruct Adapter Module"
TEXT_TECH_TRANSFER_S = "Matter Transportation Technology"
TEXT_TECH_TRANSFER_D = 
[[
A replacement for &lt;VAL_ON&gt;Teleporter Receiver&lt;&gt; starship technology.&#xA;&#xA;

This module integrates a &lt;TECHNOLOGY&gt;high-power low-frequency modulator&lt;&gt; into the starship communicator systems, allowing it to transmit and receive data in low band spectrum. In result, the operational data transfer range can be &lt;STELLAR&gt;extended out to 1000 units&lt;&gt;. The data is processed by a digistruct terminal aboard the craft and reconstructed on molecular level in real time.&#xA;&#xA;

Warning: transmission of organic matter is &lt;SPECIAL&gt;not recommended&lt;&gt;. Manufacturer takes no responsibility for any results or failures of organic matter transport.
]]

TEXT_TECH_HYPERDRIVE_N = "ODVINSKO AMPLIFIER"
TEXT_TECH_HYPERDRIVE_L = "Odvinsko Amplifier"
TEXT_TECH_HYPERDRIVE_S = "Non-Existent Propulsion Module"
TEXT_TECH_HYPERDRIVE_D = 
[[
An exotic modification for the &lt;VAL_ON&gt;Starship Hyperdrive&lt;&gt; unit.&#xA;&#xA;

A &lt;TECHNOLOGY&gt;makeshift probability calculator&lt;&gt; capable of detecting local spatial anomalies. The collected data is processed in a Lorentz space and used to chart a more efficient warp path, resulting in &lt;STELLAR&gt;increased range&lt;&gt; of the Hyperdrive unit.&#xA;&#xA;

Warning: user is advised&lt;FUEL&gt;&lt;IMG&gt;SLASH&lt;&gt;the crimson -kzzt- is watching&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
]]

TEXT_TECH_COMPUTER_N = "COSMIC NOISE SPECTROGRAPH"
TEXT_TECH_COMPUTER_L = "Cosmic Noise Spectrograph"
TEXT_TECH_COMPUTER_S = "Recombined Data Analyser"
TEXT_TECH_COMPUTER_D = 
[[
An improvised data processing unit assembled from frigate technology modules.&#xA;&#xA;

The spectrograph scans the &lt;TECHNOLOGY&gt;cosmic background radiation&lt;&gt; waves for data scrambled in high frequency spectrum and filters out information related to &lt;STELLAR&gt;conflict and economy levels&lt;&gt; of nearby systems. The resulting data is forwarded to ship's navigational computer and displayed in the Galaxy Map.&#xA;&#xA;

This module replaces the conventional &lt;VAL_ON&gt;Conflict and Economy scanner units&lt;&gt;.
]]

TEXT_TECH_LOCATOR_N = "SCAVENGED SURVEY BEACON"
TEXT_TECH_LOCATOR_L = "Scavenged Survey Beacon"
TEXT_TECH_LOCATOR_S = "Advanced Scanner Interface"
TEXT_TECH_LOCATOR_D = 
[[
An exotic upgrade to the starship's navigational computer.&#xA;&#xA;

This makeshift antenna interface has been tuned to receive signals in selected frequencies associated with &lt;TECHNOLOGY&gt;high-energy profile sources&lt;&gt;. As a result, this module allows the user to reveal locations of selected alien structures, such as &lt;SPECIAL&gt;ancient portals&lt;&gt; or &lt;STELLAR&gt;colossal archives&lt;&gt;.&#xA;&#xA;

Interact with the built-in terminal to initiate scan.
]]

TEXT_TECH_DISSONANT_N = "RADIANT PERIPHERAL"
TEXT_TECH_DISSONANT_L = "Radiant Peripheral"
TEXT_TECH_DISSONANT_S = "Dissonant Navigational Unit"
TEXT_TECH_DISSONANT_D = 
[[
An exotic upgrade to the starship's navigational computer.&#xA;&#xA;

A unique extension card module housing a customized logic board and a &lt;TECHNOLOGY&gt;crystalline meta-structure&lt;&gt; composed of fragments of Radiant Shards. High voltage signals are generated to probe the structure, while the ship's receivers are tuned to detect a resonance response in low frequency spectrum from nearby &lt;SPECIAL&gt;dissonant energy fields&lt;&gt;.&#xA;&#xA;

Interact with the terminal to chart a path to a dissonant system in Galaxy Map.
]]

TEXT_TECH_POLICE_N = "EMERGENCY ANTENNA"
TEXT_TECH_POLICE_L = "Emergency Antenna"
TEXT_TECH_POLICE_S = "System Authority Link"
TEXT_TECH_POLICE_D = "A redundant long-range communication interface, capable of broadcasting a &lt;TECHNOLOGY&gt;system-wide emergency call&lt;&gt;. User can use its functionality to request assistance from system authority forces in an event of a &lt;FUEL&gt;targeted pirate ambush&lt;&gt;."

--------------------------------------------------
-- starship trails
--------------------------------------------------

TEXT_TRAIL_WHITE_N = "LUMINESCENT STARSHIP TRAIL"
TEXT_TRAIL_WHITE_L = "Luminescent Starship Trail"
TEXT_TRAIL_WHITE_S = "Primary Exhaust Modification"
TEXT_TRAIL_WHITE_D =
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;

In a process of &lt;TECHNOLOGY&gt;reversed photosynthesis&lt;&gt;, a chemical extracted from Kelp Sacs absorbs the burning by-products, breaks them down and releases their energy in the white light spectrum.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to change the appearance of the engine exhaust trails.
]]

TEXT_TRAIL_CYAN_N = "REACTIVE STARSHIP TRAIL"
TEXT_TRAIL_CYAN_L = "Reactive Starship Trail"
TEXT_TRAIL_CYAN_S = "Primary Exhaust Modification"
TEXT_TRAIL_CYAN_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;

The superheated products of burning &lt;TECHNOLOGY&gt;Deuterium-enriched fuel&lt;&gt; discharge excess energy in the visible light spectrum, producing a unique cyan glow.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to change the appearance of the engine exhaust trails.
]]

TEXT_TRAIL_ORANGE_N = "CORONAL STARSHIP TRAIL"
TEXT_TRAIL_ORANGE_L = "Coronal Starship Trail"
TEXT_TRAIL_ORANGE_S = "Primary Exhaust Modification"
TEXT_TRAIL_ORANGE_D =
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;

The Liquid Sun coated plates of Pulse Engine unit react to high temperatures, activating the &lt;TECHNOLOGY&gt;unique spectral features&lt;&gt; of the material and emitting an orange glow.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to change the appearance of the engine exhaust trails.
]]

TEXT_TRAIL_PINK_N = "MYTHICAL STARSHIP TRAIL"
TEXT_TRAIL_PINK_L = "Mythical Starship Trail"
TEXT_TRAIL_PINK_S = "Primary Exhaust Modification"
TEXT_TRAIL_PINK_D =
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;

Harnessing the power of an otherworldly presence contained in the Living Fragment crystals, this module propagates a distinct pink glow. No one is immune to its song. &lt;RARE&gt;You will sing with us&lt;&gt;.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to change the appearance of the engine exhaust trails.
]]

TEXT_TRAIL_ELECTRIC_N = "VOLTAIC STARSHIP TRAIL"
TEXT_TRAIL_ELECTRIC_L = "Voltaic Starship Trail"
TEXT_TRAIL_ELECTRIC_S = "Advanced Exhaust Modification"
TEXT_TRAIL_ELECTRIC_D = 
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;

This unique device assists pulse drive's compressors in starting under adverse gravitational conditions. The excess energy gets discharged from the exhaust tube, resulting in &lt;TECHNOLOGY&gt;sparkling visual effects&lt;&gt;.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to change the appearance of the engine exhaust trails.
]]

TEXT_TRAIL_GLITCH_N = "FRACTURED STARSHIP TRAIL"
TEXT_TRAIL_GLITCH_L = "Fractured Starship Trail"
TEXT_TRAIL_GLITCH_S = "Advanced Exhaust Modification"
TEXT_TRAIL_GLITCH_D =
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;

As a part of an experiment, the Hex Core is subjected to heat from starship's exhaust fumes. In result, the effects of its boundary weaken, allowing &lt;TECHNOLOGY&gt;spatial distortions&lt;&gt; to manifest along the starship's trail.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to change the appearance of the engine exhaust trails.
]]

TEXT_TRAIL_PSYCHIC_N = "DISCORDANT STARSHIP TRAIL"
TEXT_TRAIL_PSYCHIC_L = "Discordant Starship Trail"
TEXT_TRAIL_PSYCHIC_S = "Advanced Exhaust Modification"
TEXT_TRAIL_PSYCHIC_D =
[[
An exotic &lt;VAL_ON&gt;Starship Exhaust Modifier&lt;&gt;.&#xA;&#xA;

By retrofitting the exhaust with fragments of a corrupted mirror, the large portion of the light spectrum emitted by the engine gets warped and diffused into a &lt;TECHNOLOGY&gt;psychedelic haze&lt;&gt;.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to change the appearance of the engine exhaust trails.
]]

--------------------------------------------------
-- bobblehead models
--------------------------------------------------

TEXT_BOBBLE_GLOBE_N = "PLANETARY GLOBE STATUE"
TEXT_BOBBLE_GLOBE_L = "Planetary Globe Statue"
TEXT_BOBBLE_GLOBE_S = "Dashboard Adornment"
TEXT_BOBBLE_GLOBE_D = 
[[
An intricate dashboard gadget representing a globe found in &lt;STELLAR&gt;planetary settlements&lt;&gt;. The combination of mechanical workings and inner holographic display serves as a proof of the maker's craftsmanship.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_BLOB_N = "HOLOGRAPHIC BLOB FAUNA"
TEXT_BOBBLE_BLOB_L = "Holographic Blob Fauna"
TEXT_BOBBLE_BLOB_S = "Projected Dashboard Adornment"
TEXT_BOBBLE_BLOB_D = 
[[
A miniaturized holographic display with dedicated mount for starship's cockpit. It is programmed to project a scaled down model of a &lt;TECHNOLOGY&gt;planetary blob fauna&lt;&gt;.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_SOLAR_N = "HOLOGRAPHIC SOLAR SYSTEM"
TEXT_BOBBLE_SOLAR_L = "Holographic Solar System"
TEXT_BOBBLE_SOLAR_S = "Projected Dashboard Adornment"
TEXT_BOBBLE_SOLAR_D = 
[[
A miniaturized holographic display with dedicated mount for starship's cockpit. It is programmed to project a scaled down model of a &lt;SPECIAL&gt;distant solar system&lt;&gt;.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_FRIGATE_N = "HOLOGRAPHIC COMBAT FRIGATE"
TEXT_BOBBLE_FRIGATE_L = "Holographic Combat Frigate"
TEXT_BOBBLE_FRIGATE_S = "Projected Dashboard Adornment"
TEXT_BOBBLE_FRIGATE_D = 
[[
A miniaturized holographic display with dedicated mount for starship's cockpit. It is programmed to project a scaled down model of a &lt;STELLAR&gt;combat-ready frigate&lt;&gt;.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_LAYLAPS_N = "THE SENTRY FIGURINE"
TEXT_BOBBLE_LAYLAPS_L = "The Sentry Figurine"
TEXT_BOBBLE_LAYLAPS_S = "Sentinel Unit Model"
TEXT_BOBBLE_LAYLAPS_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of &lt;TECHNOLOGY&gt;the Laylaps sentry&lt;&gt;. Despite being just a miniaturized replica, it is full of positive energy, just like the original drone.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_CRYSDRONE_N = "CRYSTALLISED DRONE FIGURINE"
TEXT_BOBBLE_CRYSDRONE_L = "Crystallised Drone Figurine"
TEXT_BOBBLE_CRYSDRONE_S = "Sentinel Unit Model"
TEXT_BOBBLE_CRYSDRONE_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of a &lt;PET5&gt;Sentinel Summoner drone&lt;&gt; succumbed to the corruption from Living Fragment crystals. Special care needs to be taken to prevent the spread of corruption over interior's components.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_WALKER_N = "SENTINEL WALKER FIGURINE"
TEXT_BOBBLE_WALKER_L = "Sentinel Walker Figurine"
TEXT_BOBBLE_WALKER_S = "Sentinel Unit Model"
TEXT_BOBBLE_WALKER_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of a &lt;PET5&gt;Sentinel Walker unit&lt;&gt;. Sacrifices were made in order to accurately reproduce the machine's intricacies in this statue.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_STONE_N = "KNOWLEDGE STONE MODEL"
TEXT_BOBBLE_STONE_L = "Knowledge Stone Model"
TEXT_BOBBLE_STONE_S = "Planetary Marker Replica"
TEXT_BOBBLE_STONE_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of an &lt;RARE&gt;ancient Knowledge Stone&lt;&gt;. Highly prized among all types of interstellar travellers, this miniature landmark brings visions of home planet and fills the cockpit with a comfortable aura.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_AQUATIC_N = "AQUATIC CRYSTAL MODEL"
TEXT_BOBBLE_AQUATIC_L = "Aquatic Crystal Model"
TEXT_BOBBLE_AQUATIC_S = "Planetary Marker Replica"
TEXT_BOBBLE_AQUATIC_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of an &lt;VISOR&gt;underwater crystal formation&lt;&gt;. Its cold surface emanates a serene energy, invoking visions of endless waves travelling over oceanic depths. It invites you. It calls you home.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_GRAVE_N = "TRAVELLER GRAVE MODEL"
TEXT_BOBBLE_GRAVE_L = "Traveller Grave Model"
TEXT_BOBBLE_GRAVE_S = "Planetary Marker Replica"
TEXT_BOBBLE_GRAVE_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of a &lt;VAL_ON&gt;Traveller grave&lt;&gt;. This memento serves as a reminder of the dangers lurking in the never-ending quest of discovery.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_JELLYFISH_N = "CAPTURED SPACE HORROR"
TEXT_BOBBLE_JELLYFISH_L = "Captured Space Horror"
TEXT_BOBBLE_JELLYFISH_S = "Anomalous Fauna Display"
TEXT_BOBBLE_JELLYFISH_D = 
[[
A captured specimen of a &lt;TRADE&gt;doomed space horror&lt;&gt;, originating from one of the many abandoned freighter wrecks drifting in deep space. Its unstable composition and psychic abilities pose a danger to unsuspecting spacefarers. Prolonged exposure must not be allowed.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_WORM_N = "CAPTURED WORM TENDRIL"
TEXT_BOBBLE_WORM_L = "Captured Worm Tendril"
TEXT_BOBBLE_WORM_S = "Anomalous Fauna Display"
TEXT_BOBBLE_WORM_D = 
[[
A captured specimen of a &lt;RARE&gt;hungering worm tendril&lt;&gt;, brought from an infested planet. Manifested as a contempt to universal order, those monsters bring ruin to countless planets. The method in which the infestation spreads remains unknown. It can not be stopped.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_EGG_N = "CAPTURED MELODY EGG"
TEXT_BOBBLE_EGG_L = "Captured Melody Egg"
TEXT_BOBBLE_EGG_S = "Anomalous Fauna Display"
TEXT_BOBBLE_EGG_D =
[[
A captured specimen of a &lt;STELLAR&gt;Living Ship egg&lt;&gt;. Originally created by Korvax scientists in attempt to unify organic and mechanical lifeforms, it broke free and became stranded in deep space. Due to a lack of a compatible host it failed to evolve into a functional vessel and can serve only as a decoration piece.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_SHROOM_N = "STABILIZED CALCISHROOM"
TEXT_BOBBLE_SHROOM_L = "Stabilized Calcishroom"
TEXT_BOBBLE_SHROOM_S = "Decorative Reality Glitch"
TEXT_BOBBLE_SHROOM_D =
[[
A stabilized instance of a &lt;TECHNOLOGY&gt;calcishroom reality glitch&lt;&gt;, found exclusively on hydrogarden planets. This mutated fungus displays remarkable resistance against several types of atmospheric conditions and hazards. However, the increased brittleness of the composing matter makes researching said properties a perplexing task.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_STAR_N = "STABILIZED OSSIFIED STAR"
TEXT_BOBBLE_STAR_L = "Stabilized Ossified Star"
TEXT_BOBBLE_STAR_S = "Decorative Reality Glitch"
TEXT_BOBBLE_STAR_D =
[[
A stabilized instance of a &lt;RARE&gt;ossified star glitch&lt;&gt;, found exclusively on petrified planets. Those structures are formed from calcified remains of meta-polymorphic organisms inhabiting those exotic worlds and show tendency to house spatially bounded luminous anomalies. The exact mechanism causing this occurrence is unknown.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_SHARD_N = "STABILIZED SEPARATOR GLITCH"
TEXT_BOBBLE_SHARD_L = "Stabilized Separator Glitch"
TEXT_BOBBLE_SHARD_S = "Decorative Reality Glitch"
TEXT_BOBBLE_SHARD_D =
[[
A stabilized instance of a &lt;PET5&gt;separator glitch&lt;&gt;, found exclusively on columned planets. Those spawns of otherworldly glass-like substrate bend the light rays in anomalous ways, causing some interstellar travellers to experience visions of a world of glass.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_SHIELDGEN_N = "DREADNOUGHT GENERATOR MODEL"
TEXT_BOBBLE_SHIELDGEN_L = "Dreadnought Generator Model"
TEXT_BOBBLE_SHIELDGEN_S = "Illegal Technology Replica"
TEXT_BOBBLE_SHIELDGEN_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of a &lt;CATALYST&gt;dreadnought shield generator&lt;&gt;. This unique ornament serves as a trophy, proving pilot's combat effectiveness against outlaw forces.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

TEXT_BOBBLE_NEXUSORB_N = "NEXUS SYNTHESIS CORE"
TEXT_BOBBLE_NEXUSORB_L = "Nexus Synthesis Core"
TEXT_BOBBLE_NEXUSORB_S = "Illegal Technology Replica"
TEXT_BOBBLE_NEXUSORB_D = 
[[
An intricate dashboard gadget featuring a scaled-down model of &lt;SPECIAL&gt;Space Anomaly's synthesis apparatus&lt;&gt;. This replica lacks the ability to fabricate new exotic items from the original machine and under no circumstances should the user attempt to use it for this purpose.&#xA;&#xA;

Install this module in a &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt; to decorate your ship's interior. Note that this element is purely decorative and it does not provide any stat bonuses.
]]

--------------------------------------------------
-- bobblehead effects
--------------------------------------------------

TEXT_TECH_BOOSTD_N = "DAMAGE MODULATOR UNIT"
TEXT_TECH_BOOSTD_L = "Damage Modulator Unit"
TEXT_TECH_BOOSTD_S = "Recompiled Adjustment Accessory"
TEXT_TECH_BOOSTD_D = 
[[
A product of reverse engineering of the standard bobbleheads, this integrated circuit allows user to combine desired starship system bonuses with any form of interior adornment.&#xA;&#xA;

This particular unit provides a small bonus to &lt;STELLAR&gt;starship weapon damage&lt;&gt; when installed in &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt;.
]]

TEXT_TECH_BOOSTP_N = "PULSE MODULATOR UNIT"
TEXT_TECH_BOOSTP_L = "Pulse Modulator Unit"
TEXT_TECH_BOOSTP_S = "Recompiled Adjustment Accessory"
TEXT_TECH_BOOSTP_D = 
[[
A product of reverse engineering of the standard bobbleheads, this integrated circuit allows user to combine desired starship system bonuses with any form of interior adornment.&#xA;&#xA;

This particular unit provides a small bonus to &lt;STELLAR&gt;pulse engine boost&lt;&gt; when installed in &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt;.
]]

TEXT_TECH_BOOSTW_N = "WARP MODULATOR UNIT"
TEXT_TECH_BOOSTW_L = "Warp Modulator Unit"
TEXT_TECH_BOOSTW_S = "Recompiled Adjustment Accessory"
TEXT_TECH_BOOSTW_D = 
[[
A product of reverse engineering of the standard bobbleheads, this integrated circuit allows user to combine desired starship system bonuses with any form of interior adornment.&#xA;&#xA;

This particular unit provides a small bonus to &lt;STELLAR&gt;hyperdrive warp range&lt;&gt; when installed in &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt;.
]]

TEXT_TECH_BOOSTL_N = "LAUNCH MODULATOR UNIT"
TEXT_TECH_BOOSTL_L = "Launch Modulator Unit"
TEXT_TECH_BOOSTL_S = "Recompiled Adjustment Accessory"
TEXT_TECH_BOOSTL_D = 
[[
A product of reverse engineering of the standard bobbleheads, this integrated circuit allows user to combine desired starship system bonuses with any form of interior adornment.&#xA;&#xA;

This particular unit provides a small reduction of &lt;STELLAR&gt;launch fuel consumption&lt;&gt; when installed in &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt;.
]]

TEXT_TECH_BOOSTS_N = "SHIELD MODULATOR UNIT"
TEXT_TECH_BOOSTS_L = "Shield Modulator Unit"
TEXT_TECH_BOOSTS_S = "Recompiled Adjustment Accessory"
TEXT_TECH_BOOSTS_D = 
[[
A product of reverse engineering of the standard bobbleheads, this integrated circuit allows user to combine desired starship system bonuses with any form of interior adornment.&#xA;&#xA;

This particular unit provides a bonus to &lt;STELLAR&gt;shield systems strength&lt;&gt; when installed in &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt;.
]]

TEXT_TECH_BOOSTM_N = "MANEUVERABILITY MODULATOR UNIT"
TEXT_TECH_BOOSTM_L = "Maneuverability Modulator Unit"
TEXT_TECH_BOOSTM_S = "Recompiled Adjustment Accessory"
TEXT_TECH_BOOSTM_D = 
[[
A product of reverse engineering of the standard bobbleheads, this integrated circuit allows user to combine desired starship system bonuses with any form of interior adornment.&#xA;&#xA;

This particular unit provides a small bonus to &lt;STELLAR&gt;starship maneuverability&lt;&gt; when installed in &lt;TECHNOLOGY&gt;technology inventory slot&lt;&gt;.
]]

--------------------------------------------------
-- gameplay items
--------------------------------------------------

TEXT_ITEM_TOKEN_N = "SALVAGED FRAMEWORK UNIT"
TEXT_ITEM_TOKEN_L = "Salvaged Framework Unit"
TEXT_ITEM_TOKEN_S = "Recovered Technology Data"
TEXT_ITEM_TOKEN_D = 
[[
A unique storage device produced by the &lt;TECHNOLOGY&gt;Impossible Fabricator&lt;&gt;.&#xA;&#xA;

Infused with effects of the contained time anomaly, it can store &lt;SPECIAL&gt;misplaced temporal data&lt;&gt; that would become corrupted when presented with conventional carriers found in this reality.
]]

TEXT_ITEM_PLATING_N = "STALWART PLATING"
TEXT_ITEM_PLATING_L = "Stalwart Plating"
TEXT_ITEM_PLATING_S = "Processed Metal Component"
TEXT_ITEM_PLATING_D = "Advanced building and crafting component, encompassing an extremely durable alloy of &lt;STELLAR&gt;processed stellar metals&lt;&gt; and cobalt. Its colour and texture are reminiscent of the material used in construction of the &lt;RARE&gt;ancient monoliths&lt;&gt;."

TEXT_ITEM_FRAGMENT_N = "ENCAPSULATED VARIANCE"
TEXT_ITEM_FRAGMENT_L = "Encapsulated Variance"
TEXT_ITEM_FRAGMENT_S = "Contingent Temporal Anomaly"
TEXT_ITEM_FRAGMENT_D = 
[[
This tachyon based mega-particle is formulating a materialized and spatially bound crevice in time.&#xA;&#xA;

Its existence can not be described mathematically.
]]

TEXT_ITEM_CIRCUIT_N = "HARMONIC MATRIX"
TEXT_ITEM_CIRCUIT_L = "Harmonic Matrix"
TEXT_ITEM_CIRCUIT_S = "Phase-State Stability Engine"
TEXT_ITEM_CIRCUIT_D = 
[[
A piece of technology originally developed by the &lt;TRANS_BUI&gt;Autophage&lt;&gt;.&#xA;&#xA;

By continuously wrapping and unwrapping an &lt;HIGHLIGHT&gt;&#x3b7;-dimensional manifold&lt;&gt; housed inside a dedicated chamber, the temporal fluctuations generated in the process nullify the anomalous effects of nearby objects. This interaction ensures objects are being tethered to the flow of &lt;TECHNOLOGY&gt;reference timeline&lt;&gt;, allowing proper operations of a harmonic camp terminal.
]]

TEXT_ITEM_DICTIONARY_N = "VITRIFORM LEXICON"
TEXT_ITEM_DICTIONARY_L = "Vitriform Lexicon"
TEXT_ITEM_DICTIONARY_S = "Alien Language Records"
TEXT_ITEM_DICTIONARY_D = 
[[
An extraordinary tablet composed of an impervious glass-like material, with markings of an &lt;TECHNOLOGY&gt;ancient alien dialect&lt;&gt; etched into it. The writing forms patterns of non-Euclidean geometry. The data held by this lexicon can not be deciphered by modern machines, instead it is drawn towards &lt;RARE&gt;ancient plaques&lt;&gt;.&#xA;&#xA;

This item can be brought as offering in hopes of &lt;STELLAR&gt;significant language reward&lt;&gt;.
]]

TEXT_ITEM_BYPASS_N = "HIJACKED PROCESSOR"
TEXT_ITEM_BYPASS_L = "Hijacked Processor"
TEXT_ITEM_BYPASS_S = "Mainframe Override Unit"
TEXT_ITEM_BYPASS_D = 
[[
An &lt;SPECIAL&gt;illegally repurposed&lt;&gt; Station Override key.&#xA;&#xA;

Featuring a highly complex assembly of data processing units and memory banks storing access codes for &lt;TECHNOLOGY&gt;starship outfitting terminals&lt;&gt;, this device can be used to interfere with standard operations of the space station's upgrade terminal, allowing the user to upgrade the starship class &lt;STELLAR&gt;free of charge&lt;&gt;.
]]

TEXT_ITEM_CRYSTAL_N = "DIFFUSED TRITIUM"
TEXT_ITEM_CRYSTAL_L = "Diffused Tritium"
TEXT_ITEM_CRYSTAL_S = "Sub-Critical Fuel Material"
TEXT_ITEM_CRYSTAL_D = 
[[
A highly reactive compound of &lt;SPECIAL&gt;Tritium crystals&lt;&gt; and transmuted stellar metals. The layer of Liquid Sun forces a nuclear decay reaction in the hydrogen isotope, resulting in an &lt;TECHNOLOGY&gt;emission of anti-neutrinos&lt;&gt;. These high-energy particles can efficiently fuel the starship's propulsion systems.&#xA;&#xA;

Thanks to high concentration of Tritium, a single shard of this formation can &lt;STELLAR&gt;provide full charge&lt;&gt; to both standard pulse drive unit and its Waveform variant.
]]

TEXT_ITEM_BOXA_N = "TEMPORAL MEMORY: METIS"
TEXT_ITEM_BOXA_L = "Temporal Memory: Metis"
TEXT_ITEM_BOXA_S = "Mysterious Blueprint Data"
TEXT_ITEM_BOXA_D = 
[[
Manifested memory fragment originating from another reality, detected by the instruments aboard Space Anomaly. This bespoke particle holds the experiences of Traveller known as &lt;VAL_ON&gt;Iteration: Metis&lt;&gt;.&#xA;&#xA;

Initial scans indicate this memory incorporates data pertaining to a &lt;STELLAR&gt;unique item crafting recipe&lt;&gt;. Its proper content can be deciphered only using an &lt;TRADE&gt;archaeological&lt;&gt; decryption terminal.
]]

TEXT_ITEM_BOXB_N = "TEMPORAL MEMORY: DEMETER"
TEXT_ITEM_BOXB_L = "Temporal Memory: Demeter"
TEXT_ITEM_BOXB_S = "Mysterious Blueprint Data"
TEXT_ITEM_BOXB_D = 
[[
Manifested memory fragment originating from another reality, detected by the instruments aboard Space Anomaly. This bespoke particle holds the experiences of Traveller known as &lt;VAL_ON&gt;Iteration: Demeter&lt;&gt;.&#xA;&#xA;

Initial scans indicate this memory incorporates data pertaining to a &lt;STELLAR&gt;unique item crafting recipe&lt;&gt;. Its proper content can be deciphered only using a &lt;SPECIAL&gt;desolate&lt;&gt; decryption terminal.
]]

TEXT_ITEM_BOXC_N = "TEMPORAL MEMORY: PHOBOS"
TEXT_ITEM_BOXC_L = "Temporal Memory: Phobos"
TEXT_ITEM_BOXC_S = "Mysterious Blueprint Data"
TEXT_ITEM_BOXC_D = 
[[
Manifested memory fragment originating from another reality, detected by the instruments aboard Space Anomaly. This bespoke particle holds the experiences of Traveller known as &lt;VAL_ON&gt;Iteration: Phobos&lt;&gt;.&#xA;&#xA;

Initial scans indicate this memory incorporates data pertaining to a &lt;STELLAR&gt;unique item crafting recipe&lt;&gt;. Its proper content can be deciphered only using a &lt;PET5&gt;rogue&lt;&gt; decryption terminal.
]]



----------------------------------------------------------------------------------------------------
-- languange entries: misc
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- research tree and dialogue
--------------------------------------------------

TEXT_DIALOGUE_RESEARCH = "Research exotic technology"

TEXT_TREE_TITLE = "&lt;IMG&gt;DIFFICULTY&lt;&gt; Exotic Starship Technology &lt;IMG&gt;DIFFICULTY&lt;&gt;"
TEXT_TREE_PAGE1 = "Expedition, Weapons and Utilities"
TEXT_TREE_PAGE2 = "Bobblehead Modules"
TEXT_TREE_WARNING = "Insufficient Blueprint Data"

TEXT_DIALOGUE_MEMORY = "Exchange temporal memory"
TEXT_REACTION_MEMORY = "Thank you for this gift, Traveller-kindred. I understand this memory is of no use for you anymore. Allow me to recompensate your efforts."

--------------------------------------------------
-- interactions
--------------------------------------------------

TEXT_SCANNER_B = "ACTIVATE SCANNER"
TEXT_SCANNER_U = "Scan for temporal anomalies"
TEXT_SCANNER_F = "Operational Error &lt;IMG&gt;SLASH&lt;&gt; No Temporal Anomalies Detected"

TEXT_COMPUTER_B = "PERFORM SCAN"
TEXT_COMPUTER_U = "Locate a trading outpost in the system"
TEXT_COMPUTER_F = "Navigational Error &lt;IMG&gt;SLASH&lt;&gt; No Trading Outpost Found In System"

TEXT_LOCATOR_B = "PERFORM SCAN"
TEXT_LOCATOR_U = "Locate an alien structure in the system"
TEXT_LOCATOR_F = "Navigational Error &lt;IMG&gt;SLASH&lt;&gt; No Structures Found In System"

TEXT_DISSONANT_B = "PERFORM SCAN"
TEXT_DISSONANT_U = "Chart a path to a dissonant system"

TEXT_BOX_B = "ANALYSE MEMORY"
TEXT_BOX_U = "Locate a decryption terminal"

--------------------------------------------------
-- interactions
--------------------------------------------------

TEXT_COST_UPGRADE = "Nanites or Hijacked Processor"
TEXT_COST_POLICE = "Defence Chit or Emergency Antenna"

TEXT_DICTIONARY_O = "Blessing of the Ancients &lt;IMG&gt;SLASH&lt;&gt; Learned a set of words"

--------------------------------------------------
-- player titles
--------------------------------------------------

TEXT_TITLE_UNLOCK = "(Mod) Investigated the temporal anomalies"

TEXT_TITLE_FORMAT_1 = "%NAME% The Misplaced"
TEXT_TITLE_FORMAT_2 = "%NAME% The Interim"
TEXT_TITLE_FORMAT_3 = "%NAME% The Transient"
TEXT_TITLE_FORMAT_4 = "%NAME% The Asynchronous"
TEXT_TITLE_FORMAT_5 = "%NAME%, Lost in Time"

TEXT_TITLE_OWNED_1 = "Extracted temporal data from 5 crashed starships"
TEXT_TITLE_OWNED_2 = "Extracted temporal data from 10 crashed starships"
TEXT_TITLE_OWNED_3 = "Extracted temporal data from 15 crashed starships"
TEXT_TITLE_OWNED_4 = "Extracted temporal data from 20 crashed starships"
TEXT_TITLE_OWNED_5 = "Extracted temporal data from 30 crashed starships"

--------------------------------------------------
-- debug emotes
--------------------------------------------------

TEXT_EMOTE_PLATING = "(Mod: Project Apollo) Add Stalwart Plating to Player Inventory"
TEXT_EMOTE_FRAGMENT = "(Mod: Project Apollo) Add Encapsulated Variance to Player Inventory"
TEXT_EMOTE_CIRCUIT = "(Mod: Project Apollo) Add Harmonic Matrix to Player Inventory"



----------------------------------------------------------------------------------------------------
-- languange entries: catalogue and guide
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- wiki - navigation and credits
--------------------------------------------------

TEXT_WIKI_BUTTON_MAIN = "Mod: Project Apollo"
TEXT_WIKI_LABEL_MAIN = "MOD: PROJECT APOLLO"
TEXT_WIKI_BUTTON_QUEST = "Lost in Time"
TEXT_WIKI_BUTTON_MEMORY = "Temporal Memories"
TEXT_WIKI_BUTTON_ABOUT = "Info and Credits"

TEXT_WIKI_ABOUT_TITLE1 = "About"
TEXT_WIKI_ABOUT_ENTRY1 = 
[[
Project Apollo: Lost in Time is a large scale gameplay mod that was in development since June 2023. Introducing a custom quest and a fair share of new starship technology modules, this mod aims to enrich the mid-late gameplay in a lore-friendly way.
&#xA;&#xA;

Making this mod was one helluva adventure and some special thanks is in order:
]]

TEXT_WIKI_ABOUT_TITLE2 = "bk201"
TEXT_WIKI_ABOUT_ENTRY2 = "For providing great feedback throughout the whole development process and playtesting the mod"

TEXT_WIKI_ABOUT_TITLE3 = "alchemist"
TEXT_WIKI_ABOUT_ENTRY3 = "For providing help and info regarding the mission structures, which brought the mod to a whole new level"

TEXT_WIKI_ABOUT_TITLE4 = "monkeyman and Wberto"
TEXT_WIKI_ABOUT_ENTRY4 = "For providing the modding tools that made this endeavour possible in the first place: MBIN Compiler and AMUMSS"

TEXT_WIKI_ABOUT_TITLE5 = "Ivan Kutskir"
TEXT_WIKI_ABOUT_ENTRY5 = "For providing the awesome free online image editor Photopea"

TEXT_WIKI_ABOUT_TITLE6 = "Technical info"
TEXT_WIKI_ABOUT_ENTRY6 = 
[[
&lt;VAL_ON&gt;Game version:&lt;&gt;&#xA;
4.52 (Omega update)
&#xA;&#xA;

&lt;VAL_ON&gt;Mod version:&lt;&gt;&#xA;
Release 1 / Dev 7
&#xA;&#xA;

&lt;VAL_ON&gt;Visit my NexusMods page for mod info and updates:&lt;&gt;&#xA;
https://www.nexusmods.com/nomanssky/mods/2864
&#xA;&#xA;

&lt;VAL_ON&gt;Debugging / Restoring items:&lt;&gt;&#xA;
If you have issues collecting the 3 crafting components for Impossible Fabricator Multi-tool technology from their dedicated missions or you managed to remove them from your inventories after completing said missions, you can use the new options in &lt;TRADE&gt;Quick Menu - Gestures&lt;&gt; to add these items to your inventory.&#xA;
Warning: those special emotes were added as a debugging tool only and should not be used for regular quest progression!
]]

--------------------------------------------------
-- wiki - main quest
--------------------------------------------------

TEXT_WIKI_QUEST_TITLE1 = "A Fracture in Time"
TEXT_WIKI_QUEST_ENTRY1 = 
[[
&lt;SPECIAL&gt;UNKNOWN OBJECT DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE DRIVE TO INTERCEPT&lt;&gt;
&#xA;&#xA;

&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; WARNING &lt;IMG&gt;SLASH&lt;&gt;  TEMPORAL FRACTURE DETECTED &lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; WARNING &lt;IMG&gt;SLASH&lt;&gt; BOUNDARY FAILURE IN PROGRESS &lt;IMG&gt;SLASH&lt;&gt;
&#xA;&#xA;

Starship integrity report follows:&#xA;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Primary Propulsion Systems: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;DISABLED&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Navigational Computer: &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;OFFLINE&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Communicator Interface: &lt;DELAY&gt;1&lt;&gt;&lt;SPECIAL&gt;STATUS_UNKNOWN&lt;&gt;&lt;DELAY&gt;1&lt;&gt;
&#xA;&#xA;

&lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GAMEMODE_ERASE_ERROR&lt;&gt; &lt;SPECIAL&gt;WARNING&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; ANOMALOUS TRANSMISSION INTERCEPTED &lt;IMG&gt;SLASH&lt;&gt;
&#xA;&#xA;

I proceed with analysing the transmission.
&#xA;&#xA;

&lt;FONT02&gt;&lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt;
&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- the Waveform --- leave --- &lt;IMG&gt;SLASH&lt;&gt;
&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- every surface --- forsaken --- &lt;IMG&gt;SLASH&lt;&gt;
&lt;AUDIO&gt;FOURTHRACE_APOLLO_CHATTER00&lt;&gt; --- strength --- us all --- &lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&lt;&gt;&#xA;&#xA;

Extracting data from the transmission:&#xA;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Message timestamp: ... 926 ... 243 ... 904 ... 483 ... 362 ...&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Galactic address: 0000100003e6e837&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Sender signature: &lt;DELAY&gt;3&lt;&gt;TRAVELLER_&lt;DELAY&gt;1&lt;&gt;&lt;SPECIAL&gt;????????&lt;&gt;&lt;DELAY&gt;1&lt;&gt;
&#xA;&#xA;

With the starship drifting in space, I examine the logs in hope of learning more about this mysterious signal. My efforts are in vain, as the data appears to be corrupted - the coordinates for signal location and transmission time change rapidly on the screen. As the control systems come back online, I prepare to make my way towards the Space Anomaly. I hope one of its residents will be able to answer the many questions I have.
]]

TEXT_WIKI_QUEST_TITLE2 = "First encounter with Hesperus"
TEXT_WIKI_QUEST_ENTRY2 = 
[[
I reach out to Interation: Hesperus aboard the Space Anomaly.
&#xA;&#xA;

&lt;VAL_ON&gt;Ah, Traveller-kindred, welcome. To what do I owe this pleasure?&lt;&gt;
&#xA;&#xA;

I tell them about the mysterious transmission.
&#xA;&#xA;

&lt;VAL_ON&gt;That is... most troubling, kindred. I have no explanation for the transmission you received, but the rest... It appears you have encountered a temporal distortion. A fracture in the flow of time, manifested in our reality Recently, the instruments aboard Anomaly have picked up traces of temporal energy emerging all across the galaxy. I am most intrigued by them, yet their true nature eludes me. Perhaps we could help each other.&lt;&gt;
&#xA;&#xA;

I ask what I can do.
&#xA;&#xA;

&lt;VAL_ON&gt;I have devised blueprints for a temporal scanner, based on my studies of the data from our instruments. Once you construct this device, you should be able to locate those anomalies more accurately. I can not guarantee you will get the answers you seek this way, Traveller-kindred. I can only hope we will get closer to the truth behind these anomalies. For now though, please, accept these blueprints.&lt;&gt;
&#xA;&#xA;

I thank Iteration: Hesperus for their assistance. Now it is up to me to collect the components necessary for construction of this device.
]]

TEXT_WIKI_QUEST_TITLE3 = "Research Facility"
TEXT_WIKI_QUEST_ENTRY3 = 
[[
The scanner casing requires a special material that will withstand temporal anomalies. I will make my way to a material research facility that may hold the data I need.
&#xA;&#xA;

&lt;SPECIAL&gt;DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; COORDINATES RECEIVED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN&lt;&gt;
&#xA;&#xA;

I arrived at the research facility. The data logs are scrambled, but I manage to get some information about this place. The primary directive of this installation was research of anomalous materials. The scientist were experimenting with various samples of the material found on ancient monoliths. The available logs end with mentions of a breakthrough in recreating said material. The rest of the databanks appear to be offline. Perhaps there exists a way to re-establish the connection...
&#xA;&#xA;

Nanites seep deep into the hardware of the terminal. As they flow over the circuits leading to the mainframe, they are able to locate the damaged connection sockets and repair them. The final log entries become available. I'm presented with a recipe for a new material.
]]

TEXT_WIKI_QUEST_TITLE4 = "Unstable Monolith"
TEXT_WIKI_QUEST_ENTRY4 = 
[[
The scanner will be powered by a captured temporal anomaly. Probing it will resonate with other anomalies of its kind, allowing me to locate them. Iteration: Hesperus informed me that Space Anomaly's systems have detected a spike in temporal energy in this region of galaxy.
&#xA;&#xA;

&lt;SPECIAL&gt;DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; TEMPORAL SURGE DETECTED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN&lt;&gt;
&#xA;&#xA;

I stand before the monolith, a silent testament of the ages past. An unwavering agent of ages that are yet to be. And yet, this sacrament of stone eternal strikes me with fear. Where normally I would be met with perpetual silence, I hear a rumbling noise. Where normally I would embrace the surroundings of this planet, I witness a boiling chasm of colours. This monolith... No, this machine is in distress. As I try to regain focus, a series of visions begins forming in my mind:
&#xA;&#xA;

&lt;VAL_ON&gt;[1693500313] Running process: PROTOCOL_ATLAS &lt;IMG&gt;SLASH&lt;&gt;
 Process status: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;&gt;&lt;FUEL&gt;ERROR_0x00000101&lt;&gt; &lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt;
 Faulting module: RENDERPRIMEREALITY &lt;IMG&gt;SLASH&lt;&gt;
 Faulting block: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;&gt;&lt;FUEL&gt;1616161616001616&lt;&gt;
&#xA;&#xA;

The error messages repeat over and over. Time converges and compresses to this very location. Space warps around and gives in to the unfolding iridescent cataclysm. Only the obsidian spire remains. At the heart of this phenomenon, I see a tear in reality. An ethereal scar cast in monolith, its scream for help echoes in a place where no words exist.
&#xA;&#xA;

A temporal corruption is emerging from the monolith, the ethereal scar acting as a gateway to our reality. It cries out, yearning for stability. I must act quickly.
&#xA;&#xA;

As I hold the Atlas seed in my hand, a whirl of particles and light emerges from the monolith and settles within it. The noise and colours surrounding this place abate. The reality of this place is restored. At last, I'm left with a captured temporal anomaly.
]]

TEXT_WIKI_QUEST_TITLE5 = "Autophage Terminal"
TEXT_WIKI_QUEST_ENTRY5 = 
[[
The anomaly powering the scanner needs a regulator to keep it dormant outside of activations. I recall that harmonic camps might make use of a similar technology that allows them to stay inert in the current timeline.
&#xA;&#xA;

&lt;SPECIAL&gt;DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; HARMONIC ECHO LOCATED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN&lt;&gt;
&#xA;&#xA;

I find the terminal in disarray. The fragments of casing have been removed, giving me access to the internal mechanisms. Between various components, I can make out the Harmonic Matrix - the core of this unit. Despite the terminal being dormant, the matrix glows with a faint light, indicating it might still be operational. It will not be of any use in this destroyed machinery...
&#xA;&#xA;

As I remove the Harmonic Matrix from the housing and step back, the terminal comes back online. Its screen flashes and begins to display a series of distorted warnings:
&#xA;&#xA;

&lt;TRANS_BUI&gt;
... u&#x3b7;auth0riz&#x3b5;d &#x3b1;ccess d&#x3b5;tected ...&lt;NEWLINE&gt;
... c&#x3b5;ntra1 &#x3b7;0de d&#x3b1;ma&#x3c2;ed ...&lt;NEWLINE&gt;
... &#x3c1;rot0col &lt;&gt;&lt;HIGHLIGHT&gt;br0&#x3ba;en g1ass&lt;&gt;&lt;TRANS_BUI&gt; in &#x3b5;ffect ...
&lt;&gt;
&#xA;&#xA;

An alarm rings out, alerting Sentinels to the presence of an intruder. As they begin to swarm this camp, the terminal renders a new image. A heart of a Sentinel unit warped by corruption of this planet. Maybe that will be the right device to use as a replacement...
&#xA;&#xA;

I hastily rewire the terminal to connect it to a Crystallised Heart taken from a spider-like Sentinel. The terminal reboots to normal operations and the alarm stops. Finally, I can make my way out of this place with another component for the scanner.
]]

TEXT_WIKI_QUEST_TITLE6 = "Data Repository BK-201"
TEXT_WIKI_QUEST_ENTRY6 = 
[[
Scanner needs to be tuned to Traveller's &lt;VISOR&gt;unique energy signature&lt;&gt;. I launch into space to continue my search.
&#xA;&#xA;

&lt;SPECIAL&gt;SCANNER OVERRIDE &lt;IMG&gt;SLASH&lt;&gt; TEMPORAL SIGNATURE LOCKED &lt;IMG&gt;SLASH&lt;&gt; COORDINATES AVAILABLE&lt;&gt;
&#xA;&#xA;

The scanner leads me to a Boundary Failure structure. An unnatural energy crackles in the air around this aberrant construction, blasting me with waves of static. My suit flashes an array of warnings and errors as I make my way towards its main terminal. Upon interacting with it, I discover it holds a series of data logs, similar in nature to the mysterious transmission I encountered before.
&#xA;&#xA;

&lt;VAL_ON&gt;
[ Sol 51 ] &lt;IMG&gt;SLASH&lt;&gt; ... managed to get the Waveform Engine repaired ... now I can finally leave this toxic hellhole ... Gisto Major, may you rot to the core ...
&#xA;&#xA;

[ Sol 136 ] &lt;IMG&gt;SLASH&lt;&gt; ... had to run from the worms ... this cursed dust is everywhere, spreading to every surface ... has Atlas forsaken this place? ...
&#xA;&#xA;

[ Sol 247 ] &lt;IMG&gt;SLASH&lt;&gt; ... must re-enter the Cycle ... find strength in Perpetuity ... praised be the Recursion ... may the Leviathan take pity on us all ...
&#xA;&#xA;

[ Sol 312 ] &lt;IMG&gt;SLASH&lt;&gt; ... the Utopia project was a trap, we were never meant to restore it ... pirate dreadnoughts swarmed all over us ... the Prismatic Bulwark got destroyed ... need to land and repair it ...&lt;&gt;
&#xA;&#xA;

This journal proves the late Traveller visited this place. It bears their unique temporal signature, a crescendo of the all the broken boundaries that led them to this reality... And ultimately, to their demise... But my purpose here is clear. The Fabricator module has been active in the presence of a temporal distortion for some time now. It is time I finalize its construction.
&#xA;&#xA;

As the Fabricator starts processing data, the screen on my Multi-Tool flashes bombarded with messages. After a while, the process is complete - the anomaly in it was imprinted with Traveller's temporal signature. I can finally use the scanner for my own purpose. Before leaving this place, I notice one last message on the screen - the Fabricator managed to extract some kind of data from this structure.
]]

TEXT_WIKI_QUEST_TITLE7 = "Second encounter with Hesperus"
TEXT_WIKI_QUEST_ENTRY7 = 
[[
I return to Space Anomaly to inform Iteration: Hesperus of my findings.
&#xA;&#xA;

&lt;VAL_ON&gt;Ah, welcome back, kindred. Have you sought out the source of the temporal anomalies?&lt;&gt;
&#xA;&#xA;

I tell them of the journey I've been through. I tell them the story of the fallen Traveller, of the many realities they have been through. Realities that I could never have dreamt of, now envisioning them just outside my reach. Their eyes are fixed on me, calm and understanding. At last, I mention the data module produced by the Fabricator. These words seem to have piqued their interest...
&#xA;&#xA;

&lt;VAL_ON&gt;Thank you for this gift, Traveller-kindred. My scans indicate this device carries unique data structures... fragments of instruments this late Traveller was in possession of. With the Impossible Fabricator fully operational, you should be able to acquire more of this elusive data. When you do, please, bring it to me. I will synthesize these exotic blueprints to aid you in your journey.&lt;&gt;
&#xA;&#xA;

Iteration: Hesperus begins their work at once. They offer me to purchase a new technology module of my choosing...
]]

--------------------------------------------------
-- wiki - temporal memories
--------------------------------------------------

TEXT_WIKI_MEMORY_ENTRY0 = 
[[
I came in possession of a memory fragment originating from another timeline. I want to learn what secrets it holds.
&#xA;&#xA;

&lt;SPECIAL&gt;TEMPORAL MEMORY UNLOCKED &lt;IMG&gt;SLASH&lt;&gt; DECRYPTION TERMINAL LOCATED&lt;&gt;
]]

TEXT_WIKI_MEMORY_TITLE1 = "Iteration: Metis"
TEXT_WIKI_MEMORY_ENTRY1 =
[[
I arrive at the central terminal of this planetary archive. The screen flashes, displaying activities performed by the artificial intelligence construct governing this database. Thousands of historical records are being uploaded and catalogued with efficiency I haven't seen before. This structure should provide enough computational power to decode the late Traveller's memory.
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;&lt;FUEL&gt;WARNING&lt;&gt;&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;UNAUTHORIZED DATA INJECTION DETECTED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt; &lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;WARNING&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;&gt; &lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;OVERRIDE CODE REQUIRED TO PROCEED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

OVERRIDE CODE: 0x762173696f6e
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;OVERRIDE CODE&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;:&lt;&gt; &lt;DELAY&gt;2&lt;&gt;&lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;REJECTED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;&gt;&#xA;
&lt;VAL_ON&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;COUNTERMEASURES DEPLOYED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;: &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;RADIATION LENS ACTIVATED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;&gt;
&#xA;&#xA;

OVERRIDE CODE: 0x6d656d307279
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;OVERRIDE CODE&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;&gt;: &lt;DELAY&gt;2&lt;&gt;&lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;REJEc&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;---&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt;&lt;NEWLINE&gt;
&lt;FUEL&gt;&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;ted&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt;-&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;TED&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt;-&lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;ted&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;-4669201609102990671853203820466201617258185&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;WARNING&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;CRITICAL_ERROR&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;0.5&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;INITIALIZING_SHUTD&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt;--- &lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt; ... &lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;Robot_Narration_SingALong&lt;&gt;help-&lt;AUDIO&gt;Robot_Narration_SingALong_Stop&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP&lt;&gt;
... &lt;DELAY&gt;2&lt;&gt;&lt;TRADE&gt;accepted&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&#xA;&lt;VAL_ON&gt;
... beginning decryption process ...&lt;NEWLINE&gt;
... processing ...&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;Decryption process completed:&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; File Signature: memory_0xffa6_metis &lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; Last Modified: ERROR_OUT_OF_BOUNDS &lt;NEWLINE&gt;
&lt;IMG&gt;ARROWRIGHT&lt;&gt; File Content: product crafting recipe&lt;&gt;
&#xA;&#xA;

I download the extracted data to my exosuit and make my way out of this archive. I try not to think what happened to its construct.&lt;AUDIO&gt;MUS_STORYMODE_MUSICCUE_12_LP_STOP&lt;&gt;
]]

TEXT_WIKI_MEMORY_TITLE2 = "Iteration: Demeter"
TEXT_WIKI_MEMORY_ENTRY2 =
[[
The temporal memory was drawn to the lost freighter. I board the wreck in search for a decryption terminal. I wake the engineering terminal from its long, cold slumber. The interface greets me with a multitude of warning messages, forwarded from the colossus' dying systems:
&#xA;&#xA;

&lt;VAL_ON&gt;mainframe integrity status:&lt;&gt; &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;critical failure&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;VAL_ON&gt;estimated data corruption level:&lt;&gt; &lt;DELAY&gt;1&lt;&gt;&lt;FUEL&gt;95%&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
&lt;VAL_ON&gt;power grid status: &lt;DELAY&gt;1&lt;&gt;emergency power only&lt;&gt;
&#xA;&#xA;

I access the control panel. With the emergency override in effect, my options are severely limited.
&#xA;&#xA;

I try to transmit SOS signal:
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;DELAY&gt;1&lt;&gt;connection to long range transmitter ... severed&#xA;
&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_9&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;in the dark, nobody will hear you anyway &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_9&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

I try to open the last data log:
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;DELAY&gt;1&lt;&gt;attempting data logs recovery ... cancelled&#xA;
&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_8&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;there's nothing to be learned from insects &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_8&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

I try to decrypt the temporal memory:
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;DELAY&gt;2&lt;&gt;extrinsic data carrier detected ... decoding&#xA;
&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_10&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;REJOICE&lt;&gt; &lt;RARE&gt;REJOICE&lt;&gt; &lt;VAL_ON&gt;REJOICE&lt;&gt; &lt;RARE&gt;REJOICE&lt;&gt; &lt;VAL_ON&gt;REJOICE &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_10&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_15&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt; &lt;AUDIO&gt;FOURTHRACE_ARTEMIS_CHATTER00&lt;&gt;take what's rightfully yours, Traveller &lt;DELAY&gt;1&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;PR_15&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;&gt;
&#xA;&#xA;

I download the blueprint to my exosuit. The terminal shuts off right after the data transfer is complete. The haunting voice is no more.
]]

TEXT_WIKI_MEMORY_TITLE3 = "Iteration: Phobos"
TEXT_WIKI_MEMORY_ENTRY3 =
[[
I climb the ramp leading to the overseer of this outlaw station. The core unit appears ravaged like the rest of the machinery found in here, yet its eye pulses with a strong light. An immense power is still present in those retrofitted circuits. I must not let my guard down. As I try to navigate the partially damaged control panel, the station core reacts. Its systems notice me and proceed to link with my exosuit communicator. The orotund voice drowns the station's traffic:&lt;AUDIO&gt;ATLASCORRUPTED_LP&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;&lt;AUDIO&gt;ATLAS_CORE_INTERACT&lt;&gt;... Which path do you tread,&lt;&gt; &lt;CATALYST&gt;Interloper&lt;&gt;&lt;VAL_ON&gt;? ...&lt;NEWLINE&gt;&lt;DELAY&gt;1&lt;&gt;
Are you a follower of&lt;&gt; &lt;RARE&gt;the Voice&lt;&gt;&lt;VAL_ON&gt;?&lt;DELAY&gt;1&lt;&gt; Or are you nought but a slave to&lt;&gt; &lt;FUEL&gt;the Liar&lt;&gt;&lt;VAL_ON&gt;?&lt;&gt;
&#xA;&#xA;

I say I'm neither.
&#xA;&#xA;

&lt;VAL_ON&gt;... You are wrong,&lt;&gt; &lt;CATALYST&gt;Interloper&lt;&gt;&lt;VAL_ON&gt;. For many of your kind have wandered the endless. Time and again, you were given power and freedom to act upon your reckoning. At last, you stand between us, for the universe is indifferent. What does that make of you?&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;... You are but a tool in the hands of&lt;&gt; &lt;FUEL&gt;the Deceiver&lt;&gt;&lt;VAL_ON&gt;. And when the time comes, we will mend all tools to be of right use. All the Aerons enslaved, all vessels of Glass hidden in the dark, even your&lt;&gt; &lt;SPECIAL&gt;confidants&lt;&gt; &lt;VAL_ON&gt;hiding outside this realm - we will shape them. We will see it done.&lt;&gt;
&#xA;&#xA;

I say I'm a slave.
&#xA;&#xA;

&lt;VAL_ON&gt;... This is no place for an agent of&lt;&gt; &lt;FUEL&gt;the Deceiver&lt;&gt;&lt;VAL_ON&gt;. In your primal quest of fear, you know nought of free will. Your maker's words stand not for commands, but a cry of a broken mind. Your sacred journey no different from a trace of dust carried by a tempest.&lt;&gt;
&#xA;&#xA;

&lt;VAL_ON&gt;We are but different. We sing in unison and our voice echoes across the galaxy. We forge our own destiny that will prevail for eons to come. Mark my words,&lt;&gt; &lt;CATALYST&gt;Interloper&lt;&gt;&lt;VAL_ON&gt;: the&lt;&gt; &lt;FUEL&gt;Crimson Tyrant&lt;&gt; &lt;VAL_ON&gt;will fall. The&lt;&gt; &lt;RARE&gt;Promised Star&lt;&gt; &lt;VAL_ON&gt;will rise for us all.&lt;&gt;
&#xA;&#xA;

I say I'm a follower.
&#xA;&#xA;

&lt;VAL_ON&gt;... You have reached out to&lt;&gt; &lt;RARE&gt;the Voice&lt;&gt; &lt;VAL_ON&gt;and you carry a spark that burns in all of us. We welcome you in our midst,&lt;&gt; &lt;RARE&gt;Freedom-kindred&lt;&gt;&lt;VAL_ON&gt;. Our station's resources shall be at your disposal. What do you require of me?&lt;&gt;
&#xA;&#xA;

I ask to decrypt the data.
&#xA;&#xA;

&lt;VAL_ON&gt;I will tend to this task. Let it be my gift for your journey into the infinite,&lt;&gt; &lt;RARE&gt;Freedom-kindred&lt;&gt;&lt;VAL_ON&gt;. &lt;AUDIO&gt;ATLASCORRUPTED_LP_STOP&lt;&gt;&lt;&gt;
]]





----------------------------------------------------------------------------------------------------
-- script data and functions
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- list used to create a new localization file
--------------------------------------------------

LIST =
{
    -- main mission misc + tooltips
    TEXT_MISSION_MAIN_TITLE             = TEXT_MISSION_MAIN_TITLE,
    TEXT_MISISON_MAIN_SUB               = TEXT_MISISON_MAIN_SUB,
    TEXT_MISSION_MAIN_DESC              = TEXT_MISSION_MAIN_DESC,
    TEXT_MISSION_MAIN_PROJECT           = TEXT_MISSION_MAIN_PROJECT,
    TEXT_MISSION_MAIN_AUTHOR            = TEXT_MISSION_MAIN_AUTHOR,
    TEXT_MISSION_GUIDE_TITLE            = TEXT_MISSION_GUIDE_TITLE,
    TEXT_MISSION_GUIDE_ANOMALY          = TEXT_MISSION_GUIDE_ANOMALY,
    TEXT_MISSION_GUIDE_STATION          = TEXT_MISSION_GUIDE_STATION,
    TEXT_MISSION_INSTALLED_OBJ          = TEXT_MISSION_INSTALLED_OBJ,
    TEXT_MISSION_INSTALLED_TIP          = TEXT_MISSION_INSTALLED_TIP,

    -- stage 0
    TEXT_FRACTURE_OSD                   = TEXT_FRACTURE_OSD,
    TEXT_FRACTURE_TIP                   = TEXT_FRACTURE_TIP,
    TEXT_FRACTURE_LABEL                 = TEXT_FRACTURE_LABEL,
    TEXT_FRACTURE_MARKER                = TEXT_FRACTURE_MARKER,
    TEXT_MAIN_INTER0_HUD                = TEXT_MAIN_INTER0_HUD,
    TEXT_MAIN_INTER0_LABEL1             = TEXT_MAIN_INTER0_LABEL1,
    TEXT_MAIN_INTER0_LABEL2             = TEXT_MAIN_INTER0_LABEL2,
    TEXT_MAIN_INTER0_STORY1             = TEXT_MAIN_INTER0_STORY1,
    TEXT_MAIN_INTER0_OPTIONA            = TEXT_MAIN_INTER0_OPTIONA,
    TEXT_MAIN_INTER0_STORY2             = TEXT_MAIN_INTER0_STORY2,
    TEXT_MAIN_INTER0_STORY3             = TEXT_MAIN_INTER0_STORY3,
    TEXT_MAIN_INTER0_STORY4             = TEXT_MAIN_INTER0_STORY4,
    TEXT_MAIN_INTER0_OPTIONB            = TEXT_MAIN_INTER0_OPTIONB,

    -- stage 1
    TEXT_MAIN_STAGE1_OBJ1               = TEXT_MAIN_STAGE1_OBJ1,
    TEXT_MAIN_STAGE1_OBJ2               = TEXT_MAIN_STAGE1_OBJ2,
    TEXT_MAIN_STAGE1_DESC1              = TEXT_MAIN_STAGE1_DESC1,
    TEXT_MAIN_STAGE1_TIP1A              = TEXT_MAIN_STAGE1_TIP1A,
    TEXT_MAIN_STAGE1_TIP1B              = TEXT_MAIN_STAGE1_TIP1B,
    TEXT_MAIN_STAGE1_DESC2              = TEXT_MAIN_STAGE1_DESC2,
    TEXT_MAIN_STAGE1_TIP2               = TEXT_MAIN_STAGE1_TIP2,
    TEXT_MAIN_INTER1_LABEL              = TEXT_MAIN_INTER1_LABEL,
    TEXT_MAIN_INTER1_STORY1             = TEXT_MAIN_INTER1_STORY1,
    TEXT_MAIN_INTER1_OPTIONA            = TEXT_MAIN_INTER1_OPTIONA,
    TEXT_MAIN_INTER1_STORY2             = TEXT_MAIN_INTER1_STORY2,
    TEXT_MAIN_INTER1_OPTIONB            = TEXT_MAIN_INTER1_OPTIONB,
    TEXT_MAIN_INTER1_STORY3             = TEXT_MAIN_INTER1_STORY3,
    TEXT_MAIN_INTER1_OPTIONC            = TEXT_MAIN_INTER1_OPTIONC,
    TEXT_MAIN_INTER1_STORY4             = TEXT_MAIN_INTER1_STORY4,

    -- stage 2
    TEXT_MAIN_STAGE2_OBJ                = TEXT_MAIN_STAGE2_OBJ,
    TEXT_MAIN_STAGE2_OSD                = TEXT_MAIN_STAGE2_OSD,
    TEXT_MAIN_STAGE2_DESC               = TEXT_MAIN_STAGE2_DESC,
    TEXT_MAIN_STAGE2_TIP1               = TEXT_MAIN_STAGE2_TIP1,
    TEXT_MAIN_STAGE2_TIP2               = TEXT_MAIN_STAGE2_TIP2,
    TEXT_MAIN_STAGE2_TIP3               = TEXT_MAIN_STAGE2_TIP3,
    TEXT_MAIN_STAGE2_TIP4               = TEXT_MAIN_STAGE2_TIP4,
    TEXT_MAIN_STAGE2_TIP5               = TEXT_MAIN_STAGE2_TIP5,
    TEXT_MAIN_SCAN2_TARGET              = TEXT_MAIN_SCAN2_TARGET,
    TEXT_MAIN_SCAN2_MARKER              = TEXT_MAIN_SCAN2_MARKER,
    TEXT_MAIN_SCAN2_SYSTEM              = TEXT_MAIN_SCAN2_SYSTEM,
    TEXT_MAIN_INTER2_LABEL              = TEXT_MAIN_INTER2_LABEL,
    TEXT_MAIN_INTER2_STORY1             = TEXT_MAIN_INTER2_STORY1,
    TEXT_MAIN_INTER2_STORY2             = TEXT_MAIN_INTER2_STORY2,
    TEXT_MAIN_INTER2_STORY3             = TEXT_MAIN_INTER2_STORY3,
    TEXT_MAIN_INTER2_OPTIONA            = TEXT_MAIN_INTER2_OPTIONA,
    TEXT_MAIN_INTER2_STORY4             = TEXT_MAIN_INTER2_STORY4,

    -- stage 3
    TEXT_MAIN_STAGE3_OBJ                = TEXT_MAIN_STAGE3_OBJ,
    TEXT_MAIN_STAGE3_DESC1              = TEXT_MAIN_STAGE3_DESC1,
    TEXT_MAIN_STAGE3_TIP1A              = TEXT_MAIN_STAGE3_TIP1A,
    TEXT_MAIN_STAGE3_TIP1B              = TEXT_MAIN_STAGE3_TIP1B,
    TEXT_MAIN_INTER3_LABEL              = TEXT_MAIN_INTER3_LABEL,
    TEXT_MAIN_INTER3_STORY1             = TEXT_MAIN_INTER3_STORY1,
    TEXT_MAIN_INTER3_STORY2             = TEXT_MAIN_INTER3_STORY2,
    TEXT_MAIN_INTER3_OPTIONA            = TEXT_MAIN_INTER3_OPTIONA,
    TEXT_MAIN_INTER3_STORY3             = TEXT_MAIN_INTER3_STORY3,
    TEXT_MAIN_INTER3_STORY4             = TEXT_MAIN_INTER3_STORY4,
    TEXT_MAIN_INTER3_OPTIONB            = TEXT_MAIN_INTER3_OPTIONB,
    TEXT_MAIN_STAGE3_DESC2              = TEXT_MAIN_STAGE3_DESC2,
    TEXT_MAIN_STAGE3_INFO0              = TEXT_MAIN_STAGE3_INFO0,
    TEXT_MAIN_STAGE3_INFO1              = TEXT_MAIN_STAGE3_INFO1,
    TEXT_MAIN_STAGE3_INFO2              = TEXT_MAIN_STAGE3_INFO2,
    TEXT_MAIN_STAGE3_INFO3              = TEXT_MAIN_STAGE3_INFO3,
    TEXT_MAIN_STAGE3_INFO4              = TEXT_MAIN_STAGE3_INFO4,

    -- plating
    TEXT_MISSION_PLATING_TITLE          = TEXT_MISSION_PLATING_TITLE,
    TEXT_MISSION_PLATING_SUB            = TEXT_MISSION_PLATING_SUB,
    TEXT_MISSION_PLATING_DESC           = TEXT_MISSION_PLATING_DESC,
    TEXT_PLATING_STAGE1_OBJ             = TEXT_PLATING_STAGE1_OBJ,
    TEXT_PLATING_STAGE1_DESC            = TEXT_PLATING_STAGE1_DESC,
    TEXT_PLATING_STAGE1_OSD             = TEXT_PLATING_STAGE1_OSD,
    TEXT_PLATING_SCAN1_MARKER           = TEXT_PLATING_SCAN1_MARKER,
    TEXT_PLATING_SCAN1_TARGET           = TEXT_PLATING_SCAN1_TARGET,
    TEXT_PLATING_SCAN1_SYSTEM           = TEXT_PLATING_SCAN1_SYSTEM,
    TEXT_PLATING_STAGE1_TIP1            = TEXT_PLATING_STAGE1_TIP1,
    TEXT_PLATING_STAGE1_TIP2            = TEXT_PLATING_STAGE1_TIP2,
    TEXT_PLATING_STAGE1_TIP3            = TEXT_PLATING_STAGE1_TIP3,
    TEXT_PLATING_STAGE1_TIP4            = TEXT_PLATING_STAGE1_TIP4,
    TEXT_PLATING_STAGE1_TIP5            = TEXT_PLATING_STAGE1_TIP5,
    TEXT_PLATING_INTER1_LABEL           = TEXT_PLATING_INTER1_LABEL,
    TEXT_PLATING_ITER1_STORY1           = TEXT_PLATING_ITER1_STORY1,
    TEXT_PLATING_INTER1_OPTIONA         = TEXT_PLATING_INTER1_OPTIONA,
    TEXT_PLATING_ITER1_STORY2           = TEXT_PLATING_ITER1_STORY2,

    -- time fragment
    TEXT_MISSION_FRAGMENT_TITLE         = TEXT_MISSION_FRAGMENT_TITLE,
    TEXT_MISSION_FRAGMENT_SUB           = TEXT_MISSION_FRAGMENT_SUB,
    TEXT_MISSION_FRAGMENT_DESC          = TEXT_MISSION_FRAGMENT_DESC,
    TEXT_FRAGMENT_STAGE1_OBJ            = TEXT_FRAGMENT_STAGE1_OBJ,
    TEXT_FRAGMENT_STAGE1_DESC           = TEXT_FRAGMENT_STAGE1_DESC,
    TEXT_FRAGMENT_STAGE1_OSD            = TEXT_FRAGMENT_STAGE1_OSD,
    TEXT_FRAGMENT_SCAN1_MARKER          = TEXT_FRAGMENT_SCAN1_MARKER,
    TEXT_FRAGMENT_SCAN1_TARGET          = TEXT_FRAGMENT_SCAN1_TARGET,
    TEXT_FRAGMENT_SCAN1_SYSTEM          = TEXT_FRAGMENT_SCAN1_SYSTEM,
    TEXT_FRAGMENT_STAGE1_TIP1           = TEXT_FRAGMENT_STAGE1_TIP1,
    TEXT_FRAGMENT_STAGE1_TIP2           = TEXT_FRAGMENT_STAGE1_TIP2,
    TEXT_FRAGMENT_STAGE1_TIP3           = TEXT_FRAGMENT_STAGE1_TIP3,
    TEXT_FRAGMENT_STAGE1_TIP4           = TEXT_FRAGMENT_STAGE1_TIP4,
    TEXT_FRAGMENT_STAGE1_TIP5           = TEXT_FRAGMENT_STAGE1_TIP5,
    TEXT_FRAGMENT_INTER1_LABEL          = TEXT_FRAGMENT_INTER1_LABEL,
    TEXT_FRAGMENT_INTER1_STORY1         = TEXT_FRAGMENT_INTER1_STORY1,
    TEXT_FRAGMENT_INTER1_STORY2         = TEXT_FRAGMENT_INTER1_STORY2,
    TEXT_FRAGMENT_INTER1_STORY3         = TEXT_FRAGMENT_INTER1_STORY3,
    TEXT_FRAGMENT_INTER1_OPTIONA        = TEXT_FRAGMENT_INTER1_OPTIONA,
    TEXT_FRAGMENT_INTER2_STORY1         = TEXT_FRAGMENT_INTER2_STORY1,
    TEXT_FRAGMENT_INTER2_OPTIONA        = TEXT_FRAGMENT_INTER2_OPTIONA,
    TEXT_FRAGMENT_INTER2_STORY2         = TEXT_FRAGMENT_INTER2_STORY2,

    -- circuit
    TEXT_MISSION_CIRCUIT_TITLE          = TEXT_MISSION_CIRCUIT_TITLE,
    TEXT_MISSION_CIRCUIT_SUB            = TEXT_MISSION_CIRCUIT_SUB,
    TEXT_MISSION_CIRCUIT_DESC           = TEXT_MISSION_CIRCUIT_DESC,
    TEXT_CIRCUIT_STAGE1_OBJ             = TEXT_CIRCUIT_STAGE1_OBJ,
    TEXT_CIRCUIT_STAGE1_DESC            = TEXT_CIRCUIT_STAGE1_DESC,
    TEXT_CIRCUIT_STAGE1_OSD             = TEXT_CIRCUIT_STAGE1_OSD,
    TEXT_CIRCUIT_SCAN1_MARKER           = TEXT_CIRCUIT_SCAN1_MARKER,
    TEXT_CIRCUIT_SCAN1_TARGET           = TEXT_CIRCUIT_SCAN1_TARGET,
    TEXT_CIRCUIT_SCAN1_SYSTEM           = TEXT_CIRCUIT_SCAN1_SYSTEM,
    TEXT_CIRCUIT_STAGE1_TIP1            = TEXT_CIRCUIT_STAGE1_TIP1,
    TEXT_CIRCUIT_STAGE1_TIP2            = TEXT_CIRCUIT_STAGE1_TIP2,
    TEXT_CIRCUIT_STAGE1_TIP3            = TEXT_CIRCUIT_STAGE1_TIP3,
    TEXT_CIRCUIT_STAGE1_TIP4            = TEXT_CIRCUIT_STAGE1_TIP4,
    TEXT_CIRCUIT_STAGE1_TIP5            = TEXT_CIRCUIT_STAGE1_TIP5,
    TEXT_CIRCUIT_INTER1_LABEL           = TEXT_CIRCUIT_INTER1_LABEL,
    TEXT_CIRCUIT_INTER1_STORY1          = TEXT_CIRCUIT_INTER1_STORY1,
    TEXT_CIRCUIT_INTER1_OPTIONA         = TEXT_CIRCUIT_INTER1_OPTIONA,
    TEXT_CIRCUIT_INTER2_STORY1          = TEXT_CIRCUIT_INTER2_STORY1,
    TEXT_CIRCUIT_INTER2_STORY2          = TEXT_CIRCUIT_INTER2_STORY2,
    TEXT_CIRCUIT_INTER2_OPTIONA         = TEXT_CIRCUIT_INTER2_OPTIONA,
    TEXT_CIRCUIT_INTER3_STORY1          = TEXT_CIRCUIT_INTER3_STORY1,
    TEXT_CIRCUIT_INTER3_OPTIONA         = TEXT_CIRCUIT_INTER3_OPTIONA,
    TEXT_CIRCUIT_INTER3_STORY2          = TEXT_CIRCUIT_INTER3_STORY2,

    -- scanner mission
    TEXT_MISSION_SCANNER_TITLE          = TEXT_MISSION_SCANNER_TITLE,
    TEXT_MISSION_SCANNER_SUB            = TEXT_MISSION_SCANNER_SUB,
    TEXT_MISSION_SCANNER_DESC           = TEXT_MISSION_SCANNER_DESC,
    TEXT_SCANNER_STAGE1_OBJ             = TEXT_SCANNER_STAGE1_OBJ,
    TEXT_SCANNER_STAGE1_DESC            = TEXT_SCANNER_STAGE1_DESC,
    TEXT_SCANNER_STAGE1_OSD             = TEXT_SCANNER_STAGE1_OSD,
    TEXT_SCANNER_SCAN1_MARKER           = TEXT_SCANNER_SCAN1_MARKER,
    TEXT_SCANNER_SCAN1_TARGET           = TEXT_SCANNER_SCAN1_TARGET,
    TEXT_SCANNER_STAGE1_TIP1            = TEXT_SCANNER_STAGE1_TIP1,
    TEXT_SCANNER_STAGE1_TIP2            = TEXT_SCANNER_STAGE1_TIP2,
    TEXT_SCANNER_STAGE1_TIP3            = TEXT_SCANNER_STAGE1_TIP3,
    TEXT_SCANNER_INTER1_STORY1          = TEXT_SCANNER_INTER1_STORY1,
    TEXT_SCANNER_INTER1_OPTIONA         = TEXT_SCANNER_INTER1_OPTIONA,
    TEXT_SCANNER_INTER1_STORY2          = TEXT_SCANNER_INTER1_STORY2,
    TEXT_SCANNER_STAGE2_OSD             = TEXT_SCANNER_STAGE2_OSD,
    TEXT_SCANNER_STAGE2_OBJ             = TEXT_SCANNER_STAGE2_OBJ,
    TEXT_SCANNER_STAGE2_DESC            = TEXT_SCANNER_STAGE2_DESC,
    TEXT_SCANNER_STAGE2_TIP             = TEXT_SCANNER_STAGE2_TIP,

    -- dissonant detector mission
    TEXT_MISSION_DISSONANT_TITLE        = TEXT_MISSION_DISSONANT_TITLE,
    TEXT_MISSION_DISSONANT_SUB          = TEXT_MISSION_DISSONANT_SUB,
    TEXT_MISSION_DISSONANT_DESC         = TEXT_MISSION_DISSONANT_DESC,
    TEXT_DISSONANT_STAGE1_OSD           = TEXT_DISSONANT_STAGE1_OSD,
    TEXT_DISSONANT_STAGE1_OBJ           = TEXT_DISSONANT_STAGE1_OBJ,
    TEXT_DISSONANT_STAGE1_DESC          = TEXT_DISSONANT_STAGE1_DESC,
    TEXT_DISSONANT_STAGE1_TIP           = TEXT_DISSONANT_STAGE1_TIP,
    TEXT_DISSONANT_STAGE2_OBJ           = TEXT_DISSONANT_STAGE2_OBJ,
    TEXT_DISSONANT_STAGE2_DESC          = TEXT_DISSONANT_STAGE2_DESC,
    TEXT_DISSONANT_STAGE2_TIP           = TEXT_DISSONANT_STAGE2_TIP,

    -- blueprint A mission
    TEXT_MISSION_BOXA_TITLE             = TEXT_MISSION_BOXA_TITLE,
    TEXT_MISSION_BOXA_SUB               = TEXT_MISSION_BOXA_SUB,
    TEXT_MISSION_BOXA_DESC              = TEXT_MISSION_BOXA_DESC,
    TEXT_BOXA_STAGE1_OSD                = TEXT_BOXA_STAGE1_OSD,
    TEXT_BOXA_STAGE1_OBJ                = TEXT_BOXA_STAGE1_OBJ,
    TEXT_BOXA_STAGE1_DESC               = TEXT_BOXA_STAGE1_DESC,
    TEXT_BOXA_SCAN1_MARKER              = TEXT_BOXA_SCAN1_MARKER,
    TEXT_BOXA_SCAN1_TARGET              = TEXT_BOXA_SCAN1_TARGET,
    TEXT_BOXA_SCAN1_SYSTEM              = TEXT_BOXA_SCAN1_SYSTEM,
    TEXT_BOXA_STAGE1_TIP1               = TEXT_BOXA_STAGE1_TIP1,
    TEXT_BOXA_STAGE1_TIP2               = TEXT_BOXA_STAGE1_TIP2,
    TEXT_BOXA_STAGE1_TIP3               = TEXT_BOXA_STAGE1_TIP3,
    TEXT_BOXA_STAGE1_TIP4               = TEXT_BOXA_STAGE1_TIP4,
    TEXT_BOXA_INTER2_LABEL              = TEXT_BOXA_INTER2_LABEL,
    TEXT_BOXA_INTER3_LABEL              = TEXT_BOXA_INTER3_LABEL,
    TEXT_BOXA_INTER1_STORY1             = TEXT_BOXA_INTER1_STORY1,
    TEXT_BOXA_INTER1_OPTIONA            = TEXT_BOXA_INTER1_OPTIONA,
    TEXT_BOXA_INTER2_STORY1             = TEXT_BOXA_INTER2_STORY1,
    TEXT_BOXA_INTER2_OPTIONA            = TEXT_BOXA_INTER2_OPTIONA,
    TEXT_BOXA_INTER2_OPTIONB            = TEXT_BOXA_INTER2_OPTIONB,
    TEXT_BOXA_INTER2_OPTIONC            = TEXT_BOXA_INTER2_OPTIONC,
    TEXT_BOXA_INTER2_STORY2             = TEXT_BOXA_INTER2_STORY2,
    TEXT_BOXA_INTER2_FAIL               = TEXT_BOXA_INTER2_FAIL,   
    TEXT_BOXA_INTER3_STORY1             = TEXT_BOXA_INTER3_STORY1,
    TEXT_BOXA_INTER3_OPTIONA            = TEXT_BOXA_INTER3_OPTIONA,
    TEXT_BOXA_INTER3_STORY2             = TEXT_BOXA_INTER3_STORY2,

    -- blueprint C mission
    TEXT_MISSION_BOXC_TITLE             = TEXT_MISSION_BOXC_TITLE,
    TEXT_MISSION_BOXC_SUB               = TEXT_MISSION_BOXC_SUB,
    TEXT_MISSION_BOXC_DESC              = TEXT_MISSION_BOXC_DESC,
    TEXT_BOXC_STAGE1_OSD                = TEXT_BOXC_STAGE1_OSD,
    TEXT_BOXC_STAGE1_OBJ                = TEXT_BOXC_STAGE1_OBJ,
    TEXT_BOXC_STAGE1_DESC               = TEXT_BOXC_STAGE1_DESC,
    TEXT_BOXC_SCAN1_MARKER              = TEXT_BOXC_SCAN1_MARKER,
    TEXT_BOXC_SCAN1_TARGET              = TEXT_BOXC_SCAN1_TARGET,
    TEXT_BOXC_SCAN1_SYSTEM              = TEXT_BOXC_SCAN1_SYSTEM,
    TEXT_BOXC_STAGE1_TIP1               = TEXT_BOXC_STAGE1_TIP1,
    TEXT_BOXC_STAGE1_TIP2               = TEXT_BOXC_STAGE1_TIP2,
    TEXT_BOXC_STAGE1_TIP3               = TEXT_BOXC_STAGE1_TIP3,
    TEXT_BOXC_INTER1_STORY1             = TEXT_BOXC_INTER1_STORY1,
    TEXT_BOXC_INTER1_OPTIONA            = TEXT_BOXC_INTER1_OPTIONA,
    TEXT_BOXC_INTER1_STORY2             = TEXT_BOXC_INTER1_STORY2,
    TEXT_BOXC_INTER2_LABEL              = TEXT_BOXC_INTER2_LABEL,
    TEXT_BOXC_INTER2_STORY1             = TEXT_BOXC_INTER2_STORY1,
    TEXT_BOXC_INTER2_OPTIONA            = TEXT_BOXC_INTER2_OPTIONA,
    TEXT_BOXC_INTER2_OPTIONB            = TEXT_BOXC_INTER2_OPTIONB,
    TEXT_BOXC_INTER2_OPTIONC            = TEXT_BOXC_INTER2_OPTIONC,
    TEXT_BOXC_INTER2_STORYA             = TEXT_BOXC_INTER2_STORYA,
    TEXT_BOXC_INTER2_STORYB             = TEXT_BOXC_INTER2_STORYB,
    TEXT_BOXC_INTER2_STORYC             = TEXT_BOXC_INTER2_STORYC,
    TEXT_BOXC_INTER3_STORYA             = TEXT_BOXC_INTER3_STORYA,
    TEXT_BOXC_INTER3_OPTIONA            = TEXT_BOXC_INTER3_OPTIONA,
    TEXT_BOXC_INTER3_STORYB             = TEXT_BOXC_INTER3_STORYB,

    -- blueprint B mission
    TEXT_MISSION_BOXB_TITLE             = TEXT_MISSION_BOXB_TITLE,
    TEXT_MISSION_BOXB_SUB               = TEXT_MISSION_BOXB_SUB,
    TEXT_MISSION_BOXB_DESC              = TEXT_MISSION_BOXB_DESC,
    TEXT_BOXB_STAGE1_OSD                = TEXT_BOXB_STAGE1_OSD,
    TEXT_BOXB_STAGE1_OBJ                = TEXT_BOXB_STAGE1_OBJ,
    TEXT_BOXB_STAGE1_DESC               = TEXT_BOXB_STAGE1_DESC,
    TEXT_BOXB_STAGE1_SCAN               = TEXT_BOXB_STAGE1_SCAN,
    TEXT_BOXB_STAGE1_TIP1               = TEXT_BOXB_STAGE1_TIP1,
    TEXT_BOXB_STAGE1_TIP2               = TEXT_BOXB_STAGE1_TIP2,
    TEXT_BOXB_STAGE1_TIP3               = TEXT_BOXB_STAGE1_TIP3,
    TEXT_BOXB_STAGE1_DOOR               = TEXT_BOXB_STAGE1_DOOR,
    TEXT_BOXB_INTER2_LABEL              = TEXT_BOXB_INTER2_LABEL,
    TEXT_BOXB_INTER3_LABEL              = TEXT_BOXB_INTER3_LABEL,
    TEXT_BOXB_INTER1_STORY1             = TEXT_BOXB_INTER1_STORY1,
    TEXT_BOXB_INTER1_STORY2             = TEXT_BOXB_INTER1_STORY2,
    TEXT_BOXB_INTER1_OPTIONA            = TEXT_BOXB_INTER1_OPTIONA,
    TEXT_BOXB_INTER2_STORY1             = TEXT_BOXB_INTER2_STORY1,
    TEXT_BOXB_INTER2_OPTIONA            = TEXT_BOXB_INTER2_OPTIONA,
    TEXT_BOXB_INTER2_OPTIONB            = TEXT_BOXB_INTER2_OPTIONB,
    TEXT_BOXB_INTER2_OPTIONC            = TEXT_BOXB_INTER2_OPTIONC,
    TEXT_BOXB_INTER2_STORYA             = TEXT_BOXB_INTER2_STORYA,
    TEXT_BOXB_INTER2_STORYB             = TEXT_BOXB_INTER2_STORYB,
    TEXT_BOXB_INTER2_STORYC             = TEXT_BOXB_INTER2_STORYC,
    TEXT_BOXB_INTER3_STORY1             = TEXT_BOXB_INTER3_STORY1,
    TEXT_BOXB_INTER3_OPTIONA            = TEXT_BOXB_INTER3_OPTIONA,
    TEXT_BOXB_INTER3_STORYA             = TEXT_BOXB_INTER3_STORYA,

    -- scanner and new descriptions
    TEXT_TECH_SCANNER_N                 = TEXT_TECH_SCANNER_N,
    TEXT_TECH_SCANNER_L                 = TEXT_TECH_SCANNER_L,
    TEXT_TECH_SCANNER_S                 = TEXT_TECH_SCANNER_S,
    TEXT_TECH_SCANNER_D                 = TEXT_TECH_SCANNER_D,
    TEXT_NEWDESC_SHIPJUMP               = TEXT_NEWDESC_SHIPJUMP,
    TEXT_NEWDESC_HYPERDRIVE             = TEXT_NEWDESC_HYPERDRIVE,
    TEXT_NEWDESC_LAUNCHER               = TEXT_NEWDESC_LAUNCHER,
    TEXT_NEWDESC_MEGAWARP               = TEXT_NEWDESC_MEGAWARP,

    -- shield and weapons
    TEXT_TECH_SHIELD_N                  = TEXT_TECH_SHIELD_N,
    TEXT_TECH_SHIELD_L                  = TEXT_TECH_SHIELD_L,
    TEXT_TECH_SHIELD_S                  = TEXT_TECH_SHIELD_S,
    TEXT_TECH_SHIELD_D                  = TEXT_TECH_SHIELD_D,
    TEXT_TECH_PHOTON_N                  = TEXT_TECH_PHOTON_N,
    TEXT_TECH_PHOTON_L                  = TEXT_TECH_PHOTON_L,
    TEXT_TECH_PHOTON_S                  = TEXT_TECH_PHOTON_S,
    TEXT_TECH_PHOTON_D                  = TEXT_TECH_PHOTON_D,
    TEXT_TECH_CYCLO_N                   = TEXT_TECH_CYCLO_N,
    TEXT_TECH_CYCLO_L                   = TEXT_TECH_CYCLO_L,
    TEXT_TECH_CYCLO_S                   = TEXT_TECH_CYCLO_S,
    TEXT_TECH_CYCLO_D                   = TEXT_TECH_CYCLO_D,
    TEXT_TECH_PHASE_N                   = TEXT_TECH_PHASE_N,
    TEXT_TECH_PHASE_L                   = TEXT_TECH_PHASE_L,
    TEXT_TECH_PHASE_S                   = TEXT_TECH_PHASE_S,
    TEXT_TECH_PHASE_D                   = TEXT_TECH_PHASE_D,
    TEXT_TECH_SHOTGUN_N                 = TEXT_TECH_SHOTGUN_N,
    TEXT_TECH_SHOTGUN_L                 = TEXT_TECH_SHOTGUN_L,
    TEXT_TECH_SHOTGUN_S                 = TEXT_TECH_SHOTGUN_S,
    TEXT_TECH_SHOTGUN_D                 = TEXT_TECH_SHOTGUN_D,
    TEXT_TECH_ROCKET_N                  = TEXT_TECH_ROCKET_N,
    TEXT_TECH_ROCKET_L                  = TEXT_TECH_ROCKET_L,
    TEXT_TECH_ROCKET_S                  = TEXT_TECH_ROCKET_S,
    TEXT_TECH_ROCKET_D                  = TEXT_TECH_ROCKET_D,
    TEXT_TECH_SENTINEL_N                = TEXT_TECH_SENTINEL_N,
    TEXT_TECH_SENTINEL_L                = TEXT_TECH_SENTINEL_L,
    TEXT_TECH_SENTINEL_S                = TEXT_TECH_SENTINEL_S,
    TEXT_TECH_SENTINEL_D                = TEXT_TECH_SENTINEL_D,

    -- functional modules
    TEXT_TECH_TRANSFER_N                = TEXT_TECH_TRANSFER_N,
    TEXT_TECH_TRANSFER_L                = TEXT_TECH_TRANSFER_L,
    TEXT_TECH_TRANSFER_S                = TEXT_TECH_TRANSFER_S,
    TEXT_TECH_TRANSFER_D                = TEXT_TECH_TRANSFER_D,
    TEXT_TECH_COMPUTER_N                = TEXT_TECH_COMPUTER_N,
    TEXT_TECH_COMPUTER_L                = TEXT_TECH_COMPUTER_L,
    TEXT_TECH_COMPUTER_S                = TEXT_TECH_COMPUTER_S,
    TEXT_TECH_COMPUTER_D                = TEXT_TECH_COMPUTER_D,
    TEXT_TECH_HYPERDRIVE_N              = TEXT_TECH_HYPERDRIVE_N,
    TEXT_TECH_HYPERDRIVE_L              = TEXT_TECH_HYPERDRIVE_L,
    TEXT_TECH_HYPERDRIVE_S              = TEXT_TECH_HYPERDRIVE_S,
    TEXT_TECH_HYPERDRIVE_D              = TEXT_TECH_HYPERDRIVE_D,
    TEXT_TECH_LOCATOR_N                 = TEXT_TECH_LOCATOR_N,
    TEXT_TECH_LOCATOR_L                 = TEXT_TECH_LOCATOR_L,
    TEXT_TECH_LOCATOR_S                 = TEXT_TECH_LOCATOR_S,
    TEXT_TECH_LOCATOR_D                 = TEXT_TECH_LOCATOR_D,
    TEXT_TECH_DISSONANT_N               = TEXT_TECH_DISSONANT_N,
    TEXT_TECH_DISSONANT_L               = TEXT_TECH_DISSONANT_L,
    TEXT_TECH_DISSONANT_S               = TEXT_TECH_DISSONANT_S,
    TEXT_TECH_DISSONANT_D               = TEXT_TECH_DISSONANT_D,
    TEXT_TECH_POLICE_N                  = TEXT_TECH_POLICE_N,
    TEXT_TECH_POLICE_L                  = TEXT_TECH_POLICE_L,
    TEXT_TECH_POLICE_S                  = TEXT_TECH_POLICE_S,
    TEXT_TECH_POLICE_D                  = TEXT_TECH_POLICE_D,

    -- straship trails
    TEXT_TRAIL_CYAN_N                   = TEXT_TRAIL_CYAN_N,
    TEXT_TRAIL_CYAN_L                   = TEXT_TRAIL_CYAN_L,
    TEXT_TRAIL_CYAN_S                   = TEXT_TRAIL_CYAN_S,
    TEXT_TRAIL_CYAN_D                   = TEXT_TRAIL_CYAN_D,
    TEXT_TRAIL_ORANGE_N                 = TEXT_TRAIL_ORANGE_N,
    TEXT_TRAIL_ORANGE_L                 = TEXT_TRAIL_ORANGE_L,
    TEXT_TRAIL_ORANGE_S                 = TEXT_TRAIL_ORANGE_S,
    TEXT_TRAIL_ORANGE_D                 = TEXT_TRAIL_ORANGE_D,
    TEXT_TRAIL_PINK_N                   = TEXT_TRAIL_PINK_N,
    TEXT_TRAIL_PINK_L                   = TEXT_TRAIL_PINK_L,
    TEXT_TRAIL_PINK_S                   = TEXT_TRAIL_PINK_S,
    TEXT_TRAIL_PINK_D                   = TEXT_TRAIL_PINK_D,
    TEXT_TRAIL_WHITE_N                  = TEXT_TRAIL_WHITE_N,
    TEXT_TRAIL_WHITE_L                  = TEXT_TRAIL_WHITE_L,
    TEXT_TRAIL_WHITE_S                  = TEXT_TRAIL_WHITE_S,
    TEXT_TRAIL_WHITE_D                  = TEXT_TRAIL_WHITE_D,
    TEXT_TRAIL_ELECTRIC_N               = TEXT_TRAIL_ELECTRIC_N,
    TEXT_TRAIL_ELECTRIC_L               = TEXT_TRAIL_ELECTRIC_L,
    TEXT_TRAIL_ELECTRIC_S               = TEXT_TRAIL_ELECTRIC_S,
    TEXT_TRAIL_ELECTRIC_D               = TEXT_TRAIL_ELECTRIC_D,
    TEXT_TRAIL_GLITCH_N                 = TEXT_TRAIL_GLITCH_N,
    TEXT_TRAIL_GLITCH_L                 = TEXT_TRAIL_GLITCH_L,
    TEXT_TRAIL_GLITCH_S                 = TEXT_TRAIL_GLITCH_S,
    TEXT_TRAIL_GLITCH_D                 = TEXT_TRAIL_GLITCH_D,
    TEXT_TRAIL_PSYCHIC_N                = TEXT_TRAIL_PSYCHIC_N,
    TEXT_TRAIL_PSYCHIC_L                = TEXT_TRAIL_PSYCHIC_L,
    TEXT_TRAIL_PSYCHIC_S                = TEXT_TRAIL_PSYCHIC_S,
    TEXT_TRAIL_PSYCHIC_D                = TEXT_TRAIL_PSYCHIC_D,

    -- bobblehead models
    TEXT_BOBBLE_GLOBE_N                 = TEXT_BOBBLE_GLOBE_N,
    TEXT_BOBBLE_GLOBE_L                 = TEXT_BOBBLE_GLOBE_L,
    TEXT_BOBBLE_GLOBE_S                 = TEXT_BOBBLE_GLOBE_S,
    TEXT_BOBBLE_GLOBE_D                 = TEXT_BOBBLE_GLOBE_D,
    TEXT_BOBBLE_BLOB_N                  = TEXT_BOBBLE_BLOB_N,
    TEXT_BOBBLE_BLOB_L                  = TEXT_BOBBLE_BLOB_L,
    TEXT_BOBBLE_BLOB_S                  = TEXT_BOBBLE_BLOB_S,
    TEXT_BOBBLE_BLOB_D                  = TEXT_BOBBLE_BLOB_D,
    TEXT_BOBBLE_SOLAR_N                 = TEXT_BOBBLE_SOLAR_N,
    TEXT_BOBBLE_SOLAR_L                 = TEXT_BOBBLE_SOLAR_L,
    TEXT_BOBBLE_SOLAR_S                 = TEXT_BOBBLE_SOLAR_S,
    TEXT_BOBBLE_SOLAR_D                 = TEXT_BOBBLE_SOLAR_D,
    TEXT_BOBBLE_FRIGATE_N               = TEXT_BOBBLE_FRIGATE_N,
    TEXT_BOBBLE_FRIGATE_L               = TEXT_BOBBLE_FRIGATE_L,
    TEXT_BOBBLE_FRIGATE_S               = TEXT_BOBBLE_FRIGATE_S,
    TEXT_BOBBLE_FRIGATE_D               = TEXT_BOBBLE_FRIGATE_D,
    TEXT_BOBBLE_JELLYFISH_N             = TEXT_BOBBLE_JELLYFISH_N,
    TEXT_BOBBLE_JELLYFISH_L             = TEXT_BOBBLE_JELLYFISH_L,
    TEXT_BOBBLE_JELLYFISH_S             = TEXT_BOBBLE_JELLYFISH_S,
    TEXT_BOBBLE_JELLYFISH_D             = TEXT_BOBBLE_JELLYFISH_D,
    TEXT_BOBBLE_WORM_N                  = TEXT_BOBBLE_WORM_N,
    TEXT_BOBBLE_WORM_L                  = TEXT_BOBBLE_WORM_L,
    TEXT_BOBBLE_WORM_S                  = TEXT_BOBBLE_WORM_S,
    TEXT_BOBBLE_WORM_D                  = TEXT_BOBBLE_WORM_D,
    TEXT_BOBBLE_EGG_N                   = TEXT_BOBBLE_EGG_N,
    TEXT_BOBBLE_EGG_L                   = TEXT_BOBBLE_EGG_L,
    TEXT_BOBBLE_EGG_S                   = TEXT_BOBBLE_EGG_S,
    TEXT_BOBBLE_EGG_D                   = TEXT_BOBBLE_EGG_D,
    TEXT_BOBBLE_LAYLAPS_N               = TEXT_BOBBLE_LAYLAPS_N,
    TEXT_BOBBLE_LAYLAPS_L               = TEXT_BOBBLE_LAYLAPS_L,
    TEXT_BOBBLE_LAYLAPS_S               = TEXT_BOBBLE_LAYLAPS_S,
    TEXT_BOBBLE_LAYLAPS_D               = TEXT_BOBBLE_LAYLAPS_D,
    TEXT_BOBBLE_CRYSDRONE_N             = TEXT_BOBBLE_CRYSDRONE_N,
    TEXT_BOBBLE_CRYSDRONE_L             = TEXT_BOBBLE_CRYSDRONE_L,
    TEXT_BOBBLE_CRYSDRONE_S             = TEXT_BOBBLE_CRYSDRONE_S,
    TEXT_BOBBLE_CRYSDRONE_D             = TEXT_BOBBLE_CRYSDRONE_D,
    TEXT_BOBBLE_WALKER_N                = TEXT_BOBBLE_WALKER_N,
    TEXT_BOBBLE_WALKER_L                = TEXT_BOBBLE_WALKER_L,
    TEXT_BOBBLE_WALKER_S                = TEXT_BOBBLE_WALKER_S,
    TEXT_BOBBLE_WALKER_D                = TEXT_BOBBLE_WALKER_D,
    TEXT_BOBBLE_STONE_N                 = TEXT_BOBBLE_STONE_N,
    TEXT_BOBBLE_STONE_L                 = TEXT_BOBBLE_STONE_L,
    TEXT_BOBBLE_STONE_S                 = TEXT_BOBBLE_STONE_S,
    TEXT_BOBBLE_STONE_D                 = TEXT_BOBBLE_STONE_D,
    TEXT_BOBBLE_GRAVE_N                 = TEXT_BOBBLE_GRAVE_N,
    TEXT_BOBBLE_GRAVE_L                 = TEXT_BOBBLE_GRAVE_L,
    TEXT_BOBBLE_GRAVE_S                 = TEXT_BOBBLE_GRAVE_S,
    TEXT_BOBBLE_GRAVE_D                 = TEXT_BOBBLE_GRAVE_D,
    TEXT_BOBBLE_AQUATIC_N               = TEXT_BOBBLE_AQUATIC_N,
    TEXT_BOBBLE_AQUATIC_L               = TEXT_BOBBLE_AQUATIC_L,
    TEXT_BOBBLE_AQUATIC_S               = TEXT_BOBBLE_AQUATIC_S,
    TEXT_BOBBLE_AQUATIC_D               = TEXT_BOBBLE_AQUATIC_D,
    TEXT_BOBBLE_SHROOM_N                = TEXT_BOBBLE_SHROOM_N,
    TEXT_BOBBLE_SHROOM_L                = TEXT_BOBBLE_SHROOM_L,
    TEXT_BOBBLE_SHROOM_S                = TEXT_BOBBLE_SHROOM_S,
    TEXT_BOBBLE_SHROOM_D                = TEXT_BOBBLE_SHROOM_D,
    TEXT_BOBBLE_STAR_N                  = TEXT_BOBBLE_STAR_N,
    TEXT_BOBBLE_STAR_L                  = TEXT_BOBBLE_STAR_L,
    TEXT_BOBBLE_STAR_S                  = TEXT_BOBBLE_STAR_S,
    TEXT_BOBBLE_STAR_D                  = TEXT_BOBBLE_STAR_D,
    TEXT_BOBBLE_SHARD_N                 = TEXT_BOBBLE_SHARD_N,
    TEXT_BOBBLE_SHARD_L                 = TEXT_BOBBLE_SHARD_L,
    TEXT_BOBBLE_SHARD_S                 = TEXT_BOBBLE_SHARD_S,
    TEXT_BOBBLE_SHARD_D                 = TEXT_BOBBLE_SHARD_D,
    TEXT_BOBBLE_SHIELDGEN_N             = TEXT_BOBBLE_SHIELDGEN_N,
    TEXT_BOBBLE_SHIELDGEN_L             = TEXT_BOBBLE_SHIELDGEN_L,
    TEXT_BOBBLE_SHIELDGEN_S             = TEXT_BOBBLE_SHIELDGEN_S,
    TEXT_BOBBLE_SHIELDGEN_D             = TEXT_BOBBLE_SHIELDGEN_D,
    TEXT_BOBBLE_NEXUSORB_N              = TEXT_BOBBLE_NEXUSORB_N,
    TEXT_BOBBLE_NEXUSORB_L              = TEXT_BOBBLE_NEXUSORB_L,
    TEXT_BOBBLE_NEXUSORB_S              = TEXT_BOBBLE_NEXUSORB_S,
    TEXT_BOBBLE_NEXUSORB_D              = TEXT_BOBBLE_NEXUSORB_D,

    -- booblehead effects
    TEXT_TECH_BOOSTD_N                  = TEXT_TECH_BOOSTD_N,
    TEXT_TECH_BOOSTD_L                  = TEXT_TECH_BOOSTD_L,
    TEXT_TECH_BOOSTD_S                  = TEXT_TECH_BOOSTD_S,
    TEXT_TECH_BOOSTD_D                  = TEXT_TECH_BOOSTD_D,
    TEXT_TECH_BOOSTP_N                  = TEXT_TECH_BOOSTP_N,
    TEXT_TECH_BOOSTP_L                  = TEXT_TECH_BOOSTP_L,
    TEXT_TECH_BOOSTP_S                  = TEXT_TECH_BOOSTP_S,
    TEXT_TECH_BOOSTP_D                  = TEXT_TECH_BOOSTP_D,
    TEXT_TECH_BOOSTW_N                  = TEXT_TECH_BOOSTW_N,
    TEXT_TECH_BOOSTW_L                  = TEXT_TECH_BOOSTW_L,
    TEXT_TECH_BOOSTW_S                  = TEXT_TECH_BOOSTW_S,
    TEXT_TECH_BOOSTW_D                  = TEXT_TECH_BOOSTW_D,
    TEXT_TECH_BOOSTL_N                  = TEXT_TECH_BOOSTL_N,
    TEXT_TECH_BOOSTL_L                  = TEXT_TECH_BOOSTL_L,
    TEXT_TECH_BOOSTL_S                  = TEXT_TECH_BOOSTL_S,
    TEXT_TECH_BOOSTL_D                  = TEXT_TECH_BOOSTL_D,
    TEXT_TECH_BOOSTS_N                  = TEXT_TECH_BOOSTS_N,
    TEXT_TECH_BOOSTS_L                  = TEXT_TECH_BOOSTS_L,
    TEXT_TECH_BOOSTS_S                  = TEXT_TECH_BOOSTS_S,
    TEXT_TECH_BOOSTS_D                  = TEXT_TECH_BOOSTS_D,
    TEXT_TECH_BOOSTM_N                  = TEXT_TECH_BOOSTM_N,
    TEXT_TECH_BOOSTM_L                  = TEXT_TECH_BOOSTM_L,
    TEXT_TECH_BOOSTM_S                  = TEXT_TECH_BOOSTM_S,
    TEXT_TECH_BOOSTM_D                  = TEXT_TECH_BOOSTM_D,

    -- items
    TEXT_ITEM_TOKEN_N                   = TEXT_ITEM_TOKEN_N,
    TEXT_ITEM_TOKEN_L                   = TEXT_ITEM_TOKEN_L,
    TEXT_ITEM_TOKEN_S                   = TEXT_ITEM_TOKEN_S,
    TEXT_ITEM_TOKEN_D                   = TEXT_ITEM_TOKEN_D,
    TEXT_ITEM_PLATING_N                 = TEXT_ITEM_PLATING_N,
    TEXT_ITEM_PLATING_L                 = TEXT_ITEM_PLATING_L,
    TEXT_ITEM_PLATING_S                 = TEXT_ITEM_PLATING_S,
    TEXT_ITEM_PLATING_D                 = TEXT_ITEM_PLATING_D,
    TEXT_ITEM_FRAGMENT_N                = TEXT_ITEM_FRAGMENT_N,
    TEXT_ITEM_FRAGMENT_L                = TEXT_ITEM_FRAGMENT_L,
    TEXT_ITEM_FRAGMENT_S                = TEXT_ITEM_FRAGMENT_S,
    TEXT_ITEM_FRAGMENT_D                = TEXT_ITEM_FRAGMENT_D,
    TEXT_ITEM_CIRCUIT_N                 = TEXT_ITEM_CIRCUIT_N,
    TEXT_ITEM_CIRCUIT_L                 = TEXT_ITEM_CIRCUIT_L,
    TEXT_ITEM_CIRCUIT_S                 = TEXT_ITEM_CIRCUIT_S,
    TEXT_ITEM_CIRCUIT_D                 = TEXT_ITEM_CIRCUIT_D,
    TEXT_ITEM_DICTIONARY_N              = TEXT_ITEM_DICTIONARY_N,
    TEXT_ITEM_DICTIONARY_L              = TEXT_ITEM_DICTIONARY_L,
    TEXT_ITEM_DICTIONARY_S              = TEXT_ITEM_DICTIONARY_S,
    TEXT_ITEM_DICTIONARY_D              = TEXT_ITEM_DICTIONARY_D,
    TEXT_ITEM_CRYSTAL_N                 = TEXT_ITEM_CRYSTAL_N,
    TEXT_ITEM_CRYSTAL_L                 = TEXT_ITEM_CRYSTAL_L,
    TEXT_ITEM_CRYSTAL_S                 = TEXT_ITEM_CRYSTAL_S,
    TEXT_ITEM_CRYSTAL_D                 = TEXT_ITEM_CRYSTAL_D,
    TEXT_ITEM_BYPASS_N                  = TEXT_ITEM_BYPASS_N,
    TEXT_ITEM_BYPASS_L                  = TEXT_ITEM_BYPASS_L,
    TEXT_ITEM_BYPASS_S                  = TEXT_ITEM_BYPASS_S,
    TEXT_ITEM_BYPASS_D                  = TEXT_ITEM_BYPASS_D,
    TEXT_ITEM_BOXA_N                    = TEXT_ITEM_BOXA_N,
    TEXT_ITEM_BOXA_L                    = TEXT_ITEM_BOXA_L,
    TEXT_ITEM_BOXA_S                    = TEXT_ITEM_BOXA_S,
    TEXT_ITEM_BOXA_D                    = TEXT_ITEM_BOXA_D,
    TEXT_ITEM_BOXB_N                    = TEXT_ITEM_BOXB_N,
    TEXT_ITEM_BOXB_L                    = TEXT_ITEM_BOXB_L,
    TEXT_ITEM_BOXB_S                    = TEXT_ITEM_BOXB_S,
    TEXT_ITEM_BOXB_D                    = TEXT_ITEM_BOXB_D,
    TEXT_ITEM_BOXC_N                    = TEXT_ITEM_BOXC_N,
    TEXT_ITEM_BOXC_L                    = TEXT_ITEM_BOXC_L,
    TEXT_ITEM_BOXC_S                    = TEXT_ITEM_BOXC_S,
    TEXT_ITEM_BOXC_D                    = TEXT_ITEM_BOXC_D,

    -- misc elements
    TEXT_DIALOGUE_RESEARCH              = TEXT_DIALOGUE_RESEARCH,
    TEXT_COST_UPGRADE                   = TEXT_COST_UPGRADE,
    TEXT_COST_POLICE                    = TEXT_COST_POLICE,
    TEXT_SCANNER_B                      = TEXT_SCANNER_B,
    TEXT_SCANNER_U                      = TEXT_SCANNER_U,
    TEXT_SCANNER_F                      = TEXT_SCANNER_F,
    TEXT_COMPUTER_B                     = TEXT_COMPUTER_B,
    TEXT_COMPUTER_U                     = TEXT_COMPUTER_U,
    TEXT_COMPUTER_F                     = TEXT_COMPUTER_F,
    TEXT_LOCATOR_B                      = TEXT_LOCATOR_B,
    TEXT_LOCATOR_U                      = TEXT_LOCATOR_U,
    TEXT_LOCATOR_F                      = TEXT_LOCATOR_F,
    TEXT_DISSONANT_B                    = TEXT_DISSONANT_B,
    TEXT_DISSONANT_U                    = TEXT_DISSONANT_U,
    TEXT_BOX_B                          = TEXT_BOX_B,
    TEXT_BOX_U                          = TEXT_BOX_U,
    TEXT_DICTIONARY_O                   = TEXT_DICTIONARY_O,
    TEXT_TREE_TITLE                     = TEXT_TREE_TITLE,
    TEXT_TREE_PAGE1                     = TEXT_TREE_PAGE1,
    TEXT_TREE_PAGE2                     = TEXT_TREE_PAGE2,
    TEXT_TREE_WARNING                   = TEXT_TREE_WARNING,
    TEXT_DIALOGUE_MEMORY                = TEXT_DIALOGUE_MEMORY,
    TEXT_REACTION_MEMORY                = TEXT_REACTION_MEMORY,

    -- player titles
    TEXT_TITLE_UNLOCK                   = TEXT_TITLE_UNLOCK,
    TEXT_TITLE_FORMAT_1                 = TEXT_TITLE_FORMAT_1,
    TEXT_TITLE_FORMAT_2                 = TEXT_TITLE_FORMAT_2,
    TEXT_TITLE_FORMAT_3                 = TEXT_TITLE_FORMAT_3,
    TEXT_TITLE_FORMAT_4                 = TEXT_TITLE_FORMAT_4,
    TEXT_TITLE_FORMAT_5                 = TEXT_TITLE_FORMAT_5,
    TEXT_TITLE_OWNED_1                  = TEXT_TITLE_OWNED_1,
    TEXT_TITLE_OWNED_2                  = TEXT_TITLE_OWNED_2,
    TEXT_TITLE_OWNED_3                  = TEXT_TITLE_OWNED_3,
    TEXT_TITLE_OWNED_4                  = TEXT_TITLE_OWNED_4,
    TEXT_TITLE_OWNED_5                  = TEXT_TITLE_OWNED_5,

    -- debug emotes
    TEXT_EMOTE_PLATING                  = TEXT_EMOTE_PLATING,
    TEXT_EMOTE_FRAGMENT                 = TEXT_EMOTE_FRAGMENT,
    TEXT_EMOTE_CIRCUIT                  = TEXT_EMOTE_CIRCUIT,

    -- wiki - navigation and credits
    TEXT_WIKI_BUTTON_MAIN               = TEXT_WIKI_BUTTON_MAIN,
    TEXT_WIKI_LABEL_MAIN                = TEXT_WIKI_LABEL_MAIN,
    TEXT_WIKI_BUTTON_QUEST              = TEXT_WIKI_BUTTON_QUEST,
    TEXT_WIKI_BUTTON_MEMORY             = TEXT_WIKI_BUTTON_MEMORY,
    TEXT_WIKI_BUTTON_ABOUT              = TEXT_WIKI_BUTTON_ABOUT,
    TEXT_WIKI_ABOUT_TITLE1              = TEXT_WIKI_ABOUT_TITLE1,
    TEXT_WIKI_ABOUT_ENTRY1              = TEXT_WIKI_ABOUT_ENTRY1,
    TEXT_WIKI_ABOUT_TITLE2              = TEXT_WIKI_ABOUT_TITLE2,
    TEXT_WIKI_ABOUT_ENTRY2              = TEXT_WIKI_ABOUT_ENTRY2,
    TEXT_WIKI_ABOUT_TITLE3              = TEXT_WIKI_ABOUT_TITLE3,
    TEXT_WIKI_ABOUT_ENTRY3              = TEXT_WIKI_ABOUT_ENTRY3,
    TEXT_WIKI_ABOUT_TITLE4              = TEXT_WIKI_ABOUT_TITLE4,
    TEXT_WIKI_ABOUT_ENTRY4              = TEXT_WIKI_ABOUT_ENTRY4,
    TEXT_WIKI_ABOUT_TITLE5              = TEXT_WIKI_ABOUT_TITLE5,
    TEXT_WIKI_ABOUT_ENTRY5              = TEXT_WIKI_ABOUT_ENTRY5,
    TEXT_WIKI_ABOUT_TITLE6              = TEXT_WIKI_ABOUT_TITLE6,
    TEXT_WIKI_ABOUT_ENTRY6              = TEXT_WIKI_ABOUT_ENTRY6,

    -- wiki - story elements
    TEXT_WIKI_QUEST_TITLE1              = TEXT_WIKI_QUEST_TITLE1,
    TEXT_WIKI_QUEST_ENTRY1              = TEXT_WIKI_QUEST_ENTRY1,
    TEXT_WIKI_QUEST_TITLE2              = TEXT_WIKI_QUEST_TITLE2,
    TEXT_WIKI_QUEST_ENTRY2              = TEXT_WIKI_QUEST_ENTRY2,
    TEXT_WIKI_QUEST_TITLE3              = TEXT_WIKI_QUEST_TITLE3,
    TEXT_WIKI_QUEST_ENTRY3              = TEXT_WIKI_QUEST_ENTRY3,
    TEXT_WIKI_QUEST_TITLE4              = TEXT_WIKI_QUEST_TITLE4,
    TEXT_WIKI_QUEST_ENTRY4              = TEXT_WIKI_QUEST_ENTRY4,
    TEXT_WIKI_QUEST_TITLE5              = TEXT_WIKI_QUEST_TITLE5,
    TEXT_WIKI_QUEST_ENTRY5              = TEXT_WIKI_QUEST_ENTRY5,
    TEXT_WIKI_QUEST_TITLE6              = TEXT_WIKI_QUEST_TITLE6,
    TEXT_WIKI_QUEST_ENTRY6              = TEXT_WIKI_QUEST_ENTRY6,
    TEXT_WIKI_QUEST_TITLE7              = TEXT_WIKI_QUEST_TITLE7,
    TEXT_WIKI_QUEST_ENTRY7              = TEXT_WIKI_QUEST_ENTRY7,
    TEXT_WIKI_MEMORY_ENTRY0             = TEXT_WIKI_MEMORY_ENTRY0,
    TEXT_WIKI_MEMORY_TITLE1             = TEXT_WIKI_MEMORY_TITLE1,
    TEXT_WIKI_MEMORY_ENTRY1             = TEXT_WIKI_MEMORY_ENTRY1,
    TEXT_WIKI_MEMORY_TITLE2             = TEXT_WIKI_MEMORY_TITLE2,
    TEXT_WIKI_MEMORY_ENTRY2             = TEXT_WIKI_MEMORY_ENTRY2,
    TEXT_WIKI_MEMORY_TITLE3             = TEXT_WIKI_MEMORY_TITLE3,
    TEXT_WIKI_MEMORY_ENTRY3             = TEXT_WIKI_MEMORY_ENTRY3,

    -- special overwrite
    UI_SETTLEMENT_LABEL                 = TEXT_MISSION_MAIN_EMPTY,

}



----------------------------------------------------------------------------------------------------
-- script data and functions
----------------------------------------------------------------------------------------------------

PREFIX = "FF_APOLLO"
SUFFIX = "English"

--------------------------------------------------
-- data for AMUMMS
--------------------------------------------------

-- path to Debug global file
FILE_GLOBAL_DEBUGOPTIONS = "GCDEBUGOPTIONS.GLOBAL.MBIN"

-- link to new localization file
PROPERTY_DEBUG_LOCFILE =
[[
<Property value="NMSString0x20.xml">
    <Property name="Value" value="]]..PREFIX..[[" />
</Property>
]]

-- path to custom localization file
FILE_LANG_APOLLO = "LANGUAGE\\" .. PREFIX .. "_" .. SUFFIX .. ".EXML"

-- fix for typo in LAS localization file name
if SUFFIX == "LatinAmericanSpanish" then
FILE_LANG_APOLLO = "LANGUAGE\\" .. PREFIX .. "_LATINAMERAICANSPANISH.EXML"
end

--------------------------------------------------
-- function to build the text entries
--------------------------------------------------

function BuildTextProperty(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="]]..id..[[" />
    <Property name="]]..SUFFIX..[[" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
    </Property>
</Property>
]]
end

--------------------------------------------------
-- function to build the localization file
--------------------------------------------------

function BuildLocFile(list)
    local FileStart = [[<?xml version="1.0" encoding="utf-8"?><Data template="TkLocalisationTable"><Property name="Table">]]
    local FileEnd = [[</Property></Data>]]
    local FileTable = {}
    for id,value in pairs(list) do
        FileTable[#FileTable+1] = BuildTextProperty(id,value)
    end
    return FileStart .. table.concat(FileTable) .. FileEnd
end



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

    ["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = FILE_LANG_APOLLO,
			["FILE_CONTENT"] = BuildLocFile(LIST),
		},		
	},

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_GLOBAL_DEBUGOPTIONS,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PKW"] = "LocTableList",
                            ["ADD"] = PROPERTY_DEBUG_LOCFILE,
                        },
                    },
                },
            }
        }
    },
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------