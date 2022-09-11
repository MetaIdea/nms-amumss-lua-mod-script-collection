# Hypn0tick's NMS LUA Mod Collection

This is a repository containing my collection of No Man's Sky script mods that use the [AMUMSS Framework](https://github.com/HolterPhylo/AMUMSS), a LUA script-based mod builder that can build modifications using the game's (and other mods') latest files.

For more information on modding No Man's Sky, using AMUMSS, fixing bugs, and much more, feel free to join the [NMS Modding Discord](https://discord.gg/5Bb3pYYVyV). For LUA script examples, check out the [AMUMSS Standard Collection](https://github.com/MetaIdea/nms-amumss-lua-mod-script-collection/tree/main/amumss-standard-collection), which includes various helpful learning examples, and the general [AMUMSS LUA Mod Script Collection](https://github.com/MetaIdea/nms-amumss-lua-mod-script-collection).

## What is AMUMSS?

The parameters that control most aspects of NMS' gameplay are stored in various .mbin files, which are subsequently compressed, packed into .pak files and read by the game. The game can ultimately read only one instance of each file, however, and therefore doesn't allow multiple mods to edit the same file. Editing the game's files directly also forces mod authors to manually update their work whenever the game's updates introduces new changes to those them. Further, it nearly impossible to create customize-able mods in this scenario. AMUMSS fixes these issues by modifying the game's latest files using a series of instructions provided by a LUA script.

AMUMSS is the software responsible for turning .lua files into proper mods. It does so in a few (automated) steps:

1. First, it unpacks the game's (and/or other mods') .pak archives which contain .mbin files changed by a script.

2. Next, it uses MBINCompiler.exe to convert them into legible .exml files.

3. Then, it modifies these files according to instructions provided by the .lua files it finds in the "ModScript" folder.

4. Finally, it will use MBINCompiler.exe to convert them back into the .mbin files read by the game, and re-archives them into .pak files.

This approach is extremely beneficial in many ways. For example, it allows multiple script-based mods to alter the same files while ensuring compatibility with each other; will work across game updates (for the most part), making the same changes to the latest game files; and allows users to tweak and customize scripts to their liking.

## Using Script Mods

If you are simply looking to install a mod created with AMUMSS **and do not have any conflicting packed (.pak) mods installed** in your NMS mod folder (No Man's Sky\GAMEDATA\PCBANKS\MODS) that edit the same files, I recommend simply downloading the .pak file provided by the mod author and using it as-is.

If you are looking to fine-tune or otherwise modify the values of a mod created with AMUMSS, to ensure compatibility between mods, or to create your own script(s), you will need to download and utilize the [AMUMSS Framework](https://github.com/HolterPhylo/AMUMSS), as described below. Once you have, place any script mods you wish to build or merge into the "ModScript" folder and run the "BUILDMOD.bat" file to build your mod's .pak file.

### Installing AMUMSS

To begin creating, modifying, and/or building LUA-based mods for No Man's Sky, you will need to follow a few basic steps:

#### Install Dependencies

AMUMSS uses [*MBINCompiler.exe*](https://github.com/monkeyman192/MBINCompiler) to compile and decompile the game's ".mbin" files to and from legible ".exml" files, which requires the [.NET 5 Desktop Runtime](https://dotnet.microsoft.com/en-us/download/dotnet/5.0/runtime) to run properly.

- [Download .NET 5.0 Desktop Runtime - Windows x64 Installer](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-5.0.17-windows-x64-installer)

- [Download .NET 5.0 Desktop Runtime - Windows x86 Installer](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-5.0.17-windows-x86-installer)

#### Download & Update AMUMSS

1. [Download the latest AMUMSS](https://github.com/HolterPhylo/AMUMSS/releases) and extract it to the folder of your choice.

2. In the AMUMSS folder, open the "BUILDMOD.bat" file.

3. When asked whether you would like to update AMUMSS, type "Y". Afterwards, press any key to close the terminal and check for updates.
   
   - You may need to do this multiple times if the update doesn't apply.

4. Open the "BUILDMOD.bat" file again. If it updated correctly, AMUMSS will then create a list of your game's ".pak" files and automatically download the latest MBINCombiler.exe. If everything updated correctly, you should see the terminal output something similar to the following:
   
   <img title="" src="https://i.imgur.com/hAHX0Ij.png" alt="" width="487" data-align="center">

### Building a Mod:

Now that you have downloaded AMUMSS, turning a .lua script into a useable mod is a very simple process. With the script's .lua file in your AMUMSS "ModScript" folder, simply run "BUILDMOD.bat" to create the mod's .pak file.

When you run AMUMSS, it will ask whether to automatically copy the created ".pak" file to your NMS "MODS" folder and delete the "DISABLEMODS.txt" file from the game's "PCBANKS" folder. If you choose not to, simply move the newly-created file from the AMUMSS "CreatedModPAKs" folder to the game's "GAMEDATA\PCBANKS\MODS" folder and delete the "GAMEDATA\PCBANKS\DISABLEMODS.txt" file. Your game will now start with the mod enabled.
