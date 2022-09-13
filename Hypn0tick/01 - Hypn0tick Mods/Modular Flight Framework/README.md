# <p align="center">Modular Flight Framework</p>

<p align="justify">A mod script and framework for No Man's Sky flight-related mods using the <a href="https://github.com/HolterPhylo/AMUMSS">AMUMSS Framework</a>, a LUA script-based mod builder that can build modifications using the game's (and other mods') latest files.</p>

<p align="justify">For more information on modding No Man's Sky, using AMUMSS, fixing bugs, and much more, feel free to join the <a href="https://discord.gg/5Bb3pYYVyV">NMS Modding Discord</a>. For LUA script examples, check out the <a href="https://github.com/MetaIdea/nms-amumss-lua-mod-script-collection/tree/main/amumss-standard-collection">AMUMSS Standard Collection</a>, which includes various helpful learning examples, and the general <a href="https://github.com/MetaIdea/nms-amumss-lua-mod-script-collection">AMUMSS LUA Mod Script Collection</a>.</p>

<br/>

## <p align="center">Table of Contents</p>

<details>
<summary>Click to Expand</summary>

- [Overview](#overview)
  
  - [Features](#features)

- [Installation](#installation)
  
  - [Install Dependencies](#install-dependencies)
  
  - [Download the Modular Flight Framework](#download-the-modular-flight-framework)
  
  - [Build the Mod(s)](#build-the-mods)

- [Compatibility](#Compatibility)
  
  - [Flight Mods](#flight-mods)

- [Creating & Modifying Modular Flight Mods](#creating--modifying-modular-flight-mods)
  
  - [Ensuring Compatibility](#ensuring-compatibility)
  
  - [Framework Script Contents](#framework-script-contents)
    
    - [General Settings & Multipliers](#general-settings--multipliers)
    
    - [Base Numbers](#base-numbers)
    
    - [Code](#code)

- [Acknowledgements](#acknowledgements)
  
  </details>

<br/>

## <p align="center">Overview</p>

<p align="justify">This AMUMSS script serves as a framework with which flight-related mods for No Man's Sky can be both created easily by mod authors, and later fine-tuned by users in the simplest possible manner.</p>

<p align="justify">This script should allow both mod authors and users to create and share alterations to NMS's flight settings more easily than ever before. Almost every parameter controlling all aspects of flight in No Man's Sky have been mapped out into convenient variables for authors, and even simpler multipliers for users. Further in the Readme, we will go over the script's sections and main functions.</p>

<br/>

### <p align="center">Features</p>

<p align="justify"><ins><b>NOTE:</b></ins> The default version of the script enabled most of the features and changes have been made to some base values. All changes can be easily configured in the file. A variant with vanilla values is <a href="https://github.com/hypn0tick/nms-lua-mods/blob/master/01%20-%20Hypn0tick%20Mods/Modular%20Flight%20Framework/Variants/Vanilla.lua">provided in the repository</a>.</p>

- Modular features that can be enabled/disabled individually.

- Control values using multipliers (simpler) or by inputting base numbers, which will automatically be applied to the correct parameters in the game's files.

- Easily modify space flight parameters (speed, maneuverability, and more).
  
  - Separately modify parameters for space, combat, planetary, and atmospheric flight.
  
  - Disable automatic avoidance & orientation limits.
  
  - Disable "flight assist", which makes ships travel through space as if they were in atmospheric conditions. When disabled, ships will retain their momentum during space travel.
  
  - Modify pulse & warp drive settings.
  
  - Modify asteroid damage.
  
  - Disable asteroid generation when using the pulse drive.
  
  - Disable speed lines during pulse & warp travel.

- Easily modify planetary & atmospheric flight parameters.
  
  - Enable hovering or reversing when flying on planets.
  
  - Enable low or underwater flight.
  
  - Modify ship launch fuel cost.
  
  - Modify ship inventory & teleporter distances.
  
  - Modify ship scanner parameters.

- Easily modify freighter settings.
  
  - Remove multiplayer freighter limit (typically 1 per system).
  
  - Ensure that a system's first freighter spawn will be its capital freighter.
  
  - Modify planetary summon distance & tractor range.
  
  - Modify warp drive ranges & bonuses.

- And more!

## <p align="center">Installation</p>

<p align="center">To begin creating, modifying, and/or building LUA-based mods for No Man's Sky, you will need to follow a few basic steps:</p>

<br/>

### <p align="center">Install Dependencies</p>

<p align="justify">The Modular Flight Framework is a .lua script that uses AMUMSS to create a usable .pak file. Ensure you have correctly <a href="https://github.com/hypn0tick/nms-lua-mods#installing-amumss">installed AMUMSS and its dependencies</a> correctly to properly build LUA script-based mods for No Man's Sky.</p>

<br/>

### <p align="center">Download the Modular Flight Framework</p>

<p align="justify">Download the script to your AMUMSS "ModScript" folder. If you struggle to download the file, simply <a href="https://raw.githubusercontent.com/hypn0tick/nms-lua-mods/master/01%20-%20Hypn0tick%20Mods/Modular%20Flight%20Framework/Hypn0tick%20-%20Modular%20Flight%20Framework.lua">copy its contents</a> into a new .lua file in your "ModScript" folder. You are now ready to build LUA script-based mods for No Man's Sky!</p>

<p align="justify"><ins><b>NOTE:</b></ins> The URL above links to the script with my personal configurations that I have released. If you are looking to build a mod from scratch, please reference the variant with base-game values <a href="https://github.com/hypn0tick/nms-lua-mods/blob/master/01%20-%20Hypn0tick%20Mods/Modular%20Flight%20Framework/Variants/Vanilla.lua">included in the repository</a>.</p>

<br/>

### <p align="center">Build the Mod(s)</p>

<p align="justify">Now that you have downloaded AMUMSS and the Modular Flight Framework script, turning the script into a usable mod is a very simple process. With the .lua file in your AMUMSS "ModScript" folder, simply run "BUILDMOD.bat" to create the mod's .pak file.</p>

<p align="justify">If you would like to learn more about building and merging mods with AMUMSS, or to create patch mods, follow the steps provided <a href="https://github.com/hypn0tick/nms-lua-mods">in this repository's root directory</a>, read the <a href="https://stepmodifications.org/wiki/NoMansSky:AMUMSS_Guide">STEP Mods AMUMSS Guide</a>, written by Lo2k, or reach out in the "amumss-lua" channel of the official <a href="https://discord.gg/5Bb3pYYVyV">NMS Modding Discord</a>.</p>

<br/>

## <p align="center">Compatibility</p>

<p align="justify">The Modular Flight Framework script was designed with compatibility in mind. Most features can be enabled/disabled individually, allowing mods to affect different flight parameters without interfering with each other. Typically, mods that utilize many of the framework's features should be loaded by AMUMSS before most other scripts. This is so that smaller changes made by these scripts will be applied after any changes made by the Modular Flight Framework. One can ensure MFF loads before other mods by renaming the script's .lua file alphabetically. For example, rename "Hypn0tick - Modular Flight Framework.lua" to "A.lua" so that AMUMSS reads the file prior to running other scripts.</p>

<br/>

### <p align="center">Flight Mods</p>

<p align="justify">Of the framework's various features, the only one that causes compatibility issues is the function that modifies the base numbers that affect ship speeds, maneuverability, etc.—this is controlled by the "Enable_Flight_Changes" variable at the top of the script.</p>

<p align="justify">This function currently creates *minor* incompatibilities due to the way in which the script modifies these variables. Instead of editing existing values, the script re-creates the entire parameter block after removing the originals.</p>

- <p align="justify">Therefore, running the script with this feature enabled <ins>after other scripts have modified these values</ins> will result in MFF's values being used.</p>

- <p align="justify">If you wish to have another mod affect these variables, ensure that the script loads and runs <ins><b>after the Modular Flight Framework</b></ins>. You can do this by re-naming the script's .lua file alphabetically so that it loads after MSS.</p>

<p align="justify"><ins><b>Example:</b></ins> To load Shoemaker's Flight Adjustments on top of MFF's changes, simply rename "shoemakers_flight_adjustments.lua" to "Z_shoemakers_flight_adjustments.lua" or even "_shoemakers_flight_adjustments.lua" (better, as underscores load after letters).</p>

<br/>

## <p align="center">Creating & Modifying Modular Flight Mods</p>

<p align="justify">Before building a Modular Flight Framework mod, you can open its .lua file to configure every aspect of flight in No Man's Sky individually. Specifics regarding the file's data & sections are included below. After making your desired changes, simply build the mod as explained above and enjoy the results in-game.</p>

### <p align="center">Ensuring Compatibility</p>

<p align="justify">To ensure maximum compatibility with other mods, mod authors should be careful to verify that only those features used by their mod are enabled within the script's contents. By doing so, any created mods will affect only necessary files, leaving changes added by other mods intact.</p>

<br/>

### <p align="center">Framework Script Contents</p>

<p align="justify">To simplify the process of editing the script's data, it has been separated into three different sections: <ins>general settings & multipliers, base numbers, and code.</ins></p>

<br/>

---

#### <p align="center">General Settings & Multipliers</p>

---

<p align="justify">The "general settings & multipliers" section is likely to be the only one touched by the vast majority of mod users. It primarily contains various booleans (true/false statements) that control the script's features, and multipliers that alter associated values.</p>

<p align="center"><ins><b>Example Boolean:</b></ins></p>
<p align="center"><img title="Boolean Example" src="../../00 - Assets/Example_Boolean.png" alt="Example_Boolean.png" width="552"></p>

<p align="center"><ins><b>Example Multiplier:</b></ins></p>
<p align="center"><img title="Multiplier Example" src="../../00 - Assets/Example_Boolean.png" alt="Example_Multiplier.png" width="552"></p>

<br/>

---

#### <p align="center">Base Numbers</p>

---

<p align="justify">The second section, base numbers, houses all of the default data used by the script and its modifiers. This section exists for mod authors to more easily alter these values without the need to change any code. By modifying this section (as opposed to the first), mod authors also allow their users to more easily tweak their mod's values using the multipliers in the first section without the need to create any code.</p>

<p align="center"><ins><b>Example Base Numbers:</b></ins></p>

<p align="center"><img title="Base Number Example" src="../../00 - Assets/Example_Base_Numbers.png" alt="Example_Base_Numbers.png" width="552"></p>

<br/>

---

#### <p align="center">Code</p>

---

<p align="justify">The final section, code, contains all of the script's logic. While I encourage users and mod authors to peruse the code for the sake of understanding (and potentially help to find any bugs I may have overlooked), changes to this section of the script should be largely unnecessary as everything is controlled by the prior sections.</p>

<br/>

## <p align="center">Acknowledgements</p>

<p align="justify">First and foremost, I would like to thank Babscoole for reviewing my code, inspiring me with their own, and generally being an awesome person. I would also like to send my heartfelt gratitude to the team behind AMUMSS for creating such an amazing tool. Finally, I would also like to thank the following mod authors for their help, inspiration from their own mods, etc.:</p>

- Babscoole

- lMonk

- PodcastPrimate

- WinderTP

- Xen0nex

- Others I am certainly forgetting at the moment
