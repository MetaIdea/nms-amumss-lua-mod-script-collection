ModName = "PTSd UI Description Adjustments"
GameVersion = "6_17"
Description = "Changes the UI display for things like Settlement Production rate, Crop Growth time (in the construction menu), Tech descriptions, etc. to match the adjusted PTSd rates"

--[[
NOTE: When using a computer set to a language other than English, PTSd's edits to the names & descriptions for vanilla items/technologies/difficulty settings will not be displayed by default. 
These edits make the descriptions display accurate info for the changes that PTSd makes, as well as giving more context and tips for using PTSd, especially for the Difficulty Setting descriptions.

If you want to see the accurate info and added context / tips (in English), you can force them to display even when using other language settings by following these instructions
(This example is for Japanese, for other languages see the list below):

0.	Download AMUMSS if you do not already have it (instructions on downloading & using AMUMSS here: https://www.nexusmods.com/nomanssky/mods/2626 )
1.	Open the PTSd UI Description Adjustments.lua file in the PTSd Miscellaneous module with any text editor (such as Notepad or Notepad++)
2.	Do a Find & Replace (ctrl-h on Windows) Replace All from 		ENGLISH.MBIN	 to 	JAPANESE.MBIN
3.	Also do a Replace All from 		"English"	 to 	"Japanese"		 (do include the quotation marks "")
4.	Recompile the PTSd Miscellaneous module as a Combined Mod with AMUMSS by placing it in AMUMSS' ModScript folder and running BUILDMOD.bat
Then just use the resulting edited PTSd Miscellaneous module in place of the original one, and PTSd's edits to vanilla text should display when using that language setting.

List of terms to use in steps 2. & 3. instead of JAPANESE.MBIN / "Japanese" for other languages:
ENGLISH.MBIN		"English"
FRENCH.MBIN			"French"
ITALIAN.MBIN		"Italian"
GERMAN.MBIN			"German"
SPANISH.MBIN		"Spanish"
RUSSIAN.MBIN		"Russian"
POLISH.MBIN			"Polish"
DUTCH.MBIN			"Dutch"
PORTUGUESE.MBIN		"Portuguese"
LATINAMERICANSPANISH.MBIN		"LatinAmericanSpanish"
BRAZILIANPORTUGUESE.MBIN	"BrazilianPortuguese"
SIMPLIFIEDCHINESE.MBIN		"SimplifiedChinese"
TRADITIONALCHINESE.MBIN		"TraditionalChinese"
TENCENTCHINESE.MBIN		"TencentChinese"
KOREAN.MBIN			"Korean"
JAPANESE.MBIN		"Japanese"
USENGLISH.MBIN		"USEnglish"
]]

AnalysisVisorDesc =
[[Specialist &lt;TECHNOLOGY&gt;Discovery&lt;&gt; and &lt;TECHNOLOGY&gt;Survey&lt;&gt; unit.&#xA;&#xA;Augments standard &lt;TECHNOLOGY&gt;Scanner&lt;&gt; capabilities by projecting detailed environmental data directly over the user's visor. Allows the identification of &lt;STELLAR&gt;distant points of interest&lt;&gt;.&#xA;&#xA;The Visor will generate &lt;COMMODITY&gt;valuable data&lt;&gt; when used to study &lt;TRADEABLE&gt;flora&lt;&gt;, &lt;FUEL&gt;fauna&lt;&gt; and &lt;TECHNOLOGY&gt;minerals&lt;&gt;.&#xA;&lt;HIGHLIGHT&gt;This data's value&lt;&gt; is further boosted by the &lt;CATALYST&gt;Scanning&lt;&gt; stat bonus for your Multi-Tool's type.&#xA;&#xA;Hold &lt;IMG&gt;AIM&lt;&gt; to operate. Press &lt;IMG&gt;ZOOM&lt;&gt; to zoom.]]

AnalysisVisorDescVR =
[[Specialist &lt;TECHNOLOGY&gt;Discovery&lt;&gt; and &lt;TECHNOLOGY&gt;Survey&lt;&gt; unit.&#xA;Augments standard &lt;TECHNOLOGY&gt;Scanner&lt;&gt; capabilities by projecting detailed environmental data directly over the user's visor. Allows the identification of &lt;STELLAR&gt;distant points of interest&lt;&gt;.&#xA;&#xA;The Visor will generate &lt;COMMODITY&gt;valuable data&lt;&gt; when used to study &lt;TRADEABLE&gt;flora&lt;&gt;, &lt;FUEL&gt;fauna&lt;&gt; and &lt;TECHNOLOGY&gt;minerals&lt;&gt;.&#xA;&lt;HIGHLIGHT&gt;This data's value&lt;&gt; is further boosted by the &lt;CATALYST&gt;Scanning&lt;&gt; stat bonus for your Multi-Tool's type.&#xA;&#xA;Hold &lt;IMG&gt;AIM&lt;&gt; to operate.]]

MiningBeamDesc =
[[Multi-Tool &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt; powered by &lt;FUEL&gt;Carbon-based Elements&lt;&gt; or &lt;RED&gt;Phosphorus&lt;&gt;. Fire the beam with &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Installs focusing optics within the Multi-Tool, allowing it to emit a &lt;STELLAR&gt;high-energy beam&lt;&gt;. The beam is calibrated to excite molecules within common &lt;STELLAR&gt;organic or geological objects&lt;&gt;, allowing it to operate as a highly effective mining device.&#xA;&#xA;The &lt;HIGHLIGHT&gt;substance yield&lt;&gt; is further boosted by the &lt;TECHNOLOGY&gt;Mining&lt;&gt; stat bonus for your Multi-Tool's type.&#xA;&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: Destruction of flora, fauna or minerals may attract Sentinel attention.]]

HijackedLaserDesc =
[[&lt;FUEL&gt;NOTE&lt;&gt;: To be used &lt;STELLAR&gt;instead of&lt;&gt; the default Mining Beam, not in addition to it.&#xA;This Multi-Tool is made with material and methods known to no conventional manufacturer, its core a unfathomable array of impossible optics and glassy foam. Nonetheless, there is a layer of recogniseable technology. It shows signs of having been &lt;STELLAR&gt;tampered with&lt;&gt; by an unknown craftsman, who has repurposed its scanner array into a &lt;HIGHLIGHT&gt;high-powered mining laser&lt;&gt; capable of &lt;STELLAR&gt;destroying objects&lt;&gt; faster than any other tool and even &lt;SPECIAL&gt;damaging enemies&lt;&gt; on par with conventional weapons.&#xA;&#xA;However, its chaotic nature yields &lt;FUEL&gt;less substances per object&lt;&gt;, &lt;FUEL&gt;heats up faster&lt;&gt;, and &lt;FUEL&gt;consumes more fuel&lt;&gt; than standard &lt;TECHNOLOGY&gt;Mining Lasers&lt;&gt;.&#xA;&#xA;The &lt;HIGHLIGHT&gt;substance yield&lt;&gt; is further boosted by the &lt;TECHNOLOGY&gt;Mining&lt;&gt; stat bonus for your Multi-Tool's type. Powered by &lt;FUEL&gt;Carbon-based Elements&lt;&gt; or &lt;RED&gt;Phosphorus&lt;&gt;. Fire the beam with &lt;IMG&gt;ATTACK&lt;&gt;.]]

RunicLensDesc =
[[&lt;FUEL&gt;NOTE&lt;&gt;: To be used &lt;STELLAR&gt;instead of&lt;&gt; the default Mining Beam, not in addition to it.&#xA;The geometric heart of this ancient weapon is the &lt;TECHNOLOGY&gt;Runic Lens&lt;&gt;. Its impossible geometry not only concentrates light into a high-powered &lt;TECHNOLOGY&gt;Mining Laser&lt;&gt;, but can also warp the local electromagnetic field so as to render the user &lt;STELLAR&gt;invisible&lt;&gt;.&#xA;&#xA;Yields &lt;HIGHLIGHT&gt;much more substances per object&lt;&gt; and &lt;TRADE&gt;heats up slower&lt;&gt;, but &lt;FUEL&gt;mines objects slower&lt;&gt; than standard &lt;TECHNOLOGY&gt;Mining Lasers&lt;&gt;.&#xA;&#xA;The &lt;HIGHLIGHT&gt;substance yield&lt;&gt; is further boosted by the &lt;TECHNOLOGY&gt;Mining&lt;&gt; stat bonus for your Multi-Tool's type. Powered by &lt;FUEL&gt;Carbon-based Elements&lt;&gt; or &lt;RED&gt;Phosphorus&lt;&gt;. Fire the beam with &lt;IMG&gt;ATTACK&lt;&gt;. Select its secondary cloaking function with &lt;IMG&gt;CYCLEALTWEAPON&lt;&gt; and hold &lt;IMG&gt;ALTATTACK&lt;&gt; to activate. ]]

AnimusBeamDesc =
[[A unique overload to the Multi-Tool's standard mining laser. Beam frequency is modulated precisely in a feedback loop with the delta-waves generated by the impact target.&#xA;&#xA;Recordings of the target's experiences are thus etched into tiny fragments of metal and rendered as &lt;STELLAR&gt;Fragmented Qualia&lt;&gt;. Readability of collected fragments is not guaranteed.&#xA;The substance yield is further boosted by the &lt;TECHNOLOGY&gt;Mining&lt;&gt; stat bonus for your Multi-Tool's type.]]

MinotaurLaserDesc =
[[A mounted laser system specifically designed for the &lt;STELLAR&gt;Minotaur Heavy Exosuit Hybrid&lt;&gt;, even &lt;TECHNOLOGY&gt;slightly more powerful&lt;&gt; than those found on most other Exocraft.&#xA;&#xA;Enables conventional mining operations. Normally ineffective in combat scenarios.]]

ThethysBeamDesc =
[[A mounted laser system specifically designed for the &lt;STELLAR&gt;Nautilon Submarine&lt;&gt;, &lt;HIGHLIGHT&gt;much more powerful&lt;&gt; than those found on any other Exocraft by default. However its precise construction prevents it from being modified with &lt;HIGHLIGHT&gt;upgrade modules&lt;&gt; to further improve its performance like &lt;TECHNOLOGY&gt;other Exocraft Mining Lasers&lt;&gt; can.&#xA;&#xA;Fires a concentrated plasma beam towards the intended target, which is then ignited. Such a trigger mechanism allows the use of high-energy optical mining systems in a liquid medium.]]

HazardProtectDesc =
[[The Exosuit's &lt;CATALYST&gt;Hazard Protection&lt;&gt; system continually monitors and stabilises the user's environment. &#xA;&#xA;General reactive protection may be augmented with &lt;TECHNOLOGY&gt;Environmental Shields&lt;&gt;, offering increased protection against specific conditions. Additionally, riding in the cockpit of any &lt;TECHNOLOGY&gt;Exocraft&lt;&gt; will provide &lt;TRADE&gt;significant&lt;&gt; environmental protection, &lt;HIGHLIGHT&gt;tripling&lt;&gt; hazard survival times.&#xA;&#xA;The device is charged with &lt;CATALYST&gt;sodium-based substances&lt;&gt; or &lt;CATALYST&gt;Ion Batteries&lt;&gt;. User is advised that a failure to charge the Hazard Protection system may allow their environment to become incompatible with life.]]

VesperSailDesc =
[[A high-performance &lt;STELLAR&gt;solar sail&lt;&gt;, deployed automatically during flight. This advanced &lt;TECHNOLOGY&gt;propulsion device&lt;&gt; generates an electric field within the sails themselves, allowing the starship to build momentum from the solar wind when pulsing.&#xA;&#xA;Offers substantial gains in &lt;STELLAR&gt;fuel efficiency&lt;&gt; and &lt;STELLAR&gt;Pulse Jump speed&lt;&gt; performance over standard engine systems, as well as the photovoltaic cells enabling more &lt;STELLAR&gt;efficient&lt;&gt; use of the starship's &lt;TECHNOLOGY&gt;launch systems&lt;&gt;.&#xA;&#xA;&lt;FUEL&gt;However&lt;&gt;, when not shielded by the &lt;STELLAR&gt;Pulse Jump&lt;&gt; corona effect, the sails collect stray tachyons which slightly &lt;FUEL&gt;reduces&lt;&gt; &lt;STELLAR&gt;Boosting speed&lt;&gt;, especially when &lt;COMMODITY&gt;supercharged&lt;&gt;. This &lt;FUEL&gt;slowdown effect&lt;&gt; becomes even smaller with enough bonuses to &lt;STELLAR&gt;Boosting speed&lt;&gt;, such as from &lt;HIGHLIGHT&gt;upgrade modules&lt;&gt;.]]

PulseEngineDesc =
[[Spaceflight propulsion, boosts and on-demand Pulse Jumps through local system.&#xA; &#xA;User is advised that &lt;EXOTIC&gt;Tritium&lt;&gt; or &lt;TECHNOLOGY&gt;Pyrite&lt;&gt; is required to charge Pulse Engine. Tritium is abundant in &lt;COMMODITY&gt;near-space asteroid fields&lt;&gt;. Locate Tritium with the starship scanner (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;&#xA;Hold &lt;IMG&gt;PULSEJUMP&lt;&gt; to engage Pulse Jump.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: With enough bonuses to &lt;TECHNOLOGY&gt;Boost Speed&lt;&gt;, any type of starship can eventually become fast enough to outrun even the fastest enemies in space.]]

LuminanceEnigineDesc =
[[Aligns the ship's electromagnetic emissions with &lt;FUEL&gt;A T L A S&lt;&gt; waves, providing &lt;STELLAR&gt;highly maneuverable&lt;&gt; propulsion capability as well as Pulse Jump speed and efficiency &lt;STELLAR&gt;slightly above&lt;&gt; standard starships.&#xA; &#xA;The sub-light drive hungers for &lt;EXOTIC&gt;tritium&lt;&gt; or &lt;SPECIAL&gt;radiant shards&lt;&gt;.&#xA;&#xA;Hold &lt;IMG&gt;PULSEJUMP&lt;&gt; to engage Pulse Jump.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.]]

LauncherDesc =
[[Vital launch and landing gear system, can also &lt;HIGHLIGHT&gt;summon&lt;&gt; your starship at &lt;STELLAR&gt;double&lt;&gt; normal launch cost.&#xA;&#xA;User is advised that &lt;TECHNOLOGY&gt;specialised fuel&lt;&gt; or &lt;CATALYST&gt;Uranium&lt;&gt; is required to recharge thruster. Launch procedures require sufficient fuel levels before activation.&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: &lt;HIGHLIGHT&gt;Supercharging&lt;&gt; the core &lt;TECHNOLOGY&gt;Launch Thruster&lt;&gt; tech &lt;FUEL&gt;increases&lt;&gt; launch cost due to negative high-voltage interactions.&#xA;&#xA;&lt;SPECIAL&gt;Interceptors&lt;&gt; only spend &lt;STELLAR&gt;80%&lt;&gt; of usual Launch costs,&#xA;&lt;HIGHLIGHT&gt;Solar Ships&lt;&gt; only spend &lt;STELLAR&gt;75%&lt;&gt; of usual Launch costs,&#xA;&lt;TRADE&gt;Shuttles&lt;&gt; only spend &lt;STELLAR&gt;66%&lt;&gt; of usual Launch costs,&#xA;&lt;TECHNOLOGY&gt;Explorers&lt;&gt; only spend &lt;STELLAR&gt;50%&lt;&gt; of usual Launch costs&#xA;&lt;STELLAR&gt;Corvettes&lt;&gt; spend &lt;STELLAR&gt;140%&lt;&gt; of usual Launch costs by default.&#xA;&#xA;Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.]]

CorvetteCockpitDesc =
[[The core command-and-control centre for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, housing both pilot and vital avionics systems.&#xA;The size of Corvettes make them &lt;FUEL&gt;initially slower and less efficient&lt;&gt; than typical starships, however installing enough appropriate &lt;STELLAR&gt;Corvette modules&lt;&gt; and &lt;HIGHLIGHT&gt;standard upgrades&lt;&gt; can allow them to match or &lt;TRADE&gt;exceed&lt;&gt; the performance of many starships in some aspects.&#xA;&#xA;Assemble a corvette at the dedicated &lt;TECHNOLOGY&gt;Corvette Workshop&lt;&gt; aboard any Space Station.]]

CorvetteCockpitAltDesc =
[[The core command-and-control centre for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, housing both pilot and vital avionics systems.&#xA;The size of Corvettes make them &lt;FUEL&gt;initially slower and less efficient&lt;&gt; than typical starships, however installing enough appropriate &lt;STELLAR&gt;Corvette modules&lt;&gt; and &lt;HIGHLIGHT&gt;standard upgrades&lt;&gt; can allow them to match or &lt;TRADE&gt;exceed&lt;&gt; the performance of many starships in some aspects.]]

CorvetteLandingOtherDesc =
[[An advanced landing system for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship. Capable of providing a stable planetary anchor on rough terrain, as well as interfacing with all standard interstellar docks.&#xA;The base launch cost is &lt;FUEL&gt;too high&lt;&gt; to allow &lt;TECHNOLOGY&gt;summoning&lt;&gt; by default, but can be greatly lowered by installing additional &lt;STELLAR&gt;landing gear&lt;&gt; or &lt;STELLAR&gt;Azimuth-Class Reactors&lt;&gt;&#xA;&#xA;Assemble a corvette at the dedicated &lt;TECHNOLOGY&gt;Corvette Workshop&lt;&gt; aboard any Space Station.]]

CorvetteLandingDesc =
[[An advanced landing system for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, compatible with both standard interstellar docks and planetary descents alike.&#xA;The base launch cost is &lt;FUEL&gt;too high&lt;&gt; to allow &lt;TECHNOLOGY&gt;summoning&lt;&gt; by default, but can be greatly lowered by installing additional &lt;STELLAR&gt;landing gear&lt;&gt; or &lt;STELLAR&gt;Azimuth-Class Reactors&lt;&gt;&#xA;&#xA;Assemble a corvette at the dedicated &lt;TECHNOLOGY&gt;Corvette Workshop&lt;&gt; aboard any Space Station.]]

CorvetteLandingAltDesc =
[[An advanced landing system for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, compatible with both standard interstellar docks and planetary descents alike.&#xA;The base launch cost is &lt;FUEL&gt;too high&lt;&gt; to allow &lt;TECHNOLOGY&gt;summoning&lt;&gt; by default, but can be greatly lowered by installing additional &lt;STELLAR&gt;landing gear&lt;&gt; or &lt;STELLAR&gt;Azimuth-Class Reactors&lt;&gt;]]

CorvetteHabDesc =
[[The main living area for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, providing space for passengers as well as installable utility modules.&#xA;The size and weight &lt;FUEL&gt;reduces speed and handling&lt;&gt;, but only up to a point.&#xA;&#xA;Assemble a corvette at the dedicated &lt;TECHNOLOGY&gt;Corvette Workshop&lt;&gt; aboard any Space Station.]]

CorvetteHabAltDesc =
[[The main living area for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, providing space for passengers as well as installable utility modules.&#xA;The size and weight &lt;FUEL&gt;reduces speed and handling&lt;&gt;, but only up to a point.]]

CorvetteWalkwayDesc =
[[A compact-sized living area for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, providing space for passengers as well as installable utility modules.&#xA;The size and weight &lt;FUEL&gt;reduces speed and handling&lt;&gt;, but only up to a point.&#xA;&#xA;Assemble a corvette at the dedicated &lt;TECHNOLOGY&gt;Corvette Workshop&lt;&gt; aboard any Space Station.]]

CorvetteWalkwayAltDesc =
[[A compact-sized living area for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, providing space for passengers as well as installable utility modules.&#xA;The size and weight &lt;FUEL&gt;reduces speed and handling&lt;&gt;, but only up to a point.]]

CorvetteShieldGenDesc =
[[A multi-purpose generator system for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, it both strengthens shields and can amplify other ship systems, although it shares the same power grid as Corvette weapon array platforms.&#xA;As with all bonuses to ship shield strength, there are &lt;FUEL&gt;diminishing returns&lt;&gt; the more the shields are already boosted above their base strength.&#xA;&#xA;Assemble a corvette at the dedicated &lt;TECHNOLOGY&gt;Corvette Workshop&lt;&gt; aboard any Space Station.]]

CorvetteShieldGenAltDesc =
[[A multi-purpose generator system for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship, it both strengthens shields and can amplify other ship systems, although it shares the same power grid as Corvette weapon array platforms.&#xA;As with all bonuses to ship shield strength, there are &lt;FUEL&gt;diminishing returns&lt;&gt; the more the shields are already boosted above their base strength.]]

CorvetteWeaponDesc =
[[A dedicated weapon platform for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship.&#xA;Can more than &lt;HIGHLIGHT&gt;double&lt;&gt; the DPS for the relevant weapon with 5 modules installed. However, not only do they they share the same power grid as Corvette shield generators, each installed weapon platform &lt;FUEL&gt;slightly reduces shield strength&lt;&gt; due to the power draw.&#xA;&#xA;Assemble a corvette at the dedicated &lt;TECHNOLOGY&gt;Corvette Workshop&lt;&gt; aboard any Space Station.]]

CorvetteWeaponAltDesc =
[[A dedicated weapon platform for a &lt;STELLAR&gt;Corvette&lt;&gt;-class starship.&#xA;Can more than &lt;HIGHLIGHT&gt;double&lt;&gt; the DPS for the relevant weapon with 5 modules installed. However, not only do they they share the same power grid as Corvette shield generators, each installed weapon platform &lt;FUEL&gt;slightly reduces shield strength&lt;&gt; due to the power draw.]]

CorvetteTradeAdvancedParts =
[[Trade advanced modules, at a loss]]

--Note, the description for the Anti-Gravity Well appears to be hardcoded and unable to actually be changed
AntiGravWellDesc =
[[Gently detaches the starship from gravitational fields, lifting it toward the stars. Can also &lt;HIGHLIGHT&gt;summon&lt;&gt; your starship at &lt;STELLAR&gt;double&lt;&gt; normal launch cost.&#xA;Being more efficient than many &lt;TECHNOLOGY&gt;conventional&lt;&gt; starships, it spends only &lt;STELLAR&gt;80%&lt;&gt; of the usual launch costs.&#xA;&#xA;The well hungers for &lt;SPECIAL&gt;pugneum&lt;&gt; or &lt;SPECIAL&gt;radiant shards&lt;&gt;, and must be sufficiently fueled before launch.&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: &lt;HIGHLIGHT&gt;Supercharging&lt;&gt; the core &lt;TECHNOLOGY&gt;Anti-Gravity Well&lt;&gt; tech &lt;FUEL&gt;increases&lt;&gt; launch cost due to negative high-voltage interactions.&#xA; &#xA;Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.]]

NeuralAssemblyDesc =
[[An array of distributed neurons, fused to a board of metallic strands. Complex patterns of electrical impulses weave their way across the surface, knotting each ship system together. Can also &lt;HIGHLIGHT&gt;summon&lt;&gt; your starship at &lt;STELLAR&gt;double&lt;&gt; normal launch cost.&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: &lt;HIGHLIGHT&gt;Supercharging&lt;&gt; the core &lt;TECHNOLOGY&gt;Neural Assembly&lt;&gt; tech &lt;FUEL&gt;increases&lt;&gt; launch cost due to negative high-voltage interactions.&#xA; &#xA;Hold &lt;IMG&gt;THRUST&lt;&gt; to inquire if the ship would like to take off.]]

EffThrustersDesc =
[[Upgrades the starship launch systems, decreasing the &lt;STELLAR&gt;fuel cost&lt;&gt; of takeoff.&#xA;&#xA;For &lt;TECHNOLOGY&gt;conventionally&lt;&gt; constructed starships, this tech by itself is enough to launch at least &lt;STELLAR&gt;1 additional&lt;&gt; time per refueling. &lt;HIGHLIGHT&gt;Supercharging&lt;&gt; this tech or installing additional &lt;HIGHLIGHT&gt;upgrade modules&lt;&gt; will further decrease fuel costs and potentially allow for even more launches per refueling.]]

ScreamSuppDesc =
[[This small extension to the ship's automated defense network appears to be its own autonomous organism. A small mouth in the centre of its flesh hungers for &lt;SPECIAL&gt;Pugneum&lt;&gt;, &lt;SPECIAL&gt;Mordite&lt;&gt;, &lt;TECHNOLOGY&gt;Di-Hydrogen&lt;&gt;, or &lt;HIGHLIGHT&gt;Starshield Batteries&lt;&gt;.&#xA;&#xA;During combat, it seems to hijack the neurological array and prevent fear or pain from traumatising the rest of the ship's body.]]

AeronShieldDesc =
[[A defensive crimson cocoon, obfuscating the ship's physical form and providing protection from collision and laser fire.&#xA;&#xA;The core self-heals over time, but may be quickly replenished with &lt;CATALYST&gt;Sodium Nitrate&lt;&gt;, &lt;SPECIAL&gt;Radiant Shards&lt;&gt;, or &lt;HIGHLIGHT&gt;Starshield Batteries&lt;&gt;.]]

DeflectShieldDesc =
[[Energy shield that protects spacecraft from laser fire, in-flight projectiles and accidental space debris interaction.&#xA;&#xA;User is advised that &lt;CATALYST&gt;catalytic elements&lt;&gt; or &lt;HIGHLIGHT&gt;Starshield Batteries&lt;&gt; are required to recharge device.&#xA;&#xA;Operates automatically once constructed within user's starship inventory.]]

PulsingHeartDesc =
[[A fibrous metallic superstructure binds this warm and vital organ with the core of the ship. Without it, the ship would be nothing, a lifeless husk.&#xA;Has superior &lt;STELLAR&gt;Pulse Jump speed&lt;&gt; performance compared to standard starship engines, at least &lt;TECHNOLOGY&gt;non-amplified&lt;&gt; ones.&#xA;&#xA;Hold &lt;IMG&gt;PULSEJUMP&lt;&gt; to ask the heart to initiate a Pulse Jump.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to request a speed boost.]]

RocketLauncherDesc =
[[A &lt;TECHNOLOGY&gt;long range&lt;&gt; starship weapon, capable of delivering a highly explosive torpedo across massive distances with a very high &lt;STELLAR&gt;critical hit&lt;&gt; damage multiplier and easy to aim.&#xA;&#xA;Note: explosive damage is &lt;STELLAR&gt;highly effective&lt;&gt; against &lt;STELLAR&gt;unshielded&lt;&gt; targets, but &lt;TITLE&gt;ineffective&lt;&gt; against &lt;TITLE&gt;shielded&lt;&gt; targets.&#xA;&#xA;Use &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to change weapon mode. Press &lt;IMG&gt;SHIPFIRE&lt;&gt; to fire.]]

LargeRocketTubesDesc =
[[Expands the loading chamber of the starship &lt;TECHNOLOGY&gt;Rocket Launcher&lt;&gt;, improving payload size and allowing for significantly higher &lt;STELLAR&gt;damage&lt;&gt;.]]

PhaseBeamDesc =
[[A &lt;TECHNOLOGY&gt;high-energy beam weapon&lt;&gt; for ship-to-ship combat. &#xA;&#xA;Though vulnerable to &lt;FUEL&gt;overheating&lt;&gt;, these highly accurate laser weapons can &lt;STELLAR&gt;recharge the users's shields&lt;&gt; by leeching energy from target shield systems. Shield leech effect is relatively &lt;STELLAR&gt;stronger&lt;&gt; the higher the user's &lt;STELLAR&gt;maximum shield capacity&lt;&gt; is.&#xA;&#xA;Use &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to change weapon mode. Press &lt;IMG&gt;SHIPFIRE&lt;&gt; to fire.]]

GraftedEyesDesc =
[[A complex arrangement of membranes and lens, fused atop a high-energy laser array. Incineration awaits those that meet their stare.&#xA;Press &lt;IMG&gt;SHIPFIRE&lt;&gt; request the eyes gaze upon nearby targets and &lt;STELLAR&gt;recharge its own shields&lt;&gt; by leeching energy from target shield systems. Shield leech effect is relatively &lt;STELLAR&gt;stronger&lt;&gt; the higher the user's &lt;STELLAR&gt;maximum shield capacity&lt;&gt; is.]]

PhotonCannonDesc =
[[A destructive &lt;TECHNOLOGY&gt;starship projectile launcher&lt;&gt; with a high &lt;STELLAR&gt;critical hit&lt;&gt; damage multiplier and easy to aim, the weapons system of choice for the interstellar trader and pirate alike. Equally effective against both &lt;CATALYST&gt;Shields&lt;&gt; and &lt;TECHNOLOGY&gt;Hulls&lt;&gt;.&#xA;&#xA;Use &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to change weapon mode. Press &lt;IMG&gt;SHIPFIRE&lt;&gt; to fire.]]

SpewVentsDesc =
[[A mess of sacs and sphincters, these vents generate and expel globules of plasma. When fused to the weapon systems of the ship, these are super-heated and then expelled at high-pressure, outputting more damage than a conventional &lt;TECHNOLOGY&gt;Photon Cannon&lt;&gt;. With a high &lt;STELLAR&gt;critical hit&lt;&gt; damage multiplier and easy to aim, they are equally effective against both &lt;CATALYST&gt;Shields&lt;&gt; and &lt;TECHNOLOGY&gt;Hulls&lt;&gt;.&#xA;&#xA;Press &lt;IMG&gt;SHIPFIRE&lt;&gt; to ask if the ship would direct its vents towards the current target.]]

SentinelCannonDesc =
[[Sentinel-grade weapons system, engineered for the singular purpose of annihilating rogue ships in violation of system regulations.  With a high &lt;STELLAR&gt;critical hit&lt;&gt; damage multiplier and easy to aim, it's equally effective against both &lt;CATALYST&gt;Shields&lt;&gt; and &lt;TECHNOLOGY&gt;Hulls&lt;&gt;.&#xA;&#xA;While initially slightly weaker than the &lt;TECHNOLOGY&gt;Photon Cannon&lt;&gt;, it gains more benefit from &lt;STELLAR&gt;upgrade modules&lt;&gt; and so can can eventually &lt;HIGHLIGHT&gt;surpass&lt;&gt; its damage output with enough upgrades installed.&#xA;&#xA;Press &lt;IMG&gt;SHIPFIRE&lt;&gt; to administer lethal force.]]

MountedFlameDesc =
[[A mounted &lt;STELLAR&gt;flamethrower&lt;&gt; specifically designed for the &lt;TECHNOLOGY&gt;Exocraft&lt;&gt;. Causes significant damage at close range, and can be greatly improved with &lt;STELLAR&gt;upgrade modules&lt;&gt;.&#xA;&#xA;Use &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to cycle available weapon modes.]]

PositronEjectorDesc =
[[A powerful starship weapon, capable of delivering &lt;STELLAR&gt;extreme destruction&lt;&gt; at &lt;TECHNOLOGY&gt;close range&lt;&gt;. Recovers from heat buildup faster by intentionally &lt;FUEL&gt;overheating&lt;&gt; rather than allowing to cool normally. &#xA;&#xA;Note: these particles show &lt;TITLE&gt;decreased effectiveness&lt;&gt; against shielded targets.&#xA;&#xA;Use &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to change weapon mode. Press &lt;IMG&gt;SHIPFIRE&lt;&gt; to fire.]]

BoltcasterDesc =
[[Generalist weapon attachment for the &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; with a high &lt;STELLAR&gt;critical hit&lt;&gt; damage multiplier. Access fire mode by pressing &lt;IMG&gt;CYCLEWEAPON&lt;&gt; and fire weapon with &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;The &lt;TECHNOLOLY&gt;Boltcaster&lt;&gt; reconfigures the Multi-Tool to supercharge &lt;EARTH&gt;Metallic Elements&lt;&gt;, firing them as &lt;STELLAR&gt;high-velocity projectiles&lt;&gt; capable of causing extreme damage.]]

CargoScanDefDesc =
[[A specially tuned resonance jammer, designed to interfere with the remote &lt;STELLAR&gt;cargo scans&lt;&gt; deployed by system authorities in the search for &lt;SPECIAL&gt;smuggled goods&lt;&gt;, or by &lt;FUEL&gt;pirates&lt;&gt; searching for valuable cargo.&#xA;&#xA;Deploy from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;) while a scan is in progress to deflect the probe. Note: jamming is not 100% effective.&#xA;&#xA;Can be useful to bind to a hotkey to activate quickly, multiple times per scan attempt.]]

NeuralShieldDesc =
[[A beautiful living weave of nanotubes, laced through the vessel's neural assembly. This structure can be energised as the ship deems fit, creating a field that &lt;STELLER&gt;blocks&lt;&gt; hostile &lt;STELLAR&gt;cargo probes&lt;&gt; by either system authorities or &lt;FUEL&gt;pirates&lt;&gt;.&#xA;&#xA;Use the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;) while a scan is in progress to ask that the ship might block the scan.&#xA;&#xA;Can be useful to bind to a hotkey to activate quickly, multiple times per scan attempt.]]

TeleportReceiver =
[[A device that modulates standard starship communication signals to &lt;TECHNOLOGY&gt;enable the transport of matter&lt;&gt; as well as data.&#xA;&#xA;Starships fitted with such a device can send and receive products and substances to a user's exosuit over a &lt;VAL_ON&gt;long distance&lt;&gt;, up to &lt;STELLAR&gt;800u&lt;&gt; away.]]

GraspingTendrils =
[[Filaments of sinew and neuron warp and weave across the ship, their complex geometry darting between the visible world and some unfathomable dimension beyond.&#xA;&#xA;These tendrils reach across time and space, searching out a &lt;TECHNOLOGY&gt;long-distance link&lt;&gt; between the vessel and their target's Exosuit inventory, up to an additional &lt;STELLAR&gt;800u&lt;&gt; away, &lt;HIGHLIGHT&gt;stacking&lt;&gt; with the &lt;TECHNOLOGY&gt;Teleport Receiver&lt;&gt; if also installed.]]

EmerilDriveDesc =
[[Upgrades the hyperdrive's shield integrity, preventing reality glitches when attempting to reach rare-class &lt;TRADEABLE&gt;green&lt;&gt; or &lt;FUEL&gt;red&lt;&gt; &lt;TRADEABLE&gt;stellar bodies&lt;&gt;.&#xA;&#xA;User is advised to access Hyperdrive systems via the &lt;VAL_ON&gt;Galactic Map&lt;&gt;.]]

IndiumDriveDesc =
[[Upgrades the hyperdrive's computational matrix,  preventing temporal anomalies when attempting to reach rare-class &lt;TECHNOLOGY&gt;blue&lt;&gt;, &lt;TRADEABLE&gt;green&lt;&gt;, or &lt;FUEL&gt;red&lt;&gt; &lt;TECHNOLOGY&gt;stellar bodies&lt;&gt;.&#xA;&#xA;User is advised to access Hyperdrive systems via the &lt;VAL_ON&gt;Galactic Map&lt;&gt;.]]

DreamsDeep3Msg4 =
[[Purchase the &lt;TECHNOLOGY&gt;High-Power Sonar&lt;&gt; blueprints from aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;, then install it in the Nautilon.&#xA;Access the Nautilon's inventory and craft in an empty slot with &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Pin the blueprint recipe for detailed instructions with &lt;IMG&gt;PIN&lt;&gt;]]

DreamsDeep3Obj3Tip =
[[The abandoned radio structure only contained blueprints for a &lt;TECHNOLOGY&gt;Basic Sonar&lt;&gt;.&#xA;Purchase the &lt;TECHNOLOGY&gt;High-Power Sonar&lt;&gt; blueprints from aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;, then install it in the Nautilon.&#xA;Access the Nautilon's inventory and craft in an empty slot with &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Pin the blueprint recipe for detailed instructions with &lt;IMG&gt;PIN&lt;&gt;.]]

SonarQuickMenu =
[[Use Sonar]]

SonarQuickMenuFail =
[[No Sonar Installed]]

Sonar =
[[Sonar]]

BasicSonarDesc =
[[A high-detail sonar device, capable of upgrading the scanner technology aboard a Nautilon-class submarine to Analysis Visor levels.&#xA;&#xA;Press &lt;IMG&gt;SCAN&lt;&gt; to activate a sonar pulse, revealing &lt;STELLAR&gt;additional points of interest&lt;&gt; that cannot be located via a Multi-Tool scanner.&#xA;&#xA;Use the Quick Menu to tune the sonar to &lt;TECHNOLOGY&gt;specific sites&lt;&gt;.]]

ExoRadarDesc =
[[A large and complex field-based subspace radar.&#xA;&#xA;Due to their large power consumption and inherent subatomic instability, they are found only installed on Exocraft.&#xA;&#xA;Press &lt;IMG&gt;SCAN&lt;&gt; to activate a radar sweep, revealing &lt;STELLAR&gt;additional points of interest&lt;&gt; that cannot be located via a Multi-Tool scanner.&#xA;&#xA;Use the Quick Menu to tune the radar to &lt;TECHNOLOGY&gt;specific buildings&lt;&gt;.]]

AMUDesc =
[[An &lt;TECHNOLOGY&gt;automated harvester&lt;&gt; for the mining of resources. Once activated, the AMU extracts &lt;STELLAR&gt;250 units&lt;&gt; of minerals in &lt;TECHNOLOGY&gt;10 minutes&lt;&gt; before collecting and &lt;FUEL&gt;refueling&lt;&gt;.&#xA;&#xA;Can be left running while working in your base, or built at your landing site when visiting planets and given a half-tank of fuel to run for just &lt;TECHNOLOGY&gt;5 minutes&lt;&gt;.&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: It is recommended to remain in the &lt;TECHNOLOGY&gt;same system&lt;&gt; during operation and to &lt;STELLAR&gt;delete and rebuild&lt;&gt; this unit before refueling it to reduce the chances of a &lt;HIGHLIGHT&gt;vanilla glitch&lt;&gt; clearing its contents.]]

OxygenHarvesterDesc =
[[An &lt;TECHNOLOGY&gt;autonomous atmosphere extractor&lt;&gt;, this device can be left to collect and purify &lt;STELLAR&gt;250 units&lt;&gt; of oxygen from the air in &lt;TECHNOLOGY&gt;10 minutes&lt;&gt; before collecting and &lt;FUEL&gt;refueling&lt;&gt;.&#xA;&#xA;The resulting gas is compressed and processed, ready for use in all standard &lt;FUEL&gt;life support systems&lt;&gt;.&#xA;&#xA;Can be left running while working in your base, or built at your landing site when visiting planets and given a half-tank of fuel to run for just &lt;TECHNOLOGY&gt;5 minutes&lt;&gt;.&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: It is recommended to remain in the &lt;TECHNOLOGY&gt;same system&lt;&gt; during operation and to &lt;STELLAR&gt;delete and rebuild&lt;&gt; this unit before refueling it to reduce the chances of a &lt;HIGHLIGHT&gt;vanilla glitch&lt;&gt; clearing its contents.]]

AtmosphereHarvesterDesc =
[[An &lt;TECHNOLOGY&gt;automated siphon unit&lt;&gt; for the collection of valuable gases. Once activated, the harvester condenses and compresses &lt;STELLAR&gt;250 units&lt;&gt; of gas from the air in &lt;TECHNOLOGY&gt;10 minutes&lt;&gt; before collecting and &lt;FUEL&gt;refueling&lt;&gt;. Compressed gas is then stored safely until collected.&#xA;&#xA;Can be left running while working in your base, or built at your landing site when visiting planets and given a half-tank of fuel to run for just &lt;TECHNOLOGY&gt;5 minutes&lt;&gt;.&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: It is recommended to remain in the &lt;TECHNOLOGY&gt;same system&lt;&gt; during operation and to &lt;STELLAR&gt;delete and rebuild&lt;&gt; this unit before refueling it to reduce the chances of a &lt;HIGHLIGHT&gt;vanilla glitch&lt;&gt; clearing its contents.]]

AntimatterReactorDesc =
[[An &lt;TECHNOLOGY&gt;autonomous baryogenesis reactor&lt;&gt;, this device can be left to harvest reality paradoxes and convert them into usable &lt;FUEL&gt;antimatter&lt;&gt; for up to &lt;TECHNOLOGY&gt;10 minutes&lt;&gt; before collecting and &lt;FUEL&gt;refueling&lt;&gt;.&#xA;&#xA;The resulting antimatter is safely contained, ready for use in all standard &lt;FUEL&gt;hyperspace power units&lt;&gt;.]]

ScannerRoomDesc =
[[Advanced integrated freighter equipment. By consuming some &lt;STELLAR&gt;Navigation Data&lt;&gt; to orient itself, this &lt;TECHNOLOGY&gt;planetary scanner&lt;&gt; probes all celestial bodies in the local solar system. This module is placed as an &lt;STELLAR&gt;entire room&lt;&gt; and comes with its functional units pre-installed.&#xA;&#xA;Scanned moons and planets are &lt;STELLAR&gt;Discovered&lt;&gt;, and sensors collect high-level data such as weather conditions and prominent resources.]]

OrbExoMatRoomDesc =
[[Advanced integrated freighter equipment. Construction allows the user to summon any owned Exocraft while in the same system as their freighter. This module is placed as an &lt;STELLAR&gt;entire room&lt;&gt; and comes with its functional units pre-installed.&#xA;&lt;STELLAR&gt;Teleport Coordinators&lt;&gt; can be purchased in systems with &lt;SPECIAL&gt;trading&lt;&gt; economies.&#xA;&#xA;Interfaces with the &lt;STELLAR&gt;Exosuit Quick Command Menu&lt;&gt; for ease of use.]]

ConsciousnessBridgeMissionHint =
[[The Void Egg requires a &lt;TECHNOLOGY&gt;Consciousness Bridge&lt;&gt;&#xA;Gather %ITEM% to craft Consciousness Bridge: %CURRENT%/%AMOUNT%&#xA;%ITEM% can be mined on planets in &lt;TRADEABLE&gt;green star systems&lt;&gt;]]

ESSDesc =
[[A &lt;STELLAR&gt;single-use&lt;&gt; receiver that scans for distress signals on &lt;TECHNOLOGY&gt;freighter frequencies&lt;&gt;. Derelict or abandoned freighters often contain &lt;STELLAR&gt;high-value salvage&lt;&gt; and &lt;HIGHLIGHT&gt;large amounts of nanites&lt;&gt;.&#xA;&#xA;Select the Receiver and use Tune Signal (&lt;IMG&gt;FE_ALT1&lt;&gt;) to begin the location process.]]

DerelictLootTip =
[[The &lt;STELLAR&gt;Space Station&lt;&gt; offers several opportunities to profit from salvage.&#xA;Both &lt;TECHNOLOGY&gt;Scrap Dealers&lt;&gt; and &lt;TRADEABLE&gt;Guild Envoys&lt;&gt; may be interested in acquiring data from the derelict freighter.&#xA;&#xA;&lt;TECHNOLOGY&gt;Scrap Dealers&lt;&gt; offer &lt;SPECIAL&gt;Tainted Metal&lt;&gt; while &lt;TRADEABLE&gt;Guild Envoys&lt;&gt; offer &lt;TRADE&gt;Units&lt;&gt; and &lt;STELLAR&gt;Standing&lt;&gt;]]

DerelictCrewPopup =
[[Offload the &lt;STELLAR&gt;Crew Manifest&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Scrap Dealers&lt;&gt; offer &lt;SPECIAL&gt;Tainted Metal&lt;&gt; while &lt;TRADEABLE&gt;Guild Envoys&lt;&gt; offer &lt;TRADE&gt;Units&lt;&gt; and &lt;STELLAR&gt;Standing&lt;&gt;]]

DerelictLogPopup =
[[Offload the &lt;STELLAR&gt;Captain's Log&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Scrap Dealers&lt;&gt; offer &lt;SPECIAL&gt;Tainted Metal&lt;&gt; while &lt;TRADEABLE&gt;Guild Envoys&lt;&gt; offer &lt;TRADE&gt;Units&lt;&gt; and &lt;STELLAR&gt;Standing&lt;&gt;]]

ReinforcedDoor =
[[Reinforced Door (Destroy nearby &lt;SPECIAL&gt;sentinels&lt;&gt;)]]

CargoPod =
[[Cargo Pod - Contents &lt;SPECIAL&gt;Unknown&lt;&gt;]]

MemoryStoneDesc =
[[Acquire Ancient &lt;TECHNOLOGY&gt;Knowledge&lt;&gt; or &lt;HIGHLIGHT&gt;Treasures&lt;&gt;]]

ReleaseFish =
[[RELEASE FISH FOR &lt;STELLAR&gt;NANITES&lt;&gt;]]

ReleaseFishDesc =
[[Return your catch to the water for &lt;STELLAR&gt;nanites&lt;&gt; based on its &lt;HIGHLIGHT&gt;rarity&lt;&gt;]]

SentPillarLeftPane =
[[WARNING: [ &lt;SPECIAL&gt;BOUNDARY NODE EXPOSED&lt;&gt; ]&#xA;BOUNDARY ARCHIVE STATUS: [ &lt;SPECIAL&gt;VULNERABLE&lt;&gt; ]&#xA;&#xA;Destroy nearby &lt;FUEL&gt;Sentinel Mech&lt;&gt; to earn the right to use this terminal &lt;STELLAR&gt;honourably&lt;&gt;]]

BuyNewSlot =
[[Select any empty space in Cargo or Technology with &lt;IMG&gt;FE_SELECT&lt;&gt; to install new slot&#xA;&#xA;For the &lt;TRADE&gt;default&lt;&gt; &lt;SPECIAL&gt;PTSd&lt;&gt; experience, only increase &lt;METAL&gt;Exosuit&lt;&gt; slots to &lt;STELLAR&gt;40&lt;&gt; &lt;TECHNOLOGY&gt;Technology&lt;&gt; and &lt;STELLAR&gt;40&lt;&gt; &lt;COMMODITY&gt;Cargo&lt;&gt;]]

BuyNewSlotMP =
[[Select any empty space in Cargo or Technology with &lt;IMG&gt;FE_SELECT&lt;&gt; to install new slot (%NUM% available)&#xA;&#xA;&lt;FUEL&gt;NOTE:&lt;&gt;For the &lt;TRADE&gt;default&lt;&gt; &lt;SPECIAL&gt;PTSd&lt;&gt; experience, only increase &lt;METAL&gt;Exosuit&lt;&gt; slots to &lt;STELLAR&gt;40&lt;&gt; &lt;TECHNOLOGY&gt;Technology&lt;&gt; and &lt;STELLAR&gt;40&lt;&gt; &lt;COMMODITY&gt;Cargo&lt;&gt;]]

FreeFreighterOffer =
[[The Captain looks at me happily, almost relieved. Perhaps the burden of command had become too much for them?&#xA;Their ship and its crew is could be at my disposal, as well as command of the freighter's &lt;STELLAR&gt;Support Frigates&lt;&gt;...&#xA;But perhaps I might regret accepting such an &lt;TRADE&gt;overly generous&lt;&gt; offer.&#xA;&#xA;&lt;FUEL&gt;NOTE:&lt;&gt; For the &lt;STELLAR&gt;default&lt;&gt; &lt;SPECIAL&gt;PTSd&lt;&gt; experience, it's recommended to decline this free rescued freighter and instead &lt;STELLAR&gt;purchase&lt;&gt; your first one &lt;STELLAR&gt;yourself&lt;&gt;]]

FreeFreighterSelect =
[[Give in to temptation and inspect &lt;TRADE&gt;free&lt;&gt; freighter]]

DreadnoughtCaptain =
[[The pirate commander begs for mercy. I can demand a share of the plunder, or earn the loyalty of this vessel's crew with a show of enough units.&#xA;&#xA;&lt;FUEL&gt;WARNING:&lt;&gt; The full price must be paid &lt;HIGHLIGHT&gt;each time&lt;&gt; you select the inspect option to the right, &lt;HIGHLIGHT&gt;before&lt;&gt; confirming to exchange freighers.&#xA;&#xA;Before proceeding with this purchase, first use your Analysis Visor to view the details of this Dreadnought, and potentially summon your Freighter to uninstall any technology]]

DreadnoughtSeize =
[[&lt;HIGHLIGHT&gt;Pay&lt;&gt; to inspect Dreadnought]]

DreadnoughtTribute =
[[Demand tribute of units, nanites, and goods]]

PirateFrigate =
[[Pirate Frigate - Dreadnought will summon to keep &lt;HIGHLIGHT&gt;at least 2&lt;&gt;]]

DreadnoughtHUDHint =
[[Fly beneath shields to destroy Dreadnought &lt;STELLAR&gt;shield generators&lt;&gt;, can also take out up to &lt;FUEL&gt;6 Pirate Frigates&lt;&gt;]]

DreadnoughtSurrenderFull =
[[The Dreadnought has &lt;TRADEABLE&gt;surrendered&lt;&gt;&#xA;Board the ship to negotiate terms&#xA;Or, destroy the ship for a chance at &lt;STELLAR&gt;minor salvage&lt;&gt;&#xA;Approach &lt;TECHNOLOGY&gt;pirate frigates&lt;&gt; to recruit survivors]]

DreadnoughtBoardDestroy =
[[Board to negotiate terms &lt;IMG&gt;SLASH&lt;&gt; Destroy for a chance at &lt;STELLAR&gt;minor salvage&lt;&gt;]]

AntiFreightCannon =
[[Anti-Freighter Cannon - &lt;HIGHLIGHT&gt;Heavy Armour&lt;&gt;]]

FreightWarpDrives =
[[Freighter Warp Drives - &lt;STELLAR&gt;Medium Armour&lt;&gt;]]

FreighterShieldGen =
[[&lt;CATALYST&gt;Freighter Shield Generator - Shielded&lt;&gt;]]

PirateRaidBuildingWarning =
[[&lt;FUEL&gt;TAKE COVER&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Pirates Raiding Nearby Building!]]

PirateRaidWarning =
[[&lt;FUEL&gt;TAKE COVER&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Pirates Targeting Exosuit Signal!]]

DerelictEndDesc =
[[Engineering Control Panel Accessed...&#xA;Generator failure detected. Fabricators on &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;FUEL&gt;emergency power&lt;&gt;.&#xA;The &lt;HIGHLIGHT&gt;Class&lt;&gt; of &lt;STELLAR&gt;Fabricated Tech Upgrades&lt;&gt; will be truly &lt;SPECIAL&gt;randomized&lt;&gt; each time. Construct component?]]

DerelictTech =
[[Fabricate &lt;SPECIAL&gt;Random&lt;&gt; Tech Upgrade]]

DerelictNanites =
[[Extract approx. &lt;STELLAR&gt;1,500&lt;&gt; Nanites]]

ManufacturingFacNanites =
[[Extract approx. &lt;STELLAR&gt;400&lt;&gt; Nanites]]

LeapDark3rdMonolith =
[[The Atlas told the Traveller they were the first of their kind. That a multitude would follow. Each would be endowed with the same noble soul, each able to travel from planet to planet in eternal solitude.&#xA;&#xA;The First Traveller rejected the gift of the Atlas. This was not what they hoped for. What was the purpose of infinity if you could not see it all? If you were alone? If you would one day die?&#xA;&#xA;The First Traveller cursed the Atlas, and claimed that they would find a way to survive no matter the cost.&#xA;&#xA;All of these worlds, all of time itself, it will be for the Travellers to witness.&#xA;&#xA;After inspecting so many Monoliths, I now have the ability to access &lt;SPECIAL&gt;secret terminals&lt;&gt; at Monoliths in &lt;TECHNOLOGY&gt;Korvax systems&lt;&gt;.]]

LeapDarkAfter3rdMonolithTip =
[[The ancient monuments have supplied a series of glyphs. Perhaps they hold the key to opening a portal...&#xA;&#xA;Also, after inspecting so many Monoliths, I now have the ability to access &lt;SPECIAL&gt;secret terminals&lt;&gt; at Monoliths in &lt;TECHNOLOGY&gt;Korvax systems&lt;&gt;.]]

BasaltDesc =
[[Local mineral extract, typically found in large deposits or extracted from common minerals after inspection with an &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;.&#xA;&#xA;Typically found on planets with a &lt;FUEL&gt;volcanic environment&lt;&gt;.&#xA;&#xA;Can be processed into &lt;STELLAR&gt;Silicate Powder&lt;&gt; in a refiner.]]

AtlasPass2Desc =
[[Security and permissions pass granted to specific travellers by many primary galactic species.&#xA; &#xA;Provides access to mid-tier or lower restricted areas and outpost systems.]]

AtlasPass3Desc =
[[Security and permissions pass granted to specific travellers by many primary galactic species.&#xA; &#xA;Provides access to high level or lower restricted areas and outpost systems.]]

StormCrystalDesc =
[[A rare and highly valuable cluster of storm crystals. These crystalline structures thrive in stormy conditions, and naturally attract lightning strikes, becoming spectacularly luminescent when ionised. Exclusively found on &lt;FUEL&gt;extreme weather planets&lt;&gt;.&#xA;Specimens found in the &lt;TRADE&gt;wild&lt;&gt; &lt;STELLAR&gt;may&lt;&gt; yield &lt;HIGHLIGHT&gt;some nanites when collected&lt;&gt;.]]

VortexDesc =
[[An ancient object, unearthed from the depths of a planetary cave system. Its surface is cold to the touch, and is curiously polished despite its age.&#xA;Specimens found in the &lt;TRADE&gt;wild&lt;&gt; will &lt;STELLAR&gt;often&lt;&gt; yield &lt;HIGHLIGHT&gt;a few nanites when collected&lt;&gt;.&#xA;&#xA;A fusion of metal and rock, these cubes have proved resistant to industrial processing.&#xA;&#xA;Can be sold at a &lt;TECHNOLOGY&gt;Galactic Trade Terminal&lt;&gt; or &lt;FUEL&gt;refined&lt;&gt; to extract small amounts of &lt;STELLAR&gt;precious metals&lt;&gt;.]]

PearlDesc =
[[Gemstone formed over the course of centuries within the egg of a super-incubatory species. Highly ornamental, these gems are themselves living seeds, lucent grains of potential life.&#xA;&#xA;Can be sold at a &lt;TECHNOLOGY&gt;Galactic Trade Terminal&lt;&gt;, or &lt;FUEL&gt;refined together&lt;&gt; with &lt;STELLAR&gt;Gravitino Balls&lt;&gt; to extract the &lt;TECHNOLOGY&gt;Di-Hydrogen&lt;&gt; within them.]]

GravDesc =
[[A supersymmetric particle cluster created by divergent super-gravitational forces. A &lt;STELLAR&gt;micro-rift&lt;&gt; is created as they form, and extraction of the orb prompts a localised reality weakening. &lt;FUEL&gt;Sentinel forces&lt;&gt; will respond to stablise any such anomaly.&#xA;Specimens found in the &lt;TRADE&gt;wild&lt;&gt; will &lt;STELLAR&gt;sometimes&lt;&gt; yield &lt;HIGHLIGHT&gt;nanites when collected&lt;&gt;.&#xA;&#xA;Can be sold at a &lt;TECHNOLOGY&gt;Galactic Trade Terminal&lt;&gt;, or &lt;FUEL&gt;refined together&lt;&gt; with &lt;STELLAR&gt;Albumen Pearls&lt;&gt; or &lt;STELLAR&gt;Sac Venom&lt;&gt; to extract useful substances from them.]]

VenomDesc =
[[A stabilised poison gland extracted from a terrestrial urchin. The host-urchin is actually a colony of smaller proto-creatures, a formation built on years of slow growth and cooperation.&#xA;&#xA;Of use both medicinally and as a delicacy in some riskier cuisines.&#xA;&#xA;Can be sold at a &lt;TECHNOLOGY&gt;Galactic Trade Terminal&lt;&gt;, or &lt;FUEL&gt;refined together&lt;&gt; with &lt;STELLAR&gt;Gravitino Balls&lt;&gt; to extract the &lt;TECHNOLOGY&gt;Tritium&lt;&gt; within them.]]

PearlTime =
[[A medium-sized, farmable Crystal Orb that yields an occasional harvest of valuable Albumen Pearls, as well as &lt;STELLAR&gt;nanites&lt;&gt;.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;1 hour&lt;&gt;&#xA;&#xA;Very high &lt;TRADE&gt;units/hour&lt;&gt; but low &lt;TECHNOLOGY&gt;units/harvest&lt;&gt; and low &lt;STELLAR&gt;nanites/hour&lt;&gt;]]

GravTime =
[[A strange, potentially parasitic plant that yields an occasional harvest of the highly tradable commodity, Gravitino Balls, as well as &lt;STELLAR&gt;nanites&lt;&gt;.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;4 hours&lt;&gt;&#xA;&#xA;High &lt;STELLAR&gt;nanites/hour&lt;&gt;, but low &lt;TRADE&gt;units/hour&lt;&gt; and low &lt;TECHNOLOGY&gt;units/harvest&lt;&gt;]]

VenomTime =
[[A small, innocuous looking plant whose leaves periodically secrete a small amount of potent Sac Venom, a valuable trading commodity, as well as &lt;STELLAR&gt;nanites&lt;&gt;.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;12 hours&lt;&gt;&#xA;&#xA;Very high &lt;TECHNOLOGY&gt;units/harvest&lt;&gt;, but low &lt;TRADE&gt;units/hour&lt;&gt; and low &lt;STELLAR&gt;nanites/hour&lt;&gt;]]

NipNipTime =
[[This medicinal herb is known for its pungent buds, which are harvested to produce Gek Nip. NipNip thrives in dank environments, and often grows as a weed.&#xA;&#xA;Suitable for hydroponic planting indoors. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;4 hours 20 mins&lt;&gt;&#xA;&#xA;High &lt;TRADE&gt;units/hour&lt;&gt; and high &lt;TECHNOLOGY&gt;units/harvest&lt;&gt; but does not produce &lt;STELLAR&gt;nanites&lt;&gt;]]

HydroTrayDesc =
[[A self contained growth system for the indoor cultivation of agricultural crops.&#xA;&#xA;A &lt;STELLAR&gt;cost-effective&lt;&gt; method of growing crops, using few resources.&#xA;&#xA;Build requirement: Must be placed indoors.]]

LargeHydroTrayDesc =
[[A self contained growth system for the indoor cultivation of agricultural crops. Can support up to four plants.&#xA;&#xA;A &lt;STELLAR&gt;power-saving&lt;&gt; method of growing crops, using little electricity.&#xA;&#xA;Build requirement: Must be placed indoors.]]

BioDomeDesc =
[[An attractive domed room which is perfect for cultivating a wide range of botanical matter.&#xA;&#xA;A &lt;STELLAR&gt;time-efficient&lt;&gt; method of harvesting crops, collecting from up to 16 plots at once.]]

CultChamberDesc =
[[A temperature controlled bio-room. Two plots of nutrient-rich soil provides ideal conditions for cultivating agricultural crops.&#xA;&#xA;A &lt;STELLAR&gt;convenient&lt;&gt; method of growing crops, collecting from 2 plots at once aboard your freighter.&#xA;&#xA;This module is placed as an &lt;STELLAR&gt;entire room&lt;&gt; and comes with its functional units pre-installed.]]

DoubleCultChamberDesc =
[[A temperature controlled bio-room. Four plots of nutrient-rich soil provide ideal conditions for cultivating agricultural crops.&#xA;&#xA;A &lt;STELLAR&gt;convenient&lt;&gt; method of growing crops, collecting from 4 plots at once aboard your freighter.&#xA;&#xA;This module is placed as an &lt;STELLAR&gt;entire room&lt;&gt; and comes with its functional units pre-installed.]]

Mealworms =
[[A piece of specialist &lt;STELLAR&gt;bait&lt;&gt;, designed to improve the &lt;HIGHLIGHT&gt;rarity&lt;&gt; of your catch, with a slight improvement to &lt;STELLAR&gt;size&lt;&gt;.&#xA;&#xA;Locate your &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; and begin bait application with &lt;IMG&gt;FE_ALT1&lt;&gt;.]]

SpicyChum =
[[A piece of specialist &lt;STELLAR&gt;bait&lt;&gt;, designed to greatly improve the &lt;HIGHLIGHT&gt;rarity&lt;&gt; of your catch, with a little improvement to &lt;STELLAR&gt;size&lt;&gt;.&#xA;&#xA;Locate your &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; and begin bait application with &lt;IMG&gt;FE_ALT1&lt;&gt;.]]

BionicLure =
[[A specialist &lt;STELLAR&gt;lure&lt;&gt;, designed to vastly improve the &lt;HIGHLIGHT&gt;rarity&lt;&gt; of your catch, with a decent improvement to &lt;STELLAR&gt;size&lt;&gt;. Of particular interest to anglers seeking &lt;COMMODITY&gt;legendary fish&lt;&gt;.&#xA;&#xA;Locate your &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; and begin bait application with &lt;IMG&gt;FE_ALT1&lt;&gt;.]]

DanglingOrb =
[[A specialist &lt;STELLAR&gt;lure&lt;&gt;, designed to greatly attract &lt;COMMODITY&gt;diurnal&lt;&gt; fish during the day, which are &lt;STELLAR&gt;slightly more valuable&lt;&gt; than normal fish.&#xA;Also improves the &lt;HIGHLIGHT&gt;rarity&lt;&gt; and &lt;STELLAR&gt;size&lt;&gt; of your catch only slightly less than Spicy Chum.&#xA;&#xA;Locate your &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; and begin bait application with &lt;IMG&gt;FE_ALT1&lt;&gt;.]]

ShadowLure =
[[A specialist &lt;STELLAR&gt;lure&lt;&gt;, designed to greatly attract &lt;SPECIAL&gt;nocturnal&lt;&gt; fish at night, which are &lt;STELLAR&gt;slightly more valuable&lt;&gt; than normal fish.&#xA;Also improves the &lt;HIGHLIGHT&gt;rarity&lt;&gt; and &lt;STELLAR&gt;size&lt;&gt; of your catch only slightly less than Spicy Chum.&#xA;&#xA;Locate your &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; and begin bait application with &lt;IMG&gt;FE_ALT1&lt;&gt;.]]

MagpulseLure =
[[A specialist &lt;STELLAR&gt;lure&lt;&gt;, designed to greatly attract fish that are only active during &lt;TECHNOLOGY&gt;storms&lt;&gt; while a storm is occuring, which are &lt;STELLAR&gt;more valuable&lt;&gt; than normal fish.&#xA;Also improves the &lt;HIGHLIGHT&gt;rarity&lt;&gt; and &lt;STELLAR&gt;size&lt;&gt; of your catch only slightly less than Spicy Chum.&#xA;&#xA;Locate your &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; and begin bait application with &lt;IMG&gt;FE_ALT1&lt;&gt;.]]

AutoTrapDesc =
[[An autonomous fishing device, designed for long-term deployment in a wide-range of water conditions.&#xA;&#xA;Once activated, the system will lure and trap aquatic creatures from various depths &lt;STELLAR&gt;regardless of trap placement&lt;&gt; and store them for later retrieval.]]

AutoTrapAltDesc =
[[An autonomous fishing device, designed for long-term deployment in a wide-range of water conditions. Return later to collect trapped fish lured from various depths &lt;STELLAR&gt;regardless of trap placement&lt;&gt;.&#xA;&#xA;Trap cycle: &lt;TRADEABLE&gt;IN PROGRESS&lt;&gt;]]

RoamerBayDesc =
[[An underground secure parking facility for the &lt;STELLAR&gt;Roamer&lt;&gt; medium Exocraft.&#xA;&#xA;With &lt;STELLAR&gt;average&lt;&gt; speed, handling, and technology/storage space, the &lt;STELLAR&gt;Roamer&lt;&gt; will do well in most tasks but does not excel in any one particular area. However, it still gives access to the significant benefits that all exocraft offer in most situations, such as &lt;STELLAR&gt;faster&lt;&gt; and &lt;CATALYST&gt;safer&lt;&gt; traversal, alternative methods of &lt;TRADE&gt;mining&lt;&gt; or &lt;RED&gt;attacking&lt;&gt;, additional &lt;HIGHLIGHT&gt;storage&lt;&gt; for collecting items, and access to &lt;TECHNOLOGY&gt;radar&lt;&gt; for either &lt;HIGHLIGHT&gt;highlighting nearby points of interest&lt;&gt; or locating &lt;TECHNOLOGY&gt;distant buildings&lt;&gt;.]]

ColossusBayDesc =
[[An underground secure parking facility for the &lt;STELLAR&gt;Colossus&lt;&gt; large Exocraft.&#xA;&#xA;With &lt;RED&gt;below-average&lt;&gt; speed and handling but &lt;HIGHLIGHT&gt;excellent&lt;&gt; technology/storage space, the &lt;STELLAR&gt;Colossus&lt;&gt; is well-suited for trips where you expect to mine or collect a great deal of items. It can also eventually house a &lt;STELLAR&gt;special portable refiner&lt;&gt; able to process &lt;HIGHLIGHT&gt;more complex recipes&lt;&gt; than any Exosuit-mounted refiner during transit.]]

NomadBayDesc =
[[An underground secure parking facility for the &lt;STELLAR&gt;Nomad&lt;&gt; light Exocraft.&#xA;&#xA;With &lt;TRADE&gt;above-average&lt;&gt; speed and &lt;HIGHLIGHT&gt;high&lt;&gt; handling, a light frame which can &lt;TRADE&gt;hover over water&lt;&gt;, an &lt;TRADE&gt;additional&lt;&gt; &lt;COMMODITY&gt;supercharged&lt;&gt; slot, but &lt;RED&gt;low&lt;&gt; technology/storage space, the &lt;STELLAR&gt;Nomad&lt;&gt; is an excellent choice for traveling through any environment without being slowed by either rough terrain or open water. With enough upgrades, it can spend more time in the air than on the ground or water's surface.]]

PilgrimBayDesc =
[[An underground secure parking facility for the &lt;STELLAR&gt;Pilgrim&lt;&gt; light Exocraft.&#xA;&#xA;With &lt;HIGHLIGHT&gt;high&lt;&gt; speed and &lt;TRADE&gt;above-average&lt;&gt; handling, a heavy frame which &lt;STELLAR&gt;hugs the ground&lt;&gt;, an &lt;TRADE&gt;additional&lt;&gt; &lt;COMMODITY&gt;supercharged&lt;&gt; slot, but &lt;RED&gt;low&lt;&gt; technology/storage space, the &lt;STELLAR&gt;Pilgrim&lt;&gt; offers the fastest method of traversing the ground so long as either the terrain is clear or the pilot is confident in their steering.]]

MinotaurBayDesc =
[[A secure parking, summoning and customisation facility for the &lt;STELLAR&gt;Minotaur Heavy Exosuit Hybrid&lt;&gt;.&#xA;&#xA;With &lt;RED&gt;low&lt;&gt; sustained speed and &lt;RED&gt;below-average&lt;&gt; handling, &lt;STELLAR&gt;jump-jets&lt;&gt; capable of &lt;TECHNOLOGY&gt;vertical movement&lt;&gt; and &lt;TRADE&gt;above-average&lt;&gt; speed in shorts bursts, &lt;HIGHLIGHT&gt;complete protection&lt;&gt; from all environmental hazards (including &lt;TECHNOLOGY&gt;underwater&lt;&gt;), the ability to &lt;TRADE&gt;harvest certain items&lt;&gt; without exiting the cockpit, advanced &lt;SPECIAL&gt;weapon&lt;&gt;, &lt;TRADE&gt;mining&lt;&gt;, and &lt;TECHNOLOGY&gt;radar&lt;&gt; techs, and &lt;STELLAR&gt;average&lt;&gt; technology/storage space, the &lt;STELLAR&gt;Minotaur&lt;&gt; may be the slowest vehicle when traversing long distances but offers unique options not available to other exocraft.&#xA;&#xA;Deploy the Minotaur from the Quick Menu. With the aid of an &lt;TECHNOLOGY&gt;Orbital Exocraft Materialiser&lt;&gt; mounted inside a freighter, the Minotaur can be instantly deployed to any location within the same system as the mothership.]]

NautilonBayDesc =
[[An advanced, fully-airlocked docking station for the &lt;STELLAR&gt;Nautilon&lt;&gt; submarine.&#xA;&#xA;With &lt;HIGHLIGHT&gt;excellent&lt;&gt; speed and &lt;TRADE&gt;above-average&lt;&gt; handling, &lt;HIGHLIGHT&gt;complete protection&lt;&gt; from all environmental hazards (including &lt;TECHNOLOGY&gt;deep-water pressure&lt;&gt;), advanced &lt;TRADE&gt;mining&lt;&gt; and &lt;TECHNOLOGY&gt;sonar&lt;&gt; techs, and &lt;STELLAR&gt;average&lt;&gt; technology/storage space, the &lt;STELLAR&gt;Nautilon&lt;&gt; is the only exocraft able to freely move through any depth of water instead of just across the surface or along the sea floor, and is the also the fastest method of doing so.]]

ExoSummonStationDesc =
[[Construction allows the user to summon any Exocraft with an existing Geobay from &lt;STELLAR&gt;any distance&lt;&gt;, including from &lt;SPECIAL&gt;other star systems&lt;&gt;, without needing to construct duplicate Geobays on the current planet or system.&#xA;&#xA;Interfaces with the &lt;STELLAR&gt;Exosuit Quick Command Menu&lt;&gt; for ease of use. Once the Exocraft have been summoned to the current planet, this station can be compressed and carried within the Exosuit with &lt;IMG&gt;DECONSTRUCT&lt;&gt; for later redeployment on another planet.]]

SeaGlassDesc =
[[An etheral shard, this translucent plane is both mineral and alive, both of the water and of another realm.&#xA;&#xA;By &lt;FUEL&gt;refining&lt;&gt; it, either alone or with certain other types of &lt;STELLAR&gt;glass&lt;&gt; or &lt;SPECIAL&gt;glassy shards&lt;&gt;, it can take on forms it once held in other potential realities. Alternatively, refine together with &lt;STELLAR&gt;Microprocessors&lt;&gt; to create much &lt;TECHNOLOGY&gt;Salvaged Data&lt;&gt;.]]

SurvivalDiffDesc =
[[The Exosuit's &lt;CATALYST&gt;Hazard Protection&lt;&gt; protects explorers from environmental factors such as &lt;TECHNOLOGY&gt;extreme cold&lt;&gt; and &lt;TRADEABLE&gt;toxicity&lt;&gt;. Its &lt;FUEL&gt;Life Support&lt;&gt; unit provides breathable air and vital movement systems. Riding in the cockpit of any &lt;TECHNOLOGY&gt;Exocraft&lt;&gt; will provide air and &lt;STELLAR&gt;significant&lt;&gt; environmental protection, &lt;HIGHLIGHT&gt;tripling&lt;&gt; hazard survival times.&#xA;This setting scales how quickly these systems are drained in challenging environments.&#xA;&#xA;&lt;TRADE&gt;Relaxed&lt;&gt;: 33% Hazard and 50% Life Support drain rate&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Hazard and Life Support drain rate&#xA;&lt;FUEL&gt;Challenging&lt;&gt;: 150% Hazard and 150% Life Support drain rate&#xA;&#xA;&lt;TECHNOLOGY&gt;Cold&lt;&gt; planets have slightly milder days but slightly harsher nights and seas&#xA;&lt;FUEL&gt;Hot&lt;&gt; planets have slightly harsher days but slightly milder nights and mild seas&#xA;&lt;TRADEABLE&gt;Toxic&lt;&gt; planets have harsher seas&#xA;&lt;CATALYST&gt;Radioactive&lt;&gt; planets have slightly milder seas&#xA;&lt;SPECIAL&gt;Gas Giants&lt;&gt; contain &lt;HIGHLIGHT&gt;all hazards&lt;&gt;, but mostly &lt;FUEL&gt;heat&lt;&gt; and &lt;TECHNOLOGY&gt;cold&lt;&gt;]]

SprintingDesc =
[[&lt;STELLAR&gt;Standard&lt;&gt; sprinting places additional drain on the Exosuit's &lt;FUEL&gt;Life Support&lt;&gt; systems.&#xA;&#xA;&lt;STELLAR&gt;Relaxed&lt;&gt; sprinting removes this life support cost and increases the Sprint Stamina bar by 250%, but still requires occasional short breaks to recharge.&#xA;&#xA;&lt;STELLAR&gt;Infinite&lt;&gt; sprinting removes all restrictions and allows player to sprint forever.]]

NatResourcesDesc =
[[Mining and gathering materials such as &lt;TITLE&gt;minerals&lt;&gt;, &lt;TRADEABLE&gt;vegetation&lt;&gt;, &lt;STELLAR&gt;animal products&lt;&gt;, &lt;FUEL&gt;loot&lt;&gt;, and many other sources is essential for survival while exploring.&#xA;&#xA;This setting scales the abundance of Substance-type resources and how quickly they are gathered. Note that this actually affects the yield of &lt;STELLAR&gt;most&lt;&gt; Substances collected while exploring &lt;TRADE&gt;Planets&lt;&gt; or &lt;SPECIAL&gt;Space&lt;&gt;, not just those collected from &lt;HIGHLIGHT&gt;mining&lt;&gt;, but does not apply to most &lt;TECHNOLOGY&gt;automated sources&lt;&gt; such as player-planted crops, machines such as extractors or refiners, settlements, etc.&#xA;&#xA;&lt;TRADE&gt;Abundant&lt;&gt;: ~175% Substance yield&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Substance yield&#xA;&lt;FUEL&gt;Scarce&lt;&gt;: ~63% Substance yield]]

FuelUsageDesc =
[[Technologies such as the &lt;TECHNOLOGY&gt;Mining Laser&lt;&gt; or the starship's &lt;TECHNOLOGY&gt;Launch Thrusters&lt;&gt; require regular recharging to remain functional.&#xA;This setting scales the cost of recharging these technologies.&#xA;&#xA;&lt;TRADE&gt;Discounted&lt;&gt;: 38% Launch cost (&lt;STELLAR&gt;6 launches&lt;&gt; by default), 67% other fuel costs, refueling is 150% more efficient, Mining Laser and Terrain Manipulator consume &lt;HIGHLIGHT&gt;no fuel&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% for all launch and fuel costs (&lt;STELLAR&gt;2 launches&lt;&gt; by default) and 100% refueling efficiency&#xA;&lt;FUEL&gt;Expensive&lt;&gt;: 150% Launch cost (&lt;STELLAR&gt;1 launch&lt;&gt; by default), 133% other fuel costs, refueling is 75% as efficient&#xA;&#xA;&lt;TECHNOLOGY&gt;Summoning&lt;&gt; a landed starship costs &lt;HIGHLIGHT&gt;2x&lt;&gt; the usual launch cost.&#xA;&#xA;&lt;SPECIAL&gt;Sentinel Interceptors&lt;&gt; only spend &lt;STELLAR&gt;80%&lt;&gt; of usual Launch costs&#xA;&lt;HIGHLIGHT&gt;Solar Ships&lt;&gt; only spend &lt;STELLAR&gt;75%&lt;&gt; of usual Launch costs&#xA;&lt;TRADE&gt;Shuttles&lt;&gt; only spend &lt;STELLAR&gt;66%&lt;&gt; of usual Launch costs&#xA;&lt;TECHNOLOGY&gt;Explorers&lt;&gt; only spend &lt;STELLAR&gt;50%&lt;&gt; of usual Launch costs&#xA;&lt;STELLAR&gt;Corvettes&lt;&gt; spend &lt;STELLAR&gt;140%&lt;&gt; of usual Launch costs by default]]

ScanRechargeDesc =
[[The &lt;STELLAR&gt;Exosuit&lt;&gt; &lt;TECHNOLOGY&gt;scanner&lt;&gt; assists with locating nearby survival resources such as &lt;FUEL&gt;oxygen&lt;&gt; and &lt;CATALYST&gt;sodium&lt;&gt; with pulses.&#xA;The &lt;TECHNOLOGY&gt;Exocraft&lt;&gt; radar &lt;TECHNOLOGY&gt;scanner&lt;&gt; can reveal even more types of nearby &lt;HIGHLIGHT&gt;valuable resources&lt;&gt; with pulses, or can locate distant &lt;STELLAR&gt;sites of interest&lt;&gt; from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt;.&#xA;The &lt;SPECIAL&gt;Starship&lt;&gt; &lt;TECHNOLOGY&gt;scanner&lt;&gt; can reveal &lt;STELLAR&gt;additional information&lt;&gt; about planets from space without landing on them, or when used while flying within a planet's atmosphere may detect &lt;TECHNOLOGY&gt;nearby buildings&lt;&gt;.&#xA;&#xA;After a scan pulse, the scanner must be &lt;STELLAR&gt;recharged&lt;&gt; before it can be used again. This setting adjusts how quickly the scanner &lt;STELLAR&gt;recharges&lt;&gt; after each scan pulse.&#xA;&#xA;&lt;HIGHLIGHT&gt;Very Fast&lt;&gt;: 500% Recharge rate&#xA;&lt;TRADE&gt;Fast&lt;&gt;: 200% Recharge rate&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Recharge rate&#xA;&lt;FUEL&gt;Challenging&lt;&gt;: 67% Recharge rate]]

PurchasesDesc =
[[Items can be purchased on the &lt;VAL_ON&gt;Galactic Trade Network&lt;&gt; with &lt;COMMODITY&gt;Units&lt;&gt; (&lt;IMG&gt;UNITS&lt;&gt;). Technologies are usually purchased with &lt;TECHNOLOGY&gt;Nanites&lt;&gt; (&lt;IMG&gt;NANITE&lt;&gt;).&#xA;&#xA;This setting scales the prices of Unit and Nanite purchases across the galaxy. The &lt;STELLAR&gt;Free&lt;&gt; setting also bypasses many costs required for mission progress and other similar dialogue interactions.&#xA;&#xA;&lt;TRADE&gt;Discounted&lt;&gt;: ~50% Units and Nanites costs&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Units and Nanites costs&#xA;&lt;FUEL&gt;Expensive&lt;&gt;: ~200% Units and Nanites costs&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: In &lt;SPECIAL&gt;PTSd&lt;&gt; you can install up to &lt;HIGHLIGHT&gt;5&lt;&gt; of the same type of &lt;HIGHLIGHT&gt;upgrade module&lt;&gt; in the same &lt;TECHNOLOGY&gt;technology inventory&lt;&gt; instead of only 3. This also allows more opportunities for greater &lt;TECHNOLOGY&gt;adjacency bonuses&lt;&gt; between slots with matching &lt;TECHNOLOGY&gt;tech&lt;&gt; or &lt;HIGHLIGHT&gt;upgrades&lt;&gt;.]]

PredatorsDesc =
[[Planets in No Man's Sky are often inhabited by alien creatures. A limited number of these creatures are &lt;FUEL&gt;predators&lt;&gt;, and will attempt to prey upon explorers.&#xA;&#xA;This setting determines the aggressiveness of predatory creatures:&#xA;&#xA;&lt;TRADE&gt;Passive&lt;&gt; means creatures will never attack explorers, even to defend themselves.&#xA;&lt;TECHNOLOGY&gt;Defensive&lt;&gt; means creatures will only retaliate when attacked by explorers.&#xA;&lt;FUEL&gt;Predators On&lt;&gt; will allow predators to occasionally hunt and attack explorers.&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Predators are more &lt;FUEL&gt;aggressive&lt;&gt; in &lt;SPECIAL&gt;PTSd&lt;&gt;, sometimes even &lt;TECHNOLOGY&gt;underwater&lt;&gt;, and are &lt;SPECIAL&gt;more active at night&lt;&gt;. A &lt;TRADE&gt;Companion&lt;&gt; of your own can help defend you, especially one with high &lt;FUEL&gt;Aggression&lt;&gt; and equipped with a &lt;TECHNOLOGY&gt;laser&lt;&gt;. Predators will not attack you if distracted by &lt;STELLAR&gt;Creature Pellets&lt;&gt; or while you are riding in any &lt;TECHNOLOGY&gt;Exocraft&lt;&gt;.]]

DamageLevelsDesc =
[[Hazardous environments, combat situations, or high-speed impact with the ground may all damage the Exosuit or starship. Unlike shields, Exosuit health &lt;FUEL&gt;does not regenerate&lt;&gt; automatically.&#xA;This setting scales the &lt;FUEL&gt;damage received&lt;&gt; in such events, as well as how many attacks an AI-piloted Minotaur exo-mech must be hit by before sustaining tech damage to a random installed tech.&#xA;&#xA;&lt;TRADE&gt;Minimal&lt;&gt;: 50% Damage received, AI-Minotaur takes 2x as many hits&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Damage received and standard number of hits before AI-Minotaur is damaged&#xA;&lt;FUEL&gt;Challenging&lt;&gt;: 150% Damage received, AI-Minotaur takes 0.67x as many hits before being damaged&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Combat in &lt;SPECIAL&gt;PTSd&lt;&gt;, particularly in &lt;SPECIAL&gt;space&lt;&gt;, is much more dangerous early on. Installing multiple &lt;CATALYST&gt;shield&lt;&gt; or &lt;FUEL&gt;weapon&lt;&gt; &lt;HIGHLIGHT&gt;upgrades&lt;&gt; (even &lt;CATALYST&gt;C Class&lt;&gt; ones) for &lt;TECHNOLOGY&gt;adjacency bonuses&lt;&gt;, upgrading the &lt;CATALYST&gt;Class&lt;&gt; of your gear, bringing healing &lt;STELLAR&gt;consumables&lt;&gt;, and especially using &lt;CATALYST&gt;supercharged&lt;&gt; slots for things like &lt;FUEL&gt;weapons&lt;&gt; will greatly help.]]

EnemyStrengthDesc =
[[While exploring planets or deep space, you may occasionally encounter hostile creatures, planetary &lt;SPECIAL&gt;Sentinels&lt;&gt;, or armed &lt;FUEL&gt;pirates&lt;&gt;.&#xA;&#xA;This setting scales the difficulty of such combat encounters, both on planets and in space.&#xA;&#xA;&lt;TRADE&gt;Weak&lt;&gt;: 50% Enemy health&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Enemy health&#xA;&lt;FUEL&gt;Challenging&lt;&gt;: 150% Enemy health&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Weapon &lt;TECHNOLOGY&gt;techs&lt;&gt; (such as the &lt;STELLAR&gt;Boltcaster&lt;&gt;, &lt;STELLAR&gt;Photon Cannon&lt;&gt;, etc.) receive enormous benefits from being &lt;COMMODITY&gt;supercharged&lt;&gt; compared to most other &lt;TECHNOLOGY&gt;techs&lt;&gt; or &lt;HIGHLIGHT&gt;upgrades&lt;&gt;. Additionally, any weapon &lt;HIGHLIGHT&gt;upgrade module&lt;&gt; with a &lt;TECHNOLOGY&gt;firerate&lt;&gt; bonus will increase total DPS by at least &lt;HIGHLIGHT&gt;1.2x&lt;&gt; when &lt;COMMODITY&gt;supercharged&lt;&gt;.&#xA;The exceptions are the &lt;TECHNOLOGY&gt;techs&lt;&gt; and &lt;HIGHLIGHT&gt;upgrades&lt;&gt; for &lt;TECHNOLOGY&gt;laser&lt;&gt; or &lt;FUEL&gt;explosive&lt;&gt; weapons (&lt;STELLAR&gt;Blaze Javelin&lt;&gt;, &lt;STELLAR&gt;Plasma Launcher&lt;&gt;, &lt;STELLAR&gt;Geology Cannon&lt;&gt;, &lt;STELLAR&gt;Phase Beam&lt;&gt;, and the &lt;STELLAR&gt;Rocket Launcher&lt;&gt;) which receive only typical &lt;COMMODITY&gt;supercharge&lt;&gt; benefits (and thus have higher base stats to compensate).]]

GroundCombatDesc =
[[While exploring on foot, explorers may be confronted by hostile forces such as &lt;SPECIAL&gt;Sentinels&lt;&gt; and &lt;SPECIAL&gt;alien monstrosities&lt;&gt;.&#xA;&#xA;This setting adjusts the frequency of such hostile encounters, particularly how soon &lt;SPECIAL&gt;Sentinel Drones&lt;&gt; spawn when loading onto a planet and the time between &lt;FUEL&gt;Planetary Pirate Raids&lt;&gt; in 2 or 3 star conflict systems.&#xA;&#xA;&lt;TRADE&gt;Minimal&lt;&gt;: 167% time for hostile spawn&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% time for hostile spawn&#xA;&lt;FUEL&gt;Hostile&lt;&gt;: 50% time for hostile spawn&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Like in vanilla, selecting the &lt;FUEL&gt;Hostile&lt;&gt; option will also &lt;STELLAR&gt;increase&lt;&gt; the chances of some planets having &lt;FUEL&gt;Aggressive Sentinels&lt;&gt;, particularly &lt;GREEN&gt;Lush&lt;&gt; planets.&#xA;&#xA;Even &lt;FUEL&gt;Aggressive Sentinels&lt;&gt; can be avoided by watching their movement from a distance and carefully travelling around their sight range before they notice you.]]

SpaceCombatDesc =
[[In space, explorers may be confronted by hostile forces such as &lt;FUEL&gt;pirates&lt;&gt; and vengeful &lt;SPECIAL&gt;system authorities&lt;&gt;. This setting adjusts the frequency of combat encounters in &lt;SPECIAL&gt;space&lt;&gt;, as well as their health.&#xA;&#xA;&lt;TRADE&gt;Minimal&lt;&gt;: 33% Random hostile encounter rate and 66% Enemy health&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Random hostile encounter rate and Enemy health&#xA;&lt;FUEL&gt;Hostile&lt;&gt;: 150% Random hostile encounter rate and 133% Enemy health&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: &lt;SPECIAL&gt;Space&lt;&gt; combat is the &lt;RED&gt;most dangerous&lt;&gt; aspect of &lt;SPECIAL&gt;PTSd&lt;&gt;. Bribing &lt;RED&gt;pirates&lt;&gt; or the &lt;TECHNOLOGY&gt;Emergency Warp Unit&lt;&gt; will let you avoid battles you can't yet outrun.&#xA;Having a Class &lt;TECHNOLOGY&gt;B&lt;&gt;+ starship, a &lt;COMMODITY&gt;supercharged&lt;&gt; &lt;TECHNOLOGY&gt;weapon tech&lt;&gt; with multiple &lt;HIGHLIGHT&gt;upgrade modules&lt;&gt;, and a stack of &lt;CATALYST&gt;Sodium&lt;&gt;/&lt;CATALYST&gt;Sodium Nitrate&lt;&gt; or a dozen &lt;CATALYST&gt;Starshield Batteries&lt;&gt; is &lt;STELLAR&gt;highly recommended&lt;&gt; before engaging in space combat.&#xA;A secondary (&lt;COMMODITY&gt;supercharged&lt;&gt;) weapon besides the &lt;TECHNOLOGY&gt;Rocket Launcher&lt;&gt;, &lt;COMMODITY&gt;supercharged&lt;&gt; weapon &lt;HIGHLIGHT&gt;upgrades&lt;&gt; with &lt;TECHNOLOGY&gt;firerate&lt;&gt; bonuses, &lt;CATALYST&gt;shield&lt;&gt; upgrades, or &lt;STELLAR&gt;squadron pilots&lt;&gt; can improve effectiveness.]]

TechDamageDesc =
[[Installed &lt;TECHNOLOGY&gt;Technology Modules&lt;&gt; enhance and protect the Exosuit, Starship, and Exocraft. However, extreme environmental and combat conditions can cause these modules to become &lt;FUEL&gt;damaged&lt;&gt;.&#xA;&#xA;Your shield greatly reduces the chance of technology breaking while it remains active, and provides even better protection against tech breakage the closer it is to being full.&#xA;&#xA;This setting scales the probability of breakages to installed technology when receiving damage.&#xA;&#xA;&lt;TRADE&gt;Minimal&lt;&gt;: Low chance of tech damage&#xA;&lt;FUEL&gt;Challenging&lt;&gt;: 650% Higher chance of tech damage&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: In &lt;SPECIAL&gt;PTSd&lt;&gt; you can install up to &lt;HIGHLIGHT&gt;5&lt;&gt; of the same type of &lt;HIGHLIGHT&gt;upgrade module&lt;&gt; in the same &lt;TECHNOLOGY&gt;technology inventory&lt;&gt; instead of only 3. This also allows more opportunities for greater &lt;TECHNOLOGY&gt;adjacency bonuses&lt;&gt; between slots with matching &lt;TECHNOLOGY&gt;tech&lt;&gt; or &lt;HIGHLIGHT&gt;upgrades&lt;&gt;.]]

DeathConsequencesDesc =
[[&lt;STELLAR&gt;No Item Loss&lt;&gt; will display the death screen, then resume play with no further consequences.&#xA;&#xA;&lt;STELLAR&gt;Standard&lt;&gt; will drop all carried inventory items (from your exosuit when on foot, or from your exocraft or starship if riding one) into a grave at the location of death. If the grave is reached before dying again or quitting, the items can be recovered.&#xA;&#xA;&lt;STELLAR&gt;Items Destroyed&lt;&gt; will permanently lose all carried inventory items (from your exosuit when on foot, or from your exocraft or starship if riding one).&#xA;&#xA;&lt;STELLAR&gt;Save Deleted&lt;&gt; is &lt;FUEL&gt;permadeath&lt;&gt; mode, where death will mean the end of your current journey. This option can only be selected when starting a new game, and cannot be changed later.&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: Periodic backups recommended for &lt;SPECIAL&gt;PTSd&lt;&gt; in &lt;FUEL&gt;permadeath&lt;&gt; mode in case of unexpected deaths from mod-glitches]]

GoodsAvailableDesc =
[[&lt;TECHNOLOGY&gt;Trade Terminals&lt;&gt; in different star systems will stock a wide range and quantity of items.&#xA;&#xA;This setting scales the amount on offer, as well as restricting the purchase of some critical survival elements.&#xA;&#xA;&lt;TRADE&gt;Abundant&lt;&gt;: No restrictions on items sold&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: Oxygen, Sodium, Sodium Nitrate, Carbon, and Condensed Carbon no longer sold in most shops&#xA;&lt;FUEL&gt;Scarce&lt;&gt;: In addition to the &lt;TECHNOLOGY&gt;Standard&lt;&gt; restrictions, Ion Battery, Life Support Gel, Di-hydrogen, Ferrite Dust, Cobalt, Ionised Cobalt, Salt, Chlorine, Uranium, and Copper no longer sold in most shops&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: In &lt;SPECIAL&gt;PTSd&lt;&gt; the purchase price of all these items are &lt;STELLAR&gt;greatly increased&lt;&gt; on any setting, so even on the &lt;TRADE&gt;Abundant&lt;&gt; setting staying stocked only through purchasing items will cost a &lt;STELLAR&gt;significant&lt;&gt; amount of units.]]

InvStackLimitDesc =
[[Gathered resources are stored in your &lt;STELLAR&gt;Inventory&lt;&gt;, which has a limited number of slots. Multiple items of the same type can be stored in one slot.&#xA;&#xA;This setting scales the &lt;TECHNOLOGY&gt;capacity of individual inventory slots&lt;&gt;, allowing more items to be carried. For any setting, the stacksize of slots in various inventories will be as follows:&#xA;&#xA;&lt;HIGHLIGHT&gt;1x&lt;&gt;: Exosuit&#xA;~&lt;HIGHLIGHT&gt;1.5x&lt;&gt;: Exocraft&#xA;&lt;HIGHLIGHT&gt;2x&lt;&gt;: Refiners, Starships&#xA;&lt;HIGHLIGHT&gt;4x&lt;&gt;: Freighter, Storage Containers&#xA;&#xA;&lt;TRADE&gt;Spacious&lt;&gt;: Default stack of 1,000 Substances or 8 Products&#xA;&lt;TECHNOLOGY&gt;Restricted&lt;&gt;: Default stack of 500 Substances or 5 Products&#xA;&lt;FUEL&gt;Harsh&lt;&gt;: Default stack of 300 Substances or 3 Products&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: When changing from a larger to a smaller stacksize, you will lose some items in any stacks which are currently larger than the new stack limit]]

InvStackLimitEasy =
[[Spacious]]		--Standard

RepAndStandingDesc =
[[&lt;SPECIAL&gt;Standing&lt;&gt; is a measure of your reputation with the aliens factions that populate the galaxy. Higher standing will offer greater opportunities, such as available missions.&#xA;&#xA;This setting scales how quickly standing is gained by impressing a faction. It does not impact how quickly standing is lost.&#xA;&#xA;&lt;HIGHLIGHT&gt;Very Fast&lt;&gt;: 400% Standing and Reputation Gains&#xA;&lt;TRADE&gt;Fast&lt;&gt;: 200% Standing and Reputation Gains&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 100% Standing and Reputation Gains&#xA;&lt;FUEL&gt;Challenging&lt;&gt;: 50% Standing and Reputation Gains]]

FishTimingDesc =
[[This setting increases or decreases the length of time in which to react to a &lt;STELLAR&gt;fish biting on your line&lt;&gt;.&#xA;&#xA;&lt;HIGHLIGHT&gt;Auto-Catch&lt;&gt;: Will automatically snare any fish that bites without requiring any additional button presses or timing.&#xA;&lt;TRADE&gt;Relaxed&lt;&gt;: 3 second window.&#xA;&lt;TECHNOLOGY&gt;Standard&lt;&gt;: 1 second window.&#xA;&lt;FUEL&gt;Challenging&lt;&gt;: 0.67 second window.]]

TutorialEnableDesc = [[The story prologue introduces basic mechanics, controls, and game features. Enabling the tutorial is &lt;STELLAR&gt;highly recommended&lt;&gt; for new players.&#xA;&#xA;In &lt;SPECIAL&gt;PTSd&lt;&gt;, the tutorial may still be of interest to returning players as it is made &lt;FUEL&gt;particularly challenging&lt;&gt; with changes such as spawning you &lt;STELLAR&gt;quite far away&lt;&gt; from your crashed starship, etc.&#xA;&#xA;When starting the tutorial, it is &lt;HIGHLIGHT&gt;strongly recommended&lt;&gt; to immediately seek shelter in &lt;TRADE&gt;natural caves&lt;&gt;, or potentially any &lt;TECHNOLOGY&gt;artificial buildings&lt;&gt; that might be found nearby.&#xA;Aside from offering protection from &lt;FUEL&gt;hazardous environments&lt;&gt;, caves also often have special &lt;STELLAR&gt;minerals&lt;&gt; containing substances which can be crafted into &lt;CATALYST&gt;Ion Batteries&lt;&gt;, which are &lt;TRADE&gt;far more effective&lt;&gt; at recharging hazard protection than &lt;CATALYST&gt;Sodium&lt;&gt; alone. Additional &lt;FUEL&gt;Oxygen&lt;&gt; can also be harvested from &lt;TRADE&gt;hazardous flora&lt;&gt; both in caves or on the surface.&#xA;&#xA;This setting can only be changed when starting a new game.]]

AbandonedModeNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: In &lt;SPECIAL&gt;PTSd&lt;&gt;'s &lt;FUEL&gt;Abandoned Mode&lt;&gt; you can still learn the &lt;TRADE&gt;Creature Pellets&lt;&gt; recipe from Buried Caches or at the Anomaly or Base unlock trees, a new tech to access &lt;SPECIAL&gt;Discordant Interfaces&lt;&gt; from boxes in Abandoned Stations, and a small chance to learn &lt;FUEL&gt;Atlas Seed&lt;&gt; recipes from those same boxes.]]
 
HyperdriveAccessNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: In &lt;SPECIAL&gt;PTSd&lt;&gt; it's recommended to choose &lt;STELLAR&gt;Specialised&lt;&gt; since the ability to craft many techs or objects is now tied to accessing the special stellar metals from different colour star systems.]]

SalvageConfirm =
[[&lt;FUEL&gt;WARNING:&lt;&gt; starship '&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;' will be destroyed along with all cargo.&lt;NEWLINE&gt;Select desired &lt;TECHNOLOGY&gt;customisation module&lt;&gt; to confirm salvage operation...&lt;NEWLINE&gt;Does not work on &lt;FUEL&gt;Living&lt;&gt; or &lt;FUEL&gt;Interceptor&lt;&gt; starships]]

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

UI_DIFFICULTY_DIFFICULTY_DESC =
[[Most difficulty settings can be changed at any time, as often as you wish.&#xA;&#xA;Some settings can only be changed before starting a new game. Select &quot;Custom&quot; when choosing a new game to fully customise these settings.&#xA;&#xA;Note that difficulty cannot be changed while a multiplayer mission is active.&#xA;&#xA;&lt;HIGHLIGHT&gt;Survival&lt;&gt;: The default &lt;SPECIAL&gt;PTSd&lt;&gt; experience&#xA;&#xA;&lt;TECHNOLOGY&gt;Normal&lt;&gt;: &lt;SPECIAL&gt;PTSd&lt;&gt; Lite, with key things such as damage and hazards reduced&#xA;&#xA;&lt;TRADE&gt;Relaxed&lt;&gt;: Closer to the vanilla level of challenge but still with the &lt;SPECIAL&gt;PTSd&lt;&gt; rebalancing of rewards, starships, weapons, etc.&#xA;&#xA;&lt;FUEL&gt;Permadeath&lt;&gt;: Periodic backups recommended in case of unexpected deaths from mod-glitches]]

GAMEMODE_SURVIVAL_SUBTITLE =
[[A survival challenge: the default PTSd experience intended to be challenging but generally fair]]

GAMEMODE_SURVIVAL_SUB_SHORT =
[[A survival challenge: the default PTSd experience]]

GAMEMODE_NORMAL_SUBTITLE =
[[An infinite journey: PTSd Lite, with key things such as damage and hazard reduced. Explore and survive in a boundless universe]]

GAMEMODE_NORMAL_SUB_SHORT =
[[An infinite journey: PTSd Lite]]

GAMEMODE_RELAXED_SUBTITLE =
[[A streamlined experience: fewer systems to manage, lower costs, closer to the vanilla level of challenge but still with the PTSd rebalancing of rewards, etc.]]

GAMEMODE_PERMADEATH_SUBTITLE =
[[Extreme survival challenge: save is wiped upon death. Recommended to make periodic backups in case of deaths due to unexpected or glitched modded behavior]]

GAMEMODE_PERMADEATH_SUB_SHORT =
[[Extreme survival challenge: Periodic backups recommended]]

UpgradeModDetail4 =
[[Every core technology can support &lt;TECHNOLOGY&gt;five&lt;&gt; upgrade modules]]

TechGuide =
[[Visit the &lt;STELLAR&gt;Marketplace&lt;&gt; aboard most Space Stations to find a wide array of merchants. Technology merchants will sell &lt;VAL_ON&gt;Upgrade Modules&lt;&gt;. Upgrade your Exosuit, starship and Multi-Tool inventories aboard Space Stations.&#xA;&#xA;&lt;TECHNOLOGY&gt;Blueprints&lt;&gt; allow you to craft new technologies. Purchase blueprints aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;.&#xA;You will have to find the materials yourself, but you will always be able to install the technology in your Exosuit, or any &lt;STELLAR&gt;starship&lt;&gt; or &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; you own.&#xA;&#xA;&lt;VAL_ON&gt;Upgrade Modules&lt;&gt; are one-off purchases. They upgrade a specific &lt;VAL_ON&gt;Exosuit&lt;&gt;, &lt;STELLAR&gt;starship&lt;&gt; or &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; technology you have already installed. Each upgrade has slightly different properties, and users are advised to experiment with different configurations.&#xA;Install an Upgrade Module by selecting it in the Inventory with &lt;IMG&gt;FE_ALT1&lt;&gt; and deploying it to an empty &lt;TECHNOLOGY&gt;Technology Slot&lt;&gt; with &lt;IMG&gt;SELECT&lt;&gt;.&#xA;&#xA;Upgrades installed adjacent to other upgrades of the same type will provide an additional boost, further improving device performance.&#xA;&#xA;You cannot have more than &lt;FUEL&gt;five&lt;&gt; upgrades active for the same technology subsystem. Doing so will cause the upgrades to become non-functional until sufficient modules are removed to restore power.]]

FossilGuide =
[[Some worlds are rich in &lt;STELLAR&gt;fossil beds&lt;&gt;. Travellers can exhume the &lt;STELLAR&gt;ancient bones&lt;&gt; of long-extinct creatures for collection, preservation, and display.&#xA;&#xA;To assemble a fossil, first acquire the blueprints for a &lt;TECHNOLOGY&gt;Fossil Display&lt;&gt; from the &lt;TECHNOLOGY&gt;Construction Research Station&lt;&gt; aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;. A &lt;TECHNOLOGY&gt;Fossil Display&lt;&gt; requires &lt;STELLAR&gt;Polished Stone&lt;&gt; found on &lt;TECHNOLOGY&gt;ruined worlds&lt;&gt; and can be deployed anywhere on a planetary surface, or within a freighter base.&#xA;&#xA;Once a display is deployed, &lt;STELLAR&gt;ancient bones&lt;&gt; can be arranged upon it to re-create countless animal forms. A complete fossil requires a &lt;STELLAR&gt;skull&lt;&gt;, a &lt;STELLAR&gt;ribcage&lt;&gt;, two sets of &lt;STELLAR&gt;limbs&lt;&gt;, and a &lt;STELLAR&gt;tail&lt;&gt;.&#xA;&#xA;Create a museum of assembled fossils at your base, or &lt;STELLAR&gt;package&lt;&gt; your exhibits for trade on the open market, or with other Travellers. Find alien &lt;STELLAR&gt;Fossil Collectors&lt;&gt; to trade with aboard &lt;STELLAR&gt;Space Stations&lt;&gt;, or at planetary &lt;STELLAR&gt;Palaeontological Digs&lt;&gt;.]]

ExhibitDesc =
[[%CRE_DESC%&#xA;&#xA;This &lt;STELLAR&gt;curated fossil exhibit&lt;&gt; can be traded, but &lt;FUEL&gt;selling it is frowned upon&lt;&gt; among archaeologists, as it &lt;HIGHLIGHT&gt;belongs in a museum&lt;&gt;, or re-deployed within a &lt;TECHNOLOGY&gt;base&lt;&gt;.]]

AutoPosUnitDesc =
[[A container of positioning units and associated wiring, produced in a system with a &lt;TECHNOLOGY&gt;high-tech&lt;&gt; economy.&#xA;&#xA;These APS units can be used to turn virtually any technology into a self-navigating system. Highly valuable in &lt;SPECIAL&gt;power generation&lt;&gt; economies, where they're used to remove conductive organic hands from the manufacturing process.]]

TutorialDesc1 =
[[I find myself alone on a strange world, unequipped and in danger. I have no memory of how I got here, no sense of a before.&#xA;&#xA;My Exosuit at least seems to know what it is doing, and I am not dead yet...&#xA;&#xA;I should find a &lt;TRADE&gt;cave&lt;&gt; as &lt;FUEL&gt;soon as possible&lt;&gt;, to seek shelter from the &lt;CATALYST&gt;harsh environment&lt;&gt; and find &lt;STELLAR&gt;useful ingredients&lt;&gt;.]]

TutorialTip1 =
[[The &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; is a critical piece of survival equipment.&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to locate nearby resources for &lt;FUEL&gt;Life Support&lt;&gt; and &lt;COMMODITY&gt;Hazard Protection&lt;&gt; systems.&#xA;&#xA;Find a &lt;TRADE&gt;cave&lt;&gt; as &lt;FUEL&gt;soon as possible&lt;&gt;, to seek shelter from the &lt;CATALYST&gt;harsh environment&lt;&gt; and find &lt;STELLAR&gt;useful ingredients&lt;&gt; for crafting &lt;CATALYST&gt;Ion Batteries&lt;&gt; to recharge hazard protection.]]

TutorialTip2 =
[[Use &lt;EARTH&gt;Ferrite Dust&lt;&gt; to repair the Scanner. Gather metal from mineral deposits.&#xA;Use &lt;IMG&gt;ATTACK&lt;&gt; to fire the Mining Beam at nearby minerals.&#xA;Systems are repaired from the inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;&#xA;Seek shelter from the &lt;CATALYST&gt;harsh environment&lt;&gt; in &lt;TRADE&gt;caves&lt;&gt;, where &lt;STELLAR&gt;useful ingredients&lt;&gt; can be found.]]

TutorialTip3 =
[[The crash site may hold clues as to what has happened. At the very least, it should contain salvageable items.&#xA;The damaged starship appears the best starting point.&#xA;&#xA;However, I should first find a &lt;TRADE&gt;cave&lt;&gt; as &lt;FUEL&gt;soon as possible&lt;&gt;, to seek shelter from the &lt;CATALYST&gt;harsh environment&lt;&gt; and find &lt;STELLAR&gt;useful ingredients&lt;&gt; for crafting &lt;CATALYST&gt;Ion Batteries&lt;&gt; to recharge hazard protection.]]

TutorialMessage1 =
[[Reach the marked signal, shelter in &lt;TRADE&gt;caves&lt;&gt; as needed: 0 / 1&#xA;Exosuit detected &lt;STELLAR&gt;automated signal broadcast&lt;&gt;]]

TutorialMessage3 =
[[Reach the marked signal, shelter in &lt;TRADE&gt;caves&lt;&gt; as needed: 0 / 1&#xA;Exosuit detected &lt;STELLAR&gt;automated signal broadcast&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to highlight &lt;COMMODITY&gt;key resources&lt;&gt;]]

VehicleLaserDamage =
[[Exocraft Laser Power]]		--Mining Laser Power

VehicleBoostTanks =
[[Exocraft Boost Tank]]			--Boost Tank Size

WeaponScanRecharge =
[[Scanner Recharge Time]]		--Recharge Time

DifficultyMenu =
[[Difficulty &amp; PTSd Info]]		--Difficulty

DifficultyMenuTitle =
[[DIFFICULTY SETTINGS &amp; PTSD INFO]]		--DIFFICULTY SETTINGS

DifficultyMenuTitleLower =
[[Difficulty Settings &amp; PTSd Info]]		--Difficulty Settings

SuperchargedSlotDesc =
[[This tech has been &lt;COMMODITY&gt;supercharged&lt;&gt; by this slot's high-voltage nano-wires, especially any (&lt;TECHNOLOGY&gt;multiplicative&lt;&gt; stats on it.)]]

ShorterIngestorDesc =
[[The nutrient ingestor improves &lt;TECHNOLOGY&gt;performance&lt;&gt; via the automatic processing of &lt;STELLAR&gt;cooked items&lt;&gt;.&#xA;&#xA;Select &lt;COMMODITY&gt;Begin Ingestion&lt;&gt; to commence automatic consumption of supplied ingredients.]]

ShorterIngestorIdleDesc =
[[Select &lt;COMMODITY&gt;Begin Ingestion&lt;&gt; to start automatic consumption of food items.&#xA;&#xA;Pending Nutrition Source: &lt;%NAMETAG%&gt;%NAME%&lt;&gt;&#xA;Duration: &lt;%TIMETAG%&gt;%TIME%&lt;&gt;&#xA;Effect: &lt;%EFFECTTAG%&gt;%EFFECT%&lt;&gt;]]

ShorterIngestorActiveDesc =
[[The nutrient ingestor improves &lt;TECHNOLOGY&gt;performance&lt;&gt; via the automatic processing of &lt;STELLAR&gt;cooked items&lt;&gt;.&#xA;&#xA;Current Nutrition Source: &lt;%NAMETAG%&gt;%NAME%&lt;&gt;&#xA;Duration: &lt;%TIMETAG%&gt;%TIME%&lt;&gt;&#xA;Effect: &lt;%EFFECTTAG%&gt;%EFFECT%&lt;&gt;]]

SettleOverviewGuide =
[[Assist the local population in the construction of a &lt;STELLAR&gt;planetary settlement&lt;&gt;. Perform key actions at the &lt;STELLAR&gt;Settlement Interface&lt;&gt; or in the &lt;STELLAR&gt;Overseer's Office&lt;&gt;.&#xA;&#xA;As overseer of a settlement, you will make key decisions, direct the &lt;TRADEABLE&gt;construction of buildings&lt;&gt;, and resolve &lt;SPECIAL&gt;disputes&lt;&gt; between citizens. A well-managed settlement will produce &lt;STELLAR&gt;surplus resources&lt;&gt; to collect. However, unproductive settlements may go into &lt;FUEL&gt;debt&lt;&gt;. Construct new buildings and set new policies from the Overseer's office to turn the settlement around, reduce its debts and improve the lives of its citizens.&#xA;&#xA;Warning: settlements will periodically attract the attention of Sentinel forces. Check the current Sentinel alert level from the settlement management interface. The Overseer may have to defend the settlement against Sentinel attacks.]]

SettleOverviewA =
[[Assist the local population in the construction of a &lt;STELLAR&gt;planetary settlement&lt;&gt;. Perform key actions at the &lt;STELLAR&gt;Settlement Interface&lt;&gt; or in the &lt;STELLAR&gt;Overseer's Office&lt;&gt;.&#xA;&#xA;As overseer of a settlement, you will make key decisions, direct the &lt;TRADEABLE&gt;construction of buildings&lt;&gt;, and resolve &lt;SPECIAL&gt;disputes&lt;&gt; between citizens. A well-managed settlement will produce &lt;STELLAR&gt;surplus resources&lt;&gt; to collect.]]

SettleOverviewB =
[[Assist the local population in the construction of their &lt;STELLAR&gt;planetary settlement&lt;&gt; on %PLANET%. Perform key actions at the &lt;STELLAR&gt;Settlement Interface&lt;&gt; or in the &lt;STELLAR&gt;Overseer's Office&lt;&gt;.&#xA;&#xA;As Overseer of %SETTLEMENT%, you will make key decisions, direct the &lt;TRADEABLE&gt;construction of buildings&lt;&gt;, and resolve &lt;SPECIAL&gt;disputes&lt;&gt; between citizens. A well-managed settlement will produce &lt;STELLAR&gt;surplus resources&lt;&gt; to collect - and most settlement buildings also provide &lt;STELLAR&gt;practical utility&lt;&gt;.]]

SettleOverviewNote = [[&#xA;&#xA;&lt;TRADE&gt;Gek&lt;&gt; specialize in &lt;CATALYST&gt;Trade Goods&lt;&gt; and produce other items &lt;TRADE&gt;quickly&lt;&gt;, but can only stockpile &lt;FUEL&gt;1.5 days&lt;&gt; worth of items. &lt;FUEL&gt;Vy'Keen&lt;&gt; specialize in &lt;TRADE&gt;Crops&lt;&gt; and produce other items &lt;FUEL&gt;slowly&lt;&gt;, but can stockpile &lt;TRADE&gt;6 days&lt;&gt; of items. &lt;TECHNOLOGY&gt;Korvax&lt;&gt;/&lt;SPECIAL&gt;Autophage&lt;&gt; specialize in &lt;FUEL&gt;Fuels&lt;&gt;/&lt;STELLAR&gt;Crafting Ingredients&lt;&gt; and produce other items at &lt;TECHNOLOGY&gt;standard&lt;&gt; rates, able to stockpile &lt;TECHNOLOGY&gt;3 days&lt;&gt; of items.]]

SettleExpedNote = [[ &lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Expeditions have a &lt;FUEL&gt;15%&lt;&gt; chance of failure.]]

NaniteRefineItem = [[&#xA;&#xA;Can be processed into &lt;STELLAR&gt;nanites&lt;&gt; in a refiner]]

SalDataRefineItem = [[, or refined together with &lt;STELLAR&gt;Microprocessors&lt;&gt; to create a matching amount of &lt;TECHNOLOGY&gt;Salvaged Data&lt;&gt;.]]

SpaceGunkRefineItem = [[&#xA;&#xA;Processing in a refiner could eventually result in something &lt;STELLAR&gt;more useful&lt;&gt;...]]

MiningYieldExplain = [[&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: &lt;HIGHLIGHT&gt;Substance yield&lt;&gt; is further boosted by the &lt;TECHNOLOGY&gt;Mining&lt;&gt; stat bonus for your Multi-Tool's type.]]

ScanValueExplain = [[&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: &lt;TECHNOLOGY&gt;Discovery data&lt;&gt;'s value is further boosted by the &lt;CATALYST&gt;Scanning&lt;&gt; stat bonus for your Multi-Tool's type.]]

SpeedBoostExplain = [[&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Actual strength of &lt;STELLAR&gt;Boost Speed&lt;&gt; bonuses are roughly &lt;TRADE&gt;twice&lt;&gt; what is listed on the upgrade.]]

SpeedBoostLivingLauncher = [[ Also improves &lt;STELLAR&gt;speed&lt;&gt;.]]

RedeemExpeditionShipNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: You can &lt;FUEL&gt;delete&lt;&gt; all pre-installed &lt;STELLAR&gt;tech and upgrade modules&lt;&gt; in this ship if you wish to use it without affecting game balance or progression.]]

RedeemExpeditionLivingShipNote = [[&#xA;&lt;FUEL&gt;NOTE ALSO&lt;&gt;: You can avoid visiting &lt;FUEL&gt;red&lt;&gt;/&lt;TRADE&gt;green&lt;&gt;/&lt;TECHNOLOGY&gt;blue&lt;&gt; stars with this ship until you have obtained the relevant &lt;TECHNOLOGY&gt;hyperdrive tech&lt;&gt; or standard &lt;STELLAR&gt;Living Ship&lt;&gt; if you wish to avoid sequence-breaking the progression.]]

RedeemExpeditionToolNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: You can &lt;STELLAR&gt;Exchange&lt;&gt; any non-Pistol, non-Rifle Multi-Tool for this tool and then &lt;FUEL&gt;delete&lt;&gt; most pre-installed &lt;STELLAR&gt;tech and upgrade modules&lt;&gt; in this tool if you wish to use it without affecting game balance or progression.]]

LoadedNutrientIngestorDetail = [[ - &lt;RED&gt;IGNORE THE&lt;&gt; # &lt;RED&gt;VALUE&lt;&gt;]]

NutrientIngestorNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Bonus &lt;RED&gt;only&lt;&gt; applies to &lt;TECHNOLOGY&gt;tech&lt;&gt; or &lt;HIGHLIGHT&gt;upgrades&lt;&gt; placed in &lt;COMMODITY&gt;supercharged&lt;&gt; slots, and is &lt;STELLAR&gt;always&lt;&gt; a ~&lt;TRADE&gt;1.83x&lt;&gt; (~&lt;TRADE&gt;+83%&lt;&gt;) &lt;TECHNOLOGY&gt;multiplicative&lt;&gt; bonus.]]

RaggedTentNote = [[ &lt;STELLAR&gt;Star Silk&lt;&gt; can be purchased in systems with &lt;SPECIAL&gt;trading&lt;&gt; economies.]]

TempShelterNote = [[&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: If using as temporary shelter outside of a &lt;TECHNOLOGY&gt;base&lt;&gt;, be sure not to leave it behind if you won't be revisiting that location.]]

ExocraftGeobayNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Riding in the cockpit of any &lt;TECHNOLOGY&gt;Exocraft&lt;&gt; will provide &lt;STELLAR&gt;significant&lt;&gt; environmental protection, &lt;HIGHLIGHT&gt;tripling&lt;&gt; hazard survival times.]]

MinotaurNautilonBayNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Due to the &lt;STELLAR&gt;perfectly sealed nature&lt;&gt; of its cockpit, this exocraft provides &lt;HIGHLIGHT&gt;complete protection&lt;&gt; from all environmental hazards such as &lt;FUEL&gt;heat&lt;&gt; or &lt;TRADE&gt;toxins&lt;&gt;.]]

ExoCannonNote = [[&#xA;&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: Ensure targets are &lt;TECHNOLOGY&gt;sufficiently far&lt;&gt; from the exocraft, as the &lt;STELLAR&gt;explosive nature&lt;&gt; of shots can cause potentially &lt;FUEL&gt;fatal damage&lt;&gt; to the user in close quarters.]]

HardFrameLArmNote = [[&#xA;&#xA;Any bonuses to &lt;STELLAR&gt;Exocraft Laser Power&lt;&gt; will increase the damage the &lt;TECHNOLOGY&gt;Minotaur Laser&lt;&gt; deals to enemies.]]

RecCircBrokenSlotNote = [[&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Inspecting this slot with &lt;IMG&gt;REPAIR&lt;&gt; may reveal additional &lt;TECHNOLOGY&gt;Recycled Circuitry&lt;&gt; that may be required to fully repair this slot.]]

SimpleFoodNote = [[&#xA;&#xA;Will restore a small amount of &lt;FUEL&gt;Exosuit health&lt;&gt; if &lt;STELLAR&gt;consumed directly&lt;&gt;.]]

AresTradeItem3 = "Sea Glass"

AresTradeItem4 = "Glowing Minerals"

AresTradeItem6 = "Pirate Transponders"

function AresTradeOffer (ItemName)
    return
[[Traveller hopes to make progress. Traveller tests themselves. I will help. An exchange. Progress for progress.&#xA;Or wealth, perhaps. Experience or materials. Both valid. Today... &lt;STELLAR&gt;]]..ItemName..[[&lt;&gt;.]]
end

function AresTradeItem (NaniteAmount)
    return
[[&#xA;&#xA;Can sometimes be exchanged for &lt;HIGHLIGHT&gt;]]..NaniteAmount..[[&lt;&gt; &lt;STELLAR&gt;nanites&lt;&gt; to a &lt;SPECIAL&gt;certain traveller&lt;&gt; known to collect such things.]]
end

AresTradeItemDescs =
{
	{
		{1},		--"LANGUAGE\NMS_LOC1_ENGLISH.MBIN",
		{
			{"NEWPROD11_DESC", "some"},
		}
	},
	{
		{2},		--"LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
		{
			{"UI_STORMCRYSTAL_DESC", "many"},
			{"UI_CLAMPEARL_DESC", "a moderate amount of"},
		}
	},
	{
		{4},		--"LANGUAGE\NMS_LOC6_ENGLISH.MBIN",
		{
			{"UI_GEODE_RARE_DESC", "a moderate amount of"},
		}
	},
	{
		{6},		--"LANGUAGE\NMS_LOC8_ENGLISH.MBIN",
		{
			{"UI_PIRATE_PROD_DESC", "many"},
		}
	},
	{
		{7},		--"LANGUAGE\NMS_LOC9_ENGLISH.MBIN",
		{
			{"UI_DEEPSEA_PROD_DESC", "a great deal of"},
		}
	},
}

NaniteRefineItemDescs =
{
	{
		{1},		--"LANGUAGE\NMS_LOC1_ENGLISH.MBIN",
		{"SUB_DEADDRONE_DESC", }
	},
	{
		{2},		--"LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
		{"BP_SALVAGE_DESC", "UI_QUAD_PROD_DESC", "UI_WALKER_PROD_DESC", "UI_ASTEROID3_DESC", "UI_FIENDCORE_DESC", "UI_FISHCORE_DESC", }
	},
	{
		{4},		--"LANGUAGE\NMS_LOC6_ENGLISH.MBIN",
		{"UI_AF_METAL_DESC", }
	},
	{
		{5},		--"LANGUAGE\NMS_LOC7_ENGLISH.MBIN",
		{"UI_MECH_PROD_DESC", "UI_WORMCORE_DESC", "UI_WORMPROD_DESC", }
	},
	{
		{6},		--"LANGUAGE\NMS_LOC8_ENGLISH.MBIN",
		{"UI_SPIDER_PROD_DESC", "UI_DRONE_SALVAGE_DESC", "UI_DRONE_SHARD_DESC", "UI_SHIP_BRAIN_DESC", }
	},
	{
		{8},		--"LANGUAGE\NMS_UPDATE3_ENGLISH.MBIN",
		{"UI_NAV_DATA_DESC", "UI_NAV_DROPPOD_DESC", "UI_MAINTAIN_SUB2_DESC", }
	},
}

SalDataRefineItemDescs =
{
	{
		{2},		--"LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
		{"UI_QUAD_PROD_DESC", "UI_WALKER_PROD_DESC", "UI_FIENDCORE_DESC", "UI_FISHCORE_DESC", }
	},
	{
		{4},		--"LANGUAGE\NMS_LOC6_ENGLISH.MBIN",
		{"UI_AF_METAL_DESC", }
	},
	{
		{5},		--"LANGUAGE\NMS_LOC7_ENGLISH.MBIN",
		{"UI_MECH_PROD_DESC", "UI_WORMCORE_DESC", "UI_WORMPROD_DESC", }
	},
	{
		{6},		--"LANGUAGE\NMS_LOC8_ENGLISH.MBIN",
		{"UI_SPIDER_PROD_DESC", "UI_DRONE_SALVAGE_DESC", "UI_DRONE_SHARD_DESC", "UI_SHIP_BRAIN_DESC", }
	},
	{
		{8},		--"LANGUAGE\NMS_UPDATE3_ENGLISH.MBIN",
		{"UI_NAV_DATA_DESC", "UI_NAV_DROPPOD_DESC", "UI_MAINTAIN_SUB2_DESC", }
	},
}

SpaceGunkRefineItemDescs =
{
	{
		{8},		--"LANGUAGE\NMS_UPDATE3_ENGLISH.MBIN",
		{"UI_MAINTAIN_SUB1_DESC", "UI_MAINTAIN_SUB4_DESC", "UI_MAINTAIN_SUB5_DESC", "UI_MAINTAIN_SUB3_DESC", }
	},
}

ExhibitNote = [[ Mine &lt;STELLAR&gt;Polished Stone&lt;&gt; from ruins on &lt;TECHNOLOGY&gt;ruined worlds&lt;&gt;.]]

ExhibitDescIDs =
{"UI_FOS_QUAD_DESC", "UI_FOS_BI_DESC", "UI_FOS_WORM_DESC", "UI_FOS_BIRD_DESC", "UI_FOS_GRUN_DESC", "UI_FOS_RAW_DESC", "UI_FOS_SOLO_DESC", }

AtlasSeedAbandNote = [[&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: The recipes for Atlas Seeds can sometimes be found in &lt;TECHNOLOGY&gt;space stations&lt;&gt; within &lt;SPECIAL&gt;Abandoned Universes&lt;&gt;.]]

AtlasSeedDescIds =
{"ATLAS_SEED_1_DESC", "ATLAS_SEED_2_DESC", "ATLAS_SEED_3_DESC", "ATLAS_SEED_4_DESC", "ATLAS_SEED_5_DESC", "ATLAS_SEED_6_DESC", "ATLAS_SEED_7_DESC", "ATLAS_SEED_8_DESC", "ATLAS_SEED_9_DESC", "ATLAS_SEED_10_DESC", }

LessSuperchargeEffectNote = [[&#xA;&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Unlike most other weapons, both the &lt;TECHNOLOGY&gt;main tech&lt;&gt; and &lt;HIGHLIGHT&gt;upgrade modules&lt;&gt; for this weapon gain only &lt;STELLAR&gt;normal&lt;&gt; rather than &lt;HIGHLIGHT&gt;huge&lt;&gt; benefits from being &lt;COMMODITY&gt;supercharged&lt;&gt;.]]

LessSuperchargeEffectWeapons =
{
	{
		{1},		--"LANGUAGE\NMS_LOC1_ENGLISH.MBIN",
		{"RAILGUN1_DESCRIPTION", "GRENADE_DESCRIPTION", "SHIPBLOB_DESCRIPTION", "SHIPLAS1_DESCRIPTION"}
	},
	{
		{2},		--"LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
		{"T_GRENADE_DESC", }
	},
	{
		{8},		--"LANGUAGE\NMS_UPDATE3_ENGLISH.MBIN",
		{"SHIP_ROCKETS_DESC", }
	},
}

DurationHazNote = [[&#xA;&#xA;&lt;FUEL&gt;NOTE&lt;&gt;: Each instance of this upgrade will require recharging &lt;STELLAR&gt;individually&lt;&gt;, so unlike most &lt;HIGHLIGHT&gt;upgrade modules&lt;&gt; there is little benefit to installing &lt;TECHNOLOGY&gt;multiple&lt;&gt; copies.]]

DurationHazModuleIDs =
{"UP_RAD1_DESC", "UP_RAD2_DESC", "UP_RAD3_DESC", "UP_TOX1_DESC", "UP_TOX2_DESC", "UP_TOX3_DESC", "UP_COLDPROT1_DESC", "UP_COLDPROT2_DESC", "UP_COLDPROT3_DESC", "UP_HOTPROT1_DESC", "UP_HOTPROT2_DESC", "UP_HOTPROT3_DESC", "UP_UNW1_DESC", "UP_UNW2_DESC", "UP_UNW3_DESC", }

FlamethrowerUpgradeTexts =
{
	{
		"Significant",	"significant",	"TECHNOLOGY"
	},
	{
		"Powerful",	"extremely powerful",	"SPECIAL"
	},
	{
		"Supreme",	"supremely powerful",	"COMMODITY"
	},
}

FlameUpgradeName = [[EXOCRAFT FLAMETHROWER MODULE]]

FlameUpgradeNameLower = [[Exocraft Flamethrower Module]]

function FlameUpgradeSub (Level)
    return
Level..[[ Exocraft Weapon Upgrade]]
end

function FlameUpgradeDesc (level, style)
    return
[[A &lt;]]..style..[[&gt;]]..level..[[&lt;&gt; upgrade for all &lt;STELLAR&gt;Exocraft&lt;&gt; and &lt;TECHNOLOGY&gt;Minotaur Flamethrower Units&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;burn time&lt;&gt; and &lt;STELLAR&gt;fuel efficiency&lt;&gt;.&#xA;&lt;HIGHLIGHT&gt;NOTE&lt;&gt;: Actual strength of &lt;STELLAR&gt;Damage&lt;&gt; bonuses are much &lt;FUEL&gt;lower&lt;&gt; than what is listed on the upgrade.]]
end

function AppendText (Text)
    return
[[{:}]]..Text..[[]]
end

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,   
	--["EXML_CREATE"] = "FALSE",  
    ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_LOC1_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SCANBINOC1_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AnalysisVisorDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "LASER_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", MiningBeamDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "PROTECT_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", HazardProtectDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPLAS1_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PhaseBeamDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPGUN1_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PhotonCannonDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPSHOTGUN_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PositronEjectorDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BOLT_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", BoltcasterDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "ALL_FREIGHTER_RES_1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", FreeFreighterOffer}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "ALL_FREIGHTER_OPT_1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", FreeFreighterSelect}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "ALL_FAC_REWARD_OPT_A"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ManufacturingFacNanites}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_HARVESTER_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AMUDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "ACCESS2_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AtlasPass2Desc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "ACCESS3_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AtlasPass3Desc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NEWPROD11_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", VortexDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NEWPROD14_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PearlDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NEWPROD13_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GravDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NEWPROD12_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", VenomDesc}
							}
						},
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
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GAMEMODE_SURVIVAL_SUBTITLE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GAMEMODE_SURVIVAL_SUBTITLE}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GAMEMODE_SURVIVAL_SUB_SHORT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GAMEMODE_SURVIVAL_SUB_SHORT}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GAMEMODE_NORMAL_SUBTITLE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GAMEMODE_NORMAL_SUBTITLE}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GAMEMODE_NORMAL_SUB_SHORT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GAMEMODE_NORMAL_SUB_SHORT}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GAMEMODE_PERMADEATH_SUBTITLE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GAMEMODE_PERMADEATH_SUBTITLE}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GAMEMODE_PERMADEATH_SUB_SHORT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GAMEMODE_PERMADEATH_SUB_SHORT}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_PLANTER_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", HydroTrayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIOROOM_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", BioDomeDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "LAUNCHER_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", LauncherDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPJUMP_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PulseEngineDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPSHIELD_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DeflectShieldDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_M_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", RoamerBayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_L_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ColossusBayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_S_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NomadBayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_B_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PilgrimBayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_SUB_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NautilonBayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_M_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ExocraftGeobayNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_L_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ExocraftGeobayNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_S_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ExocraftGeobayNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_B_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ExocraftGeobayNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_SUB_DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MinotaurNautilonBayNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLEWEAPON_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ExoCannonNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLESCAN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ExoRadarDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WEAPON_SCAN_RECHARGE_TIME"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", WeaponScanRecharge}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_LOC4_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SUB_BINOCS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", BasicSonarDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLE_SUBSCAN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", Sonar}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "QUICK_MENU_SUB_RADAR"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SonarQuickMenu}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "QUICK_MENU_SUB_RADAR_MISSING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SonarQuickMenuFail}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_WATERMISSION3_MSG4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreamsDeep3Msg4}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_WATERMISSION3_OBJ3_TIP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreamsDeep3Obj3Tip}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "O2_HARVESTER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", OxygenHarvesterDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DOOR_ARMOUR"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ReinforcedDoor}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CARGO_POD_NAME"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CargoPod}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UT_ROCKETS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", LargeRocketTubesDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LASER1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MiningYieldExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LASER2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MiningYieldExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LASER3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MiningYieldExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LASER4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MiningYieldExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_SCANNER1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ScanValueExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_SCANNER2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ScanValueExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_SCANNER3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ScanValueExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_SCANNER4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ScanValueExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_PULSE1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_PULSE2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_PULSE3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_PULSE4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LAUNCH1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LAUNCH2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LAUNCH3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LAUNCH4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UT_LAUNCHER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", EffThrustersDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SUBGUN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ExoCannonNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIPSLOT_DMG_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RecCircBrokenSlotNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLE_LASERDAMAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", VehicleLaserDamage}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLE_BOOSTTANKS"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", VehicleBoostTanks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SUBLASER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ThethysBeamDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXO_SUMMON_POD_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ExoSummonStationDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_GUIDE_BODY_TECHNOLOGY"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TechGuide}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "FOOD_MEAT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SimpleFoodNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CORE_TUTORIAL1_OBJ0_TIP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TutorialTip1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FIRST_WALK_MSG3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TutorialMessage3}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_STORMCRYSTAL_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", StormCrystalDesc}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_LOC5_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_ANTIMATTER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AntimatterReactorDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NPC_NEXUSMILES_LANG_3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AresTradeOffer (AresTradeItem3)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NPC_NEXUSMILES_LANG_4"},
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
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_UPGRADES_DETAIL_LINE4"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", UpgradeModDetail4}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_LOC6_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_BIO_SHIP_MISSION1_MSG2B"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ConsciousnessBridgeMissionHint}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ABAND_LOCATOR_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ESSDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ABAND_FREIGHT_OBJ4_TIP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DerelictLootTip}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ABAND_FREIGHT_MSG7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DerelictCrewPopup}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ABAND_FREIGHT_MSG9"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DerelictLogPopup}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPLAS1_ALIEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GraftedEyesDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SOUL_LASER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AnimusBeamDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_LAVA1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", BasaltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ABAND_END_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DerelictEndDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ABAND_END_OPTA"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DerelictTech}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ABAND_END_OPTB"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DerelictNanites}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LASER_X_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MiningYieldExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_SCANNER_X_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ScanValueExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_PULSE_X_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UP_LAUNCH_X_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostLivingLauncher)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_PULSE4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BIO_PROD_LAUNCH4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SpeedBoostExplain)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_SHIP_01_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_SWAMPPLANT_3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (TempShelterNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPJUMP_ALIEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PulsingHeartDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "LAUNCHER_ALIEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NeuralAssemblyDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPSHIELD_ALIEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ScreamSuppDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIPGUN1_ALIEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SpewVentsDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_MECH_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", MinotaurBayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_MECH_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MinotaurNautilonBayNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_MECH_GUN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (ExoCannonNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_MECH_LASER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", MinotaurLaserDesc}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_LOC7_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CARGO_S_ALIEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NeuralShieldDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SCAN_BLOCKER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CargoScanDefDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_FRE_ROOM_SCAN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ScannerRoomDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_FRE_ROOM_VEHICLE_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", OrbExoMatRoomDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "MP_HIVE_LANG"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SentPillarLeftPane}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SENTINEL_HIVE_SETUP_LANG"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SentPillarLeftPane}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SOLAR_SAIL_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", VesperSailDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "HAZARD_DRAIN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SurvivalDiffDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "RUNNING_DRAINS_STAMINA_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SprintingDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SUBSTANCE_COLLECTION_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", NatResourcesDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CHARGING_REQUIREMENTS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", FuelUsageDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SCANNER_RECHARGE_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ScanRechargeDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CURRENCY_COST_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PurchasesDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DAMAGE_RECEIVED_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DamageLevelsDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DAMAGE_GIVEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", EnemyStrengthDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GROUND_COMBAT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GroundCombatDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_COMBAT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SpaceCombatDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXTRA_TECH_DAMAGE_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TechDamageDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DEATH_CONSEQUENCES_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DeathConsequencesDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "ITEM_SHOP_AVAILABILTY_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GoodsAvailableDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "INVENTORY_STACK_LIMITS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", InvStackLimitDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "INV_SIZE_EASY"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", InvStackLimitEasy}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "REPUTATION_GAIN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", RepAndStandingDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_DIFFICULTY_DIFFICULTY_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", UI_DIFFICULTY_DIFFICULTY_DESC}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "GAMEMODE_RELAXED_SUBTITLE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GAMEMODE_RELAXED_SUBTITLE}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_JUDGEMENT_MISSION_DETAIL%d*"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SettleExpedNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARP_DRIVE_REQUIREMENTS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (HyperdriveAccessNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_FRE_ROOM_PLANT1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CultChamberDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_FRE_ROOM_PLANT0_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DoubleCultChamberDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TUTORIAL_ENABLED_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TutorialEnableDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_TECH_BOOST_BODY"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SuperchargedSlotDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_MECH_SENT_L_ARM_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (HardFrameLArmNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CREATURE_HOSTILITY_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PredatorsDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_OPTIONS_DIFFICULTY"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DifficultyMenuTitle}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_OPTIONS_DIFFICULTY_L"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DifficultyMenuTitleLower}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_GUIDE_BODY_SETTLEMENTS"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SettleOverviewGuide}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SETTLEMENT_MISS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SettleOverviewA}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_GUIDE_BODY_SETTLEMENTS"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SettleOverviewNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SETTLEMENT_MISS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SettleOverviewNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PIRATE_RAID_OSD"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PirateRaidBuildingWarning}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PIRATE_RAID_OSD_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PirateRaidWarning}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_LOC8_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SENT_LASER_NAME_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", HijackedLaserDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ATLAS_LASER_NAME_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", RunicLensDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SCANBINOC1_DESCRIPTION_VR"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AnalysisVisorDescVR}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SLOT_PURCHASE_SUB"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", BuyNewSlot}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SLOT_PURCHASE_SUB_NUM"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", BuyNewSlotMP}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_UI_PIRATE_SHIP_TITLE_C"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", PirateFrigate}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_BATTLE_BAR_SHIELD_HINT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreadnoughtHUDHint}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PIRATE_FREI_MSG7"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreadnoughtSurrenderFull}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_BATTLE_BAR_DEFEAT_HINT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreadnoughtBoardDestroy}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PIRATE_FREI_BIG_TURRET"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AntiFreightCannon}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_ENGINE_TARGET_NAME"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", FreightWarpDrives}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIELD_GENERATOR_NAME"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", FreighterShieldGen}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PIR_SURRENDER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreadnoughtCaptain}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PIR_SURRENDER_OPT_A"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreadnoughtSeize}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_PIR_SURRENDER_OPT_B"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DreadnoughtTribute}
							}
						},
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
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_SHIP_09_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_SHIP_12_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_SHIP_13_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_ATLASSTAFF_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionToolNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BUI_TENT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RaggedTentNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BUI_TENT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (TempShelterNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIPGUN_ROBO_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SentinelCannonDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_LAUNCHER_ROBO_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AntiGravWellDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIPSHIELD_ROBO_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AeronShieldDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_WEAPSENT_DMG_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RecCircBrokenSlotNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_OPTIONS_DIFFICULTY_SHORT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DifficultyMenu}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIPJUMP_ROBO_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", LuminanceEnigineDesc}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_LOC9_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_TELEPORT_ALIEN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", GraspingTendrils}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_RELEASE_FISH_LABEL"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ReleaseFish}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_RELEASE_FISH_LABEL_SUB"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ReleaseFishDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "FISHING_CATCH_WINDOW_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", FishTimingDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FISH_BAIT_1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", Mealworms}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FISH_BAIT_2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SpicyChum}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FISH_BAIT_3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", BionicLure}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FISH_BAIT_DAY_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", DanglingOrb}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FISH_BAIT_NIGHT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ShadowLure}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FISH_BAIT_STORM_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", MagpulseLure}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_SEAHARVESTER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AutoTrapDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_SEAHARVESTER_DESC_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AutoTrapAltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_DEEPSEA_PROD_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SeaGlassDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIP_TGA_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_SHIP_16_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_SHIP_17_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPD_SHIP_17_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionLivingShipNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPED_STAFF_17_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionToolNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ShorterIngestorDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_WAIT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ShorterIngestorIdleDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ShorterIngestorActiveDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (LoadedNutrientIngestorDetail)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_WAIT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (LoadedNutrientIngestorDetail)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (NutrientIngestorNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_WAIT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (NutrientIngestorNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOOD_UNIT_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (NutrientIngestorNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FOS_FINISHED_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", ExhibitDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_RUIN_CHEST_SUB"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", MemoryStoneDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_GUIDE_BODY_BONES"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", FossilGuide}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXPED_STAFF_18_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (RedeemExpeditionToolNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NPC_POPULATION_WINDOW_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (AbandonedModeNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_EXOCRAFT_FIRE_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", MountedFlameDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GARAGE_FLOAT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (MinotaurNautilonBayNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_FISH_FOOD_SMALL_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SimpleFoodNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SETTLE_MGR_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", SettleOverviewB}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_SETTLE_MGR_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AppendText (SettleOverviewNote)}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_COK_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteCockpitDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_COK_DESC_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteCockpitAltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_LAN_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteLandingOtherDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_LND_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteLandingDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_LND_DESC_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteLandingAltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_HAB_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteHabDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_HAB_DESC_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteHabAltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_HAB1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteWalkwayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_HAB1_DESC_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteWalkwayAltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_SHL_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteShieldGenDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_SHL_DESC_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteShieldGenAltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_TUR_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteWeaponDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_BIG_TUR_DESC_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteWeaponAltDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_BIGGS_SHOP_OPT_BARTER"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", CorvetteTradeAdvancedParts}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"LANGUAGE\NMS_UPDATE3_ENGLISH.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "RGB_WARP_2_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", EmerilDriveDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "RGB_WARP_3_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", IndiumDriveDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_GASHARVESTER_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AtmosphereHarvesterDesc}
							}
						},
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
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_TELEPORT_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TeleportReceiver}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "NPC_CORE_ACT1_15_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", LeapDark3rdMonolith}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CORE_ACT1_STEP13_OBJ4_TIP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", LeapDarkAfter3rdMonolithTip}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BLD_PLANTERMEGA_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", LargeHydroTrayDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_ROCKETS_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", RocketLauncherDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_TRADE_ITEM_TECH_4_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", AutoPosUnitDesc}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CORE_TUTORIAL1_DESC"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TutorialDesc1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CORE_TUTORIAL1Z_OBJ1_TIP_ALT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TutorialTip2}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CORE_TUTORIAL1_OBJ1_TIP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TutorialTip3}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "UI_CORE_TUTORIAL1_MSG1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"English", TutorialMessage1}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"UI\BUYSCREEN.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BUY_SLOT_SUB"},
							["REPLACE_TYPE"] 		= "ALL",
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"AllowScroll", "false"},		--"true"
								{"Is Paragraph", "true"},		--"false"
								{"AnimTime", "3"}				--"0.5"
							}
						},
					}
				},
				{--Rearranges UI elements to to fit PTSd's longer Nutrient Ingestor description
					["MBIN_FILE_SOURCE"] 	= {"UI\FOODUNITPAGE.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BOXGRP",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"Position X", 183},			--183
								{"Position Y", 253},			--303
								--{"Width", 600},					--600
								{"Height", 270},				--220
								--{"Constrain Aspect", 1.000000},	--1.000000
								--{"Max Width", 0.000000},		--0.000000
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FOODTEXT",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"Position X", 165},				--165
								--{"Position Y", 25},				--25
								--{"Width", 430},					--430
								{"Height", 225},				--185
								--{"Constrain Aspect", 1.000000},	--1.000000
								--{"Max Width", 0.000000},		--0.000000
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DESC",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"Position X", 0},				--0
								--{"Position Y", 0},				--0
								--{"Width", 100},					--100
								{"Height", 150},				--100
								--{"Constrain Aspect", 1.000000},	--1.000000
								--{"Max Width", 0.000000},		--0.000000
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BEGINGRP",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Position Y", 85.599900},				--82.599900
							}
						},
					}
				},
            }
		}
    }
}

--local ChangesToLOC1 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
--local ChangesToLOC4 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]
--local ChangesToLOC5 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]
--local ChangesToLOC6 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]
--local ChangesToLOC7 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["MXML_CHANGE_TABLE"]
--local ChangesToLOC8 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["MXML_CHANGE_TABLE"]
--local ChangesToLOC9 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][7]["MXML_CHANGE_TABLE"]
--local ChangesToUPDATE3 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][8]["MXML_CHANGE_TABLE"]

for i = 1, #AresTradeItemDescs do
	local ChangeTableNum = AresTradeItemDescs[i][1][1]
	local Descs = AresTradeItemDescs[i][2]
			
		for j = 1, #Descs do
			DescId = Descs[j][1]
			DecNaniteAmount = Descs[j][2]
			Text = [[{:}]]..AresTradeItem(DecNaniteAmount)..[[]]
		
			NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"][#NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"]+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", DescId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", Text}
				}
			}
		end
end

for i = 1, #NaniteRefineItemDescs do
	local ChangeTableNum = NaniteRefineItemDescs[i][1][1]
	local Descs = NaniteRefineItemDescs[i][2]
			
		for j = 1, #Descs do
			DescId = Descs[j]
			Text = [[{:}]]..NaniteRefineItem..[[]]
		
			NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"][#NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"]+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", DescId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", Text}
				}
			}
		end
end

for i = 1, #SalDataRefineItemDescs do
	local ChangeTableNum = SalDataRefineItemDescs[i][1][1]
	local Descs = SalDataRefineItemDescs[i][2]
			
		for j = 1, #Descs do
			DescId = Descs[j]
			Text = [[{:}]]..SalDataRefineItem..[[]]
		
			NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"][#NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"]+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", DescId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", Text}
				}
			}
		end
end

for i = 1, #SpaceGunkRefineItemDescs do
	local ChangeTableNum = SpaceGunkRefineItemDescs[i][1][1]
	local Descs = SpaceGunkRefineItemDescs[i][2]
			
		for j = 1, #Descs do
			DescId = Descs[j]
			Text = [[{:}]]..SpaceGunkRefineItem..[[]]
		
			NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"][#NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"]+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", DescId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", Text}
				}
			}
		end
end

for i = 1, #LessSuperchargeEffectWeapons do
	local ChangeTableNum = LessSuperchargeEffectWeapons[i][1][1]
	local Descs = LessSuperchargeEffectWeapons[i][2]
			
		for j = 1, #Descs do
			DescId = Descs[j]
			Text = [[{:}]]..LessSuperchargeEffectNote..[[]]
		
			NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"][#NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][ChangeTableNum]["MXML_CHANGE_TABLE"]+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", DescId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", Text}
				}
			}
		end
end

local ChangesToLoc1 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #AtlasSeedDescIds do
	local AtlasDescID = AtlasSeedDescIds[i]
		
			ChangesToLoc1[#ChangesToLoc1+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", AtlasDescID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", AppendText (AtlasSeedAbandNote)}
				}
			}
end

local ChangesToLoc4 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

for i = 1, #DurationHazModuleIDs do
	local HazModDescID = DurationHazModuleIDs[i]
		
			ChangesToLoc4[#ChangesToLoc4+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", HazModDescID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", AppendText (DurationHazNote)}
				}
			}
end

local ChangesToLoc8 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["MXML_CHANGE_TABLE"]

for i = 1, #FlamethrowerUpgradeTexts do
	local FlameNameID = [[UP_MECHFLAME]]..tonumber(i+1)..[[_NAME]]
	local FlameNameLowerID = [[UP_MECHFLAME]]..tonumber(i+1)..[[_NAME_L]]
	local FlameSubID = [[UP_MECHFLAME]]..tonumber(i+1)..[[_SUB]]
	local FlameDescID = [[UP_MECHFLAME]]..tonumber(i+1)..[[_DESC]]
	local FlameLevel = FlamethrowerUpgradeTexts[i][1]
	local Flamelevel = FlamethrowerUpgradeTexts[i][2]
	local FlameStyle = FlamethrowerUpgradeTexts[i][3]
		
			ChangesToLoc8[#ChangesToLoc8+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", FlameNameID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", FlameUpgradeName}
				}
			}
			ChangesToLoc8[#ChangesToLoc8+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", FlameNameLowerID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", FlameUpgradeNameLower}
				}
			}
			ChangesToLoc8[#ChangesToLoc8+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", FlameSubID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", FlameUpgradeSub (FlameLevel)}
				}
			}
			ChangesToLoc8[#ChangesToLoc8+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", FlameDescID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", FlameUpgradeDesc (Flamelevel, FlameStyle)}
				}
			}
end
			ChangesToLoc8[#ChangesToLoc8+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "UI_MECH_FLAME_NAME_L"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", "Exocraft Flamethrower"}		--"Minotaur Flamethrower"
				}
			}

local ChangesToLoc9 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][7]["MXML_CHANGE_TABLE"]

for i = 1, #ExhibitDescIDs do
	local ExhibitDescID = ExhibitDescIDs[i]
		
			ChangesToLoc9[#ChangesToLoc9+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", ExhibitDescID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"English", AppendText (ExhibitNote)}
				}
			}
end