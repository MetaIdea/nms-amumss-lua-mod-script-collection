# <p align="center">Hypn0tick's NMS LUA Mod Collection</p>

<p align="justify">This is a repository containing my collection of No Man's Sky script mods that use the <a href="https://github.com/HolterPhylo/AMUMSS">AMUMSS Framework</a>, a LUA script-based mod builder that can build modifications using the game's (and other mods') latest files.</p>

<p align="justify">For more information on modding No Man's Sky, using AMUMSS, fixing bugs, and much more, feel free to join the <a href="https://discord.gg/5Bb3pYYVyV">NMS Modding Discord</a>. For LUA script examples, check out the <a href="https://github.com/MetaIdea/nms-amumss-lua-mod-script-collection/tree/main/amumss-standard-collection">AMUMSS Standard Collection</a>, which includes various helpful learning examples, and the general <a href="https://github.com/MetaIdea/nms-amumss-lua-mod-script-collection">AMUMSS LUA Mod Script Collection</a>.</p>

<br/>

## <p align="center">Table of Contents</p>

- [What is AMUMSS?](#what-is-amumss)

- [Using Script Mods](#using-script-mods)
  
  - [Installing AMUMSS](#installing-amumss)
    
    - [Install Dependencies](#install-dependencies)
    
    - [Download & Update AMUMSS](#download--update-amumss)
  
  - [Building a Mod](#building-a-mod)
  
  - [Building Multiple Mods Mods](#building-multiple-mods)
  
  - [Building Patch Mods](#building-patch-mods)

<br/>

## <p align="center">What is AMUMSS?</p>

<p align="justify">The parameters that control most aspects of NMS' gameplay are stored in various .mbin files, which are subsequently compressed, packed into .pak files and read by the game. The game can ultimately read only one instance of each file, however, and therefore doesn't allow multiple mods to edit the same file. Editing the game's files directly also forces mod authors to manually update their work whenever the game's updates introduces new changes to those them. Further, it nearly impossible to create customize-able mods in this scenario. AMUMSS fixes these issues by modifying the game's latest files using a series of instructions provided by a LUA script.</p>

<p align="justify">AMUMSS is the software responsible for turning .lua files into proper mods. It does so in a few (automated) steps:</p>

1. <p align="justify">First, it unpacks the game's (and/or other mods') .pak archives which contain .mbin files changed by a script.</p>

2. <p align="justify">Next, it uses MBINCompiler.exe to convert them into legible .exml files.

3. <p align="justify">Then, it modifies these files according to instructions provided by the .lua files it finds in the "ModScript" folder.</p>

4. <p align="justify">Finally, it will use MBINCompiler.exe to convert them back into the .mbin files read by the game, and re-archives them into .pak files.</p>

<p align="justify">This approach is extremely beneficial in many ways. For example, it allows multiple script-based mods to alter the same files while ensuring compatibility with each other; will work across game updates (for the most part), making the same changes to the latest game files; and allows users to tweak and customize scripts to their liking.</p>

<br/>

## <p align="center">Using Script Mods</p>

<p align="justify">If you are simply looking to install a mod created with AMUMSS <b>and do not have any conflicting packed (.pak) mods installed</b> in your NMS mod folder (No Man's Sky\GAMEDATA\PCBANKS\MODS) that edit the same files, I recommend simply downloading the .pak file provided by the mod author and using it as-is.</p>

<p align="justify">If you are looking to fine-tune or otherwise modify the values of a mod created with AMUMSS, to ensure compatibility between mods, or to create your own script(s), you will need to download and utilize the <a href="https://github.com/HolterPhylo/AMUMSS">AMUMSS Framework</a>, as described below. Once you have, place any script mods you wish to build or merge into the "ModScript" folder and run the "BUILDMOD.bat" file to build your mod's .pak file.</p>

<br/>

### <p align="center">Installing AMUMSS</p>

<p align="justify">To begin creating, modifying, and/or building LUA-based mods for No Man's Sky, you will need to follow a few basic steps:</p>

<br/>

#### <p align="center">Install Dependencies</p>

<p align="justify">AMUMSS uses <a href="https://github.com/monkeyman192/MBINCompiler">MBINCompiler.exe</a> to compile and decompile the game's .mbin files to and from legible .exml files, which requires the <a href="https://dotnet.microsoft.com/en-us/download/dotnet/5.0/runtime">.NET 5 Desktop Runtime</a> to run properly.</p>

- [Download .NET 5.0 Desktop Runtime - Windows x64 Installer](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-5.0.17-windows-x64-installer)

- [Download .NET 5.0 Desktop Runtime - Windows x86 Installer](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-5.0.17-windows-x86-installer)

<br/>

#### <p align="center">Download & Update AMUMSS</p>

1. <p align="justify"><a href="https://github.com/HolterPhylo/AMUMSS/releases">Download the latest AMUMSS</a> and extract it to the folder of your choice.</p>

2. <p align="justify">In the AMUMSS folder, open the "BUILDMOD.bat" file.</p>

3. <p align="justify">When asked whether you would like to update AMUMSS, type "Y". Afterwards, press any key to close the terminal and check for updates.</p>
   
   - <p align="justify">You may need to do this multiple times if the update doesn't apply.</p>

4. <p align="justify">Open the "BUILDMOD.bat" file again. If it updated correctly, AMUMSS will then create a list of your game's .pak files and automatically download the latest MBINCombiler.exe. If everything updated correctly, you should see the terminal output something similar to the following:</p>
   
   <img title="" src="./00 - Assets/AMUMSS_Update.png" title="AMUMSS Update" alt="AMUMSS_Install.png" width="487" data-align="center">

<br/>

### <p align="center">Building a Mod:</p>

<p align="justify">Now that you have downloaded AMUMSS, turning a .lua script into a usable mod is a very simple process. With the script's .lua file in your AMUMSS "ModScript" folder, simply run "BUILDMOD.bat" to create the mod's .pak file.</p>

<p align="justify">When you run AMUMSS, it will ask whether to automatically copy the created .pak file to your NMS "MODS" folder and delete the "DISABLEMODS.txt" file from the game's "PCBANKS" folder. If you choose not to, simply move the newly-created file from the AMUMSS "CreatedModPAKs" folder to the game's "GAMEDATA\PCBANKS\MODS" folder and delete the "GAMEDATA\PCBANKS\DISABLEMODS.txt" file. Your game will now start with the mod enabled.</p>

<img src="./00 - Assets/Example_Move_Mod.png" title="AMUMSS Copy File Example" alt="Example_Move_Mod.png" data-align="center">

<br/>

### <p align="center">Building Multiple Mods:</p>

<p align="justify">To build multiple mods created with the Modular Flight Framework, place them all inside the "ModScript" folder. If you have multiple mods that edit the same values, rename the scripts alphabetically so that those you with changes you wish to take priority are loaded last. Then, run "BUILDMOD.bat" and answer any questions asked by the terminal prompt.</p>

- <p align="justify">If any scripts require that extra assets (images, sounds, etc.) be included in the packed (.pak) file, simply place them in the AMUMSS "ModExtraFilesToInclude" directory. If any files are present in this folder, AMUMSS will first ask if you wish to include them in the created .pak file.</p>
  
  <img src="./00 - Assets/Example_Include_Assets.png" title="Include Assets Example" alt="Example_Include_Assets.png" data-align="center">

- <p align="justify">When AMUMSS detects that there are multiple .lua files in the "ModScript" folder, it will ask whether to create a combined (merged) mod, or to create individual .pak files for each script.</p>
  
  <img src="./00 - Assets/Example_Merged_Mod.png" title="Combined Mod Example" alt="Example_Merged_Mod.png" data-align="center">

- <p align="justify">When merging mods, the terminal will also ask you some questions to determine how the merged mod will be named. The file's name can be changed after building the .pak file.</p>
  
  - <p align="justify">If you included any packed (.pak) mods in your "ModScript" folder, AMUMSS will not give you the option to select a naming scheme.</p>

- <p align="justify">Finally, AMUMSS will ask whether to copy the created mod's .pak file into the game's "PCBANKS\MODS" folder and delete "DISABLEMODS.txt". After answering, it will begin building the mod.</p>

<br/>

### <p align="center">Building Patch Mods</p>

<p align="justify">When building your .lua script files into playable mods, AMUMSS has the option to use the files included in an existing mod's packed (.pak) archive instead of the game's latest files. This allows mods to be built atop the files provided by other (non-script) mods, ensuring that they are compatible with each other.</p>

- <p align="justify">To build a combined (merged) mod that is compatible with your existing .pak files, simply place them into your "ModScript" folder along with your .lua script files.</p>

- <p align="justify">After running "BUILDMOD.bat", the terminal will ask you whether or not to create a "patch pak", which is a combined mod built using files provided by different mods' .pak files.</p>
  
  <img src="./00 - Assets/Example_Patched_Mod.png" title="Patch Mod Example" alt="Example_Patched_Mod.png" data-align="center">

- <p align="justify">Once the mod's .pak file has been built, copy the created file from the "CreatedModPAKs" directory to the game's "PCBANKS\MODS" folder.</p>
  
  - <p align="justify"><ins><b>Note:</b></ins> When using a patch mod, you should include the original mods' .pak files (the ones you placed in "ModScript") in the game's "PCBANKS\MODS" folder.</p>
