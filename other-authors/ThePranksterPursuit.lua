--|=======================================================================================--
--| SCRIPT INFO
--|=======================================================================================--
author = "DJMonkey"
luaAuthor = "Umaroth"
modName = "PRANKMISSION"
description = "Adds a short mission about pursuing a pesky Gek who keeps prank calling your Starship communication device."
gameVersion = "5.12"
modVersion = "1.0"
maintenance = author

--|=======================================================================================--
--| CODE
--|=======================================================================================--
local LocMT = [[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (5.12.0.1)-->
<Data template="TkLocalisationTable">
  <Property name="Table">
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKSTORY1_TITLE" />
      <Property name="English" value="The Prankster Pursuit" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKSTORY1_SUB" />
      <Property name="English" value="Chasing the Gek who's always one step ahead." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKSTORY1_DESC" />
      <Property name="English" value="You received a message from a cheeky Gek who left a prank call through your comms system. Before ending the communication, your starship was able to trace a signal of it's origin." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_COMMS_LANG" />
      <Property name="English" value="Greetings, esteemed starship captain! Did you know your starship's hull has been declared the galaxy's most aerodynamic by the Euclid Excellent Explorers Guild?&#xA;Too bad they're also the galaxy's most imaginary agency! Ha!&#xA;Seriously though, I must warn you: if you find any mysterious, unmarked packages on your ship, they're definitely not from us!&#xA;Or maybe they are. Either way, they're not our responsibility! Ha ha!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_COMMS_RES" />
      <Property name="English" value="Before I attempt a response I hear a joyful chitter on the line before it abruptly ends with a deafening click.&#xA;What remains are the fragments of a signal. My starship has processed it and has pinpointed it's origin." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_SHADPWMISSION_TITLE" />
      <Property name="English" value="Stranger" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION1_RES" />
      <Property name="English" value="End Communication" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_TITLE" />
      <Property name="English" value="Signal" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION1_DESC" />
      <Property name="English" value="As you approach the terminal you see a dismantled panel and various loose cables. It appears the Station Core has been tampered with.&#xA;The signal came from here, but wherever that pesky Gek is - they are not here now. &#xA;My search for them continues..." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION1_LANG" />
      <Property name="English" value="" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_COMMS_OPT" />
      <Property name="English" value="Wait in silence." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION1_OPT" />
      <Property name="English" value="End Transmittion" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="RAWR" />
      <Property name="English" value="" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISSION1_MSG3" />
      <Property name="English" value="Transmission coordinates validated&#xA;In space, summon the Anomaly with &lt;IMG&gt;QUICK_MENU&lt;&gt;" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISSION1_OBJ1" />
      <Property name="English" value="Communication signal received" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISSION1_OBJ1_TIP" />
      <Property name="English" value="Return to space to receive the transmission." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION2_TITLE" />
      <Property name="English" value="Stranger" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION2_COMMS_LANG" />
      <Property name="English" value="Warning! Sentinel fleet approaching your position! ...No, wait, false alarm. That’s just your reflection in the ship shields! Gek humor! Heheh!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION2_COMMS_RES" />
      <Property name="English" value="Anothing message, another prank call from the Gek.&#xA;Your starship managed to trace a another signal. Perhaps this new location will have some answers?" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION2_DESC" />
      <Property name="English" value="You are bewildered as the signal takes you to the Anomaly's computer terminal.&#xA;As you touch the pad you hear the faint, familiar, giggle of the Gek who taunts you.&#xA;You turn around but they are not there...&#xA;Your search for them continues..." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3_TITLE" />
      <Property name="English" value="Station Local" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3_LANG" />
      <Property name="English" value="You have also received the signals yes? Zibblo is his name. A jester at heart!&#xA;You won't find him here though, he's moved on to the next system!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3B_LANG" />
      <Property name="English" value="That pesky Gek owes me quicksilver! I was hoping to have bought a mysterious egg by now!&#xA;If you find him, make sure you send him my way!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3_COMMS_LANG" />
      <Property name="English" value="Traveller! Urgent news—your ship warranty has expired! But fear not, I can renew it... for the low price of 100,000,000 units! Heheh!&#xA;...&#xA;Just kidding traveller! A bit of Gek fun! Ha ha!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3_COMMS_RES" />
      <Property name="English" value="You know the routine by now, and don't bother to attempt a reply.&#xA;What does this Gek gain from their persistant messages? Are they amused? Are they lonely?&#xA;Your starship managed to trace a stronger signal. Perhaps this new location will have more answers?" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3_SUM" />
      <Property name="English" value="The Gek-Friend has a name! This entity seems to be familiar with the jesting Gek, and has referred to them as Zibblo." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3B_SUM" />
      <Property name="English" value="This entity is angry at the Gek, who appears to owe them a large sum of quicksilver for their troubles." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3C_LANG" />
      <Property name="English" value="The Gek-Jester? No... I haven't seem him. Atleast, not for a long time!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION3C_SUM" />
      <Property name="English" value="The local entities eyes glance kindly upon you, as if they were reminded fondly of something." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION4_DESC" />
      <Property name="English" value="" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION4_LANG" />
      <Property name="English" value="Grah! Zibblo! Tiny, pestering, Gek-friend!&#xA;Distracted enemies with their annoyance, before I crushed them!&#xA;Good for battle in sneaky ways!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_NPC_TITLE" />
      <Property name="English" value="Stranger" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_BYE_OPT" />
      <Property name="English" value="Goodbye" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_BYE_LANG" />
      <Property name="English" value="The factory worker speaks fondly of Zibblo, as if they spent many days together as friends.&#xA;They hope you find what you are looking for." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_SCANEVENT_GOTO_MAP_PRANK" />
      <Property name="English" value="Mission coordinates lead to another system&#xA;In space, consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISS1_SURVEY_OSD" />
      <Property name="English" value="Transmission signal located within the Anomaly&#xA;Summon the Anomoly to proceed." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISSION1_MSG1" />
      <Property name="English" value="Fly into space to receive the transmission." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISSION1_MSG2" />
      <Property name="English" value="Incoming signal: &lt;STELLAR&gt;Unknown contact&lt;&gt;&#xA;Access the Communicator with &lt;IMG&gt;QUICK_MENU&lt;&gt;" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKHUD_OVERRIDE" />
      <Property name="English" value="RING RING" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION4_COMMS_RES" />
      <Property name="English" value="Zibblo pauses for a moment before dropping the communication line. Perhaps they was disappointed in your attempt of a response.&#xA;You feel a slight sensation of guilt in the pit of your throat.&#xA;Regardless, your starship has detected another signal." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION4_COMMS_LANG" />
      <Property name="English" value="Inventory full!&#xA;Units received!&#xA;Inventory full!&#xA;Inventory full!&#xA;Storm approaching!&#xA;...&#xA;...&#xA;Ha ha!  Only joking! Annoying right?" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_COMMS_TEXT" />
      <Property name="English" value="" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_COMMS_LANG" />
      <Property name="English" value="Ah, Traveller! You left your ship’s shields down! ...Or did you? Better check, just in case! Hehehe!&#xA;...&#xA;...&#xA;It seems I've detected critical damage to your... sense of humor! Ha ha! Just kidding!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_COMMS_RES" />
      <Property name="English" value="My starship has detected a stronger signal. Surely I will find that Gek now!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_LEAVE_LANG" />
      <Property name="English" value="You leave the device alone. The display of lights continue to pulse as it trasmits Zibblos jokes across the galaxy.&#xA;You step away knowing you made the right decision." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_LEAVE_OPT" />
      <Property name="English" value="Leave the device unchanged" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_LANG" />
      <Property name="English" value="Aha! You found me!&#xA;But... it's not what you expected, right?&#xA;...&#xA;I am getting old. My time is coming to an end.&#xA;But there is just enough time for one more joke!" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_DESC" />
      <Property name="English" value="Zibblo is not here, yet your search for them has come to an end.&#xA;A scrappy signal booster has been set up near a terminal.&#xA;There is no doubt about it, the sound of Zibblo's jokes play on repeat as they are sent out across the galaxy, interupting unsuspected communication lines like my own.&#xA;As you process the scene, a decision crosses your mind.&#xA;Should you leave the signal booster running? Letting Zibblo live out his legacy of telling jokes.&#xA;Or should you disconnect the system? Allowing fellow interlopers to live their lives uninterrupted by silly distractions.&#xA;Before you decide, one final crackle comes from the nearby terminal:" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_NPCGEK_TITLE" />
      <Property name="English" value="Zibblo" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_NPCFACTOR_TITLE" />
      <Property name="English" value="Factory Worker" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_FAC_TITLE" />
      <Property name="English" value="Factory Worker" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_GEKT_TITLE" />
      <Property name="English" value="Zibblo's Terminal" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5A_LANG" />
      <Property name="English" value="Life is short, Traveller!&#xA;Whatever life has in store for you next, remember to have some fun - won't you?" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_CON_OPT" />
      <Property name="English" value="Continue" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_DISS_OPT" />
      <Property name="English" value="Disconnect the system" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION5_DISS_LANG" />
      <Property name="English" value="You disconnect the device. The display of lights collapse into darkness as Zibblo's voice abruptly comes to a stop. Their jokes no longer spamming the radiowaves.&#xA;You step away knowing you made the right decision." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISSION1_MSG1" />
      <Property name="English" value="Fly into space to receieve transmission." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="NPC_PRANKMISSION_REPLY_OPT" />
      <Property name="English" value="Attempt a response" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="PRANK_SCANEVENT_ANOMALY" />
      <Property name="English" value="TARGET WITHIN ANOMALY. SUMMON ANOMALY TO PROCEED." />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_SCANEVENT_GOTO_MAP_ANOMALY" />
      <Property name="English" value="Transmission coordinates validated&#xA;In space, summon the Anomaly with &lt;IMG&gt;QUICK_MENU&lt;&gt;" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_SCANEVENT_GOTO_PRANK_WATER" />
      <Property name="English" value="Mission coordinates lead to another system&#xA;In space, consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="UI_PRANKMISS1_SURVEY_OFF" />
      <Property name="English" value="Investigate the &lt;TECHNOLOGY&gt;broadcast site&lt;&gt;&#xA;Summon the Anomaly to pinpoint the broadcast site" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
  </Property>
</Data>
]]

local PranksterMissions = [[
<Property value="GcGenericMissionSequence.xml">
	<Property name="MissionID" value="PRANKSTORY1" />
	<Property name="MissionClass" value="ChainedSecondary" />
	<Property name="MissionIsCritical" value="False" />
	<Property name="MissionObjective" value="" />
	<Property name="MissionTitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_TITLE" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionSubtitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_SUB" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionDescriptions" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_DESC" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
		<Property name="ApplicableSeasonNumbers" />
		<Property name="MissionTitle" value="" />
		<Property name="MissionSubtitle" value="" />
		<Property name="MissionDescription" value="" />
	</Property>
	<Property name="MissionDescSwitchOverride" value="" />
	<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="UseScanEventDetailsInLogInfo" value="False" />
	<Property name="MissionIcon" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.ON.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconNotSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.OFF.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionPriority" value="0" />
	<Property name="MissionCategory" value="GcMissionCategory.xml">
		<Property name="MissionCategory" value="Mission" />
	</Property>
	<Property name="MissionPageHint" value="GcMissionPageHint.xml">
		<Property name="MissionPageHint" value="None" />
	</Property>
	<Property name="MissionPageLocID" value="" />
	<Property name="MissionBuildMenuHint" value="" />
	<Property name="MissionHasColourOverride" value="False" />
	<Property name="MissionColourOverride" value="Colour.xml">
		<Property name="R" value="1" />
		<Property name="G" value="1" />
		<Property name="B" value="1" />
		<Property name="A" value="1" />
	</Property>
	<Property name="BeginCheckFrequency" value="20" />
	<Property name="WikiMissionBlockedBySeasons" />
	<Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
		<Property name="PrimarySubstances" />
		<Property name="SecondarySubstances" />
		<Property name="PrimaryProducts" />
		<Property name="SecondaryProducts" />
		<Property name="AmountMin" value="0" />
		<Property name="AmountMax" value="0" />
		<Property name="AmountShouldBeRoundNumber" value="False" />
	</Property>
	<Property name="PrefixTitle" value="True" />
	<Property name="NextMissionHint" value="" />
	<Property name="MessageComplete" value="Never" />
	<Property name="MessageStart" value="Never" />
	<Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
		<Property name="Type" value="GcMissionType.xml">
			<Property name="MissionType" value="SpaceCombat" />
		</Property>
		<Property name="Difficulty" value="GcMissionDifficulty.xml">
			<Property name="MissionDifficulty" value="Normal" />
		</Property>
		<Property name="MinRank" value="0" />
		<Property name="CloseMissionGiver" value="False" />
		<Property name="IsGuildShopMission" value="False" />
		<Property name="IsPlanetProcMission" value="False" />
		<Property name="IsMultiplayerEventMission" value="False" />
		<Property name="RewardPenaltyOnAbandon" value="" />
		<Property name="Faction" />
		<Property name="Weighting" value="100" />
		<Property name="IgnoreCalculatedObjective" value="False" />
		<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
		<Property name="DefaultItemInitialWarpScanEvents" />
		<Property name="DefaultItemTypeForInitialWarp" value="None" />
		<Property name="BasePartBlueprints" />
	</Property>
	<Property name="AutoStart" value="AllModes" />
	<Property name="RestartOnCompletion" value="False" />
	<Property name="CancelSetsComplete" value="False" />
	<Property name="Dialog" value="GcAlienPuzzleTable.xml">
		<Property name="Table">
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK1_COMMS" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_NPC_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION_COMMS_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_REPLY_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION_COMMS_RES" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property value="NMSString0x10.xml">
								<Property name="Value" value="R_PRANKM_START" />
							</Property>
						</Property>
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="True" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK1_STORY1" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_TITLE" />
				<Property name="Text" value="NPC_PRANKMISSION1_DESC" />
				<Property name="TextAlien" value="" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION1_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ScanEvents">
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="SE_PRANKMISSION1_START" />
			<Property name="ForceInteraction" value="D_PRANK1_STORY1" />
			<Property name="UseSeasonDataAsInteraction" value="False" />
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="StationCore" />
			</Property>
			<Property name="NPCReactsToPlayer" value="False" />
			<Property name="RequireInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="False" />
			<Property name="ForceFixed" value="True" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceOverridesAll" value="True" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="False" />
			<Property name="ClearForcedInteractionOnCompletion" value="False" />
			<Property name="BuildingPreventionRadius" value="0" />
			<Property name="UseMissionTradingDataOverride" value="False" />
			<Property name="AlwaysShow" value="False" />
			<Property name="NeverShow" value="False" />
			<Property name="ShowOnlyIfSequenceTarget" value="False" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="500" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_PRANKMISS1_SURVEY_OSD" />
			<Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="Regular" />
			<Property name="CanEndFromOutsideMission" value="False" />
			<Property name="DisableMultiplayerSync" value="False" />
			<Property name="BlockStartedOnUseEvents" value="False" />
			<Property name="ReplaceEventIfAlreadyActive" value="False" />
			<Property name="BuildingLocation" value="Nearest" />
			<Property name="BuildingType" value="SpaceStation" />
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="None" />
			</Property>
			<Property name="AllowFriendsBases" value="False" />
			<Property name="ForceWideRandom" value="False" />
			<Property name="MustFindSystem" value="False" />
			<Property name="AllowOverriddenBuildings" value="True" />
			<Property name="TargetMustMatchMissionSeed" value="False" />
			<Property name="SolarSystemLocation" value="LocalOrNear" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="ForceRestartInteraction" value="True" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="False" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="UI_WATERMISSION1_OSD" />
			<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
			<Property name="MarkerLabel" value="UI_WATERMISSION1_MARKER" />
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0" />
			<Property name="MessageTime" value="0" />
			<Property name="MessageDisplayTime" value="4" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="UI_NEW_DISCOVERY" />
			</Property>
			<Property name="IconTime" value="4" />
			<Property name="TooltipTime" value="10" />
			<Property name="TooltipRepeats" value="False" />
			<Property name="ShowEndTooltip" value="True" />
			<Property name="TooltipMessage" value="" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				</Property>
				<Property name="AltId" value="" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Rewards">
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="R_PRANKM_START" />
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="False" />
				<Property name="UseInventoryChoiceOverride" value="False" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property value="GcRewardTableItem.xml">
						<Property name="PercentageChance" value="100" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMissionMessage.xml">
							<Property name="MessageID" value="PRANKM_STARTED" />
							<Property name="BroadcastInMultiplayer" value="False" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Costs" />
	<Property name="TradingDataOverride" value="GcTradeData.xml">
		<Property name="AlwaysPresentProducts" />
		<Property name="AlwaysPresentSubstances" />
		<Property name="OptionalProducts" />
		<Property name="OptionalSubstances" />
		<Property name="MinItemsForSale" value="5" />
		<Property name="MaxItemsForSale" value="15" />
		<Property name="PercentageOfItemsAreProducts" value="0.3" />
		<Property name="BuyPriceIncreaseRedThreshold" value="20" />
		<Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
		<Property name="SellPriceIncreaseGreenThreshold" value="10" />
		<Property name="SellPriceDecreaseRedThreshold" value="-20" />
		<Property name="ShowSeasonRewards" value="False" />
		<Property name="MinAmountOfProductAvailable">
			<Property name="Poor" value="10" />
			<Property name="Average" value="10" />
			<Property name="Wealthy" value="10" />
			<Property name="Pirate" value="10" />
		</Property>
		<Property name="MaxAmountOfProductAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MinAmountOfSubstanceAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MaxAmountOfSubstanceAvailable">
			<Property name="Poor" value="1000" />
			<Property name="Average" value="1000" />
			<Property name="Wealthy" value="1000" />
			<Property name="Pirate" value="1000" />
		</Property>
		<Property name="MinExtraSystemProducts">
			<Property name="Poor" value="2" />
			<Property name="Average" value="2" />
			<Property name="Wealthy" value="2" />
			<Property name="Pirate" value="2" />
		</Property>
		<Property name="MaxExtraSystemProducts">
			<Property name="Poor" value="4" />
			<Property name="Average" value="4" />
			<Property name="Wealthy" value="4" />
			<Property name="Pirate" value="4" />
		</Property>
		<Property name="TradeProductsPriceImprovements">
			<Property name="Poor" value="0" />
			<Property name="Average" value="0" />
			<Property name="Wealthy" value="0" />
			<Property name="Pirate" value="0" />
		</Property>
	</Property>
	<Property name="StartConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AllFalse" />
	</Property>
	<Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AnyFalse" />
	</Property>
	<Property name="StartIsCancel" value="False" />
	<Property name="StartingConditions">
		<Property value="GcMissionConditionIsGrabbed.xml" />
		<Property value="GcMissionConditionGroup.xml">
			<Property name="OnlyUsedForTextFormatting" value="False" />
			<Property name="ValueToReturnForTextFormatting" value="True" />
			<Property name="ConditionTest" value="GcMissionConditionTest.xml">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="Conditions">
				<Property value="GcMissionConditionGroup.xml">
					<Property name="OnlyUsedForTextFormatting" value="False" />
					<Property name="ValueToReturnForTextFormatting" value="True" />
					<Property name="ConditionTest" value="GcMissionConditionTest.xml">
						<Property name="ConditionTest" value="AnyTrue" />
					</Property>
					<Property name="Conditions">
						<Property value="GcMissionConditionGameMode.xml">
							<Property name="Mode" value="GcGameMode.xml">
								<Property name="PresetGameMode" value="Seasonal" />
							</Property>
						</Property>
					</Property>
				</Property>
				<Property value="GcMissionConditionStatLevel.xml">
					<Property name="Stat" value="DIST_WARP" />
					<Property name="StatGroup" value="GLOBAL_STATS" />
					<Property name="Level" value="10" />
					<Property name="LevelledStatRank" value="-1" />
					<Property name="TakeLevelFromSeasonData" value="False" />
					<Property name="ForceIgnoreLevelledStat" value="False" />
					<Property name="MulAmountBySeasonTier" value="False" />
					<Property name="CompareStat" value="" />
					<Property name="DisplayMilestoneNumber" value="1" />
					<Property name="Test" value="TkEqualityEnum.xml">
						<Property name="EqualityEnum" value="GreaterEqual" />
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="CancelingConditions" />
	<Property name="FinalStageVersions">
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="6" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="7" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="8" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="9" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="10" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="11" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="12" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="13" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="14" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="15" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="16" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="17" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="18" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="19" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="20" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="21" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="22" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="23" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="24" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="25" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="26" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="27" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="28" />
			<Property name="Progress" value="11" />
		</Property>
	</Property>
	<Property name="Stages">
		<Property value="GcGenericMissionStage.xml">
			<Property name="Versions" />
			<Property name="Stage" value="GcMissionSequenceGroup.xml">
				<Property name="Silent" value="False" />
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="" />
					<Property name="ResHandle" value="GcResource.xml">
						<Property name="ResourceID" value="0" />
					</Property>
				</Property>
				<Property name="PageHint" value="GcMissionPageHint.xml">
					<Property name="MissionPageHint" value="None" />
				</Property>
				<Property name="PageDataLocID" value="" />
				<Property name="BuildMenuHint" value="" />
				<Property name="InventoryHint" value="" />
				<Property name="TerrainTarget" value="" />
				<Property name="DebugText" value="initial comms wrapper" />
				<Property name="ObjectiveID" value="UI_PRANKMISSION1_OBJ1" />
				<Property name="ObjectiveTipID" value="UI_PRANKMISSION1_OBJ1_TIP" />
				<Property name="HasCategoryOverride" value="False" />
				<Property name="OverrideCategory" value="GcMissionCategory.xml">
					<Property name="MissionCategory" value="Mission" />
				</Property>
				<Property name="HasColourOverride" value="False" />
				<Property name="ColourOverride" value="Colour.xml">
					<Property name="R" value="1" />
					<Property name="G" value="1" />
					<Property name="B" value="1" />
					<Property name="A" value="1" />
				</Property>
				<Property name="PrefixTitle" value="False" />
				<Property name="PrefixTitleText" value="" />
				<Property name="BlockPinning" value="False" />
				<Property name="AutoPinRepairs" value="False" />
				<Property name="BlockSpaceBattles" value="False" />
				<Property name="ConditionTest" value="GcMissionConditionTest.xml">
					<Property name="ConditionTest" value="AnyFalse" />
				</Property>
				<Property name="HideFromLogIfConditionsMet" value="False" />
				<Property name="DoConsequencesIfNeverActivated" value="True" />
				<Property name="RepeatLogic" value="None" />
				<Property name="IconStyle" value="Default" />
				<Property name="GalMapPathOverride" value="None" />
				<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
					<Property name="InputButton" value="None" />
				</Property>
				<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
					<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
					<Property name="FormattableObjective" value="" />
					<Property name="FormattableObjectiveTip" value="" />
				</Property>
				<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
					<Property name="ApplicableSeasonNumbers" />
					<Property name="OverrideObjective" value="" />
					<Property name="OverrideObjectiveTip" value="" />
				</Property>
				<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
					<Property name="TargetMissionSurveyId" value="" />
					<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
					<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
					<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
					<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
					<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
					<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
				</Property>
				<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
					<Property name="HasCustomNotifyTimer" value="False" />
					<Property name="NotifyDisplayTime" value="20" />
					<Property name="NotifyPauseTime" value="30" />
				</Property>
				<Property name="Conditions" />
				<Property name="Consequences" />
				<Property name="Stages">
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="wait to be selected or warp" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionIsCurrentMission.xml" />
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForWarps.xml">
										<Property name="Message" value="UI_PRANKMISSION1_MSG1" />
										<Property name="Amount" value="1" />
										<Property name="DebugText" value="wait to be selected or warp" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="comms control" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="Loop" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionMissionMessage.xml">
									<Property name="Message" value="PRANKM_STARTED" />
									<Property name="MessageToFormatSeasonalIDInto" value="" />
								</Property>
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="7" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="6" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="8" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="9" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
										<Property name="Message" value="UI_PRANKMISSION1_MSG1" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllTrue" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="AllowedToFormatObjectives" value="True" />
										<Property name="ForceAllowMissionRestart" value="False" />
										<Property name="ForceAllowMissionRestartEvent" value="" />
										<Property name="DebugText" value="wait for space" />
										<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
											<Property name="MissionMarkup" value="None" />
										</Property>
									</Property>
								</Property>
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions" />
									<Property name="Stage" value="GcMissionSequenceGroup.xml">
										<Property name="Silent" value="True" />
										<Property name="Icon" value="TkTextureResource.xml">
											<Property name="Filename" value="" />
											<Property name="ResHandle" value="GcResource.xml">
												<Property name="ResourceID" value="0" />
											</Property>
										</Property>
										<Property name="PageHint" value="GcMissionPageHint.xml">
											<Property name="MissionPageHint" value="None" />
										</Property>
										<Property name="PageDataLocID" value="" />
										<Property name="BuildMenuHint" value="" />
										<Property name="InventoryHint" value="" />
										<Property name="TerrainTarget" value="" />
										<Property name="DebugText" value="must be in space" />
										<Property name="ObjectiveID" value="" />
										<Property name="ObjectiveTipID" value="" />
										<Property name="HasCategoryOverride" value="False" />
										<Property name="OverrideCategory" value="GcMissionCategory.xml">
											<Property name="MissionCategory" value="Mission" />
										</Property>
										<Property name="HasColourOverride" value="False" />
										<Property name="ColourOverride" value="Colour.xml">
											<Property name="R" value="1" />
											<Property name="G" value="1" />
											<Property name="B" value="1" />
											<Property name="A" value="1" />
										</Property>
										<Property name="PrefixTitle" value="False" />
										<Property name="PrefixTitleText" value="" />
										<Property name="BlockPinning" value="False" />
										<Property name="AutoPinRepairs" value="False" />
										<Property name="BlockSpaceBattles" value="False" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllFalse" />
										</Property>
										<Property name="HideFromLogIfConditionsMet" value="False" />
										<Property name="DoConsequencesIfNeverActivated" value="True" />
										<Property name="RepeatLogic" value="None" />
										<Property name="IconStyle" value="Default" />
										<Property name="GalMapPathOverride" value="None" />
										<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
											<Property name="InputButton" value="None" />
										</Property>
										<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
											<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
											<Property name="FormattableObjective" value="" />
											<Property name="FormattableObjectiveTip" value="" />
										</Property>
										<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
											<Property name="ApplicableSeasonNumbers" />
											<Property name="OverrideObjective" value="" />
											<Property name="OverrideObjectiveTip" value="" />
										</Property>
										<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
											<Property name="TargetMissionSurveyId" value="" />
											<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
											<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
											<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
											<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
											<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
											<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
										</Property>
										<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
											<Property name="HasCustomNotifyTimer" value="False" />
											<Property name="NotifyDisplayTime" value="20" />
											<Property name="NotifyPauseTime" value="30" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInPlanetOrbit" />
											</Property>
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="Consequences">
											<Property value="GcMissionConsequenceRemoveCommunicatorMessage.xml">
												<Property name="Comms" value="D_PRANK1_COMMS" />
											</Property>
										</Property>
										<Property name="Stages">
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="2" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceWait.xml">
													<Property name="Time" value="9" />
													<Property name="DebugText" value="small wait" />
													<Property name="SuppressMessages" value="False" />
													<Property name="MultiplyTimeBySeasonValue" value="False" />
												</Property>
											</Property>
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="3" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceCommunicator.xml">
													<Property name="Message" value="UI_PRANKMISSION1_MSG2" />
													<Property name="VRMessage" value="UI_CORE_COMMS_MSG2_VR1" />
													<Property name="OptionalWaitMessage" value="" />
													<Property name="OSDMessage" value="UI_WATERHUD_OSD" />
													<Property name="Comms" value="GcPlayerCommunicatorMessage.xml">
														<Property name="Dialog" value="D_PRANK1_COMMS" />
														<Property name="ShowHologram" value="False" />
														<Property name="CommunicatorType" value="Generic" />
														<Property name="RaceOverride" value="GcAlienRace.xml">
															<Property name="AlienRace" value="Traders" />
														</Property>
														<Property name="ShipHUDOverride" value="UI_PRANKHUD_OVERRIDE" />
														<Property name="HailAudioOverride" value="GcAudioWwiseEvents.xml">
															<Property name="AkEvent" value="INVALID_EVENT" />
														</Property>
													</Property>
													<Property name="AutoOpen" value="False" />
													<Property name="UsePulseEncounterObjectAsAttachment" value="False" />
													<Property name="MinTimeInSpaceBeforeCall" value="0" />
													<Property name="FormatDialogIDWithSeasonData" value="" />
													<Property name="DebugText" value="answer the space phone" />
												</Property>
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="4" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceModifyStat.xml">
							<Property name="Stat" value="PRANKSTORY_LORE" />
							<Property name="Amount" value="0" />
							<Property name="ModifyType" value="GcStatModifyType.xml">
								<Property name="ModifyType" value="Set" />
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="5" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
							<Property name="MissionUpdateMessage" value="Start" />
							<Property name="CustomMessageLocID" value="" />
							<Property name="CustomObjectiveLocID" value="" />
							<Property name="SetMissionSelected" value="True" />
							<Property name="WaitForMessageOver" value="True" />
							<Property name="ShowChangeMissionNotify" value="False" />
							<Property name="SuppressNotificationsNotFromThisMission" value="False" />
							<Property name="PlayMusicSting" value="Start" />
							<Property name="DebugText" value="mission update message" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="6" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
							<Property name="Table" value="GcScanEventTableType.xml">
								<Property name="ScanTable" value="Tutorial" />
							</Property>
							<Property name="Participant" value="GcPlayerMissionParticipantType.xml">
								<Property name="ParticipantType" value="None" />
							</Property>
							<Property name="Event" value="SE_PRANKMISSION1_START" />
							<Property name="Time" value="0.6" />
							<Property name="DoAerialScan" value="False" />
							<Property name="AllowOtherPlayersBase" value="False" />
							<Property name="IgnoreIfAlreadyActive" value="False" />
							<Property name="DebugText" value="start scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="7" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
							<Property name="Message" value="UI_WATERMISSION1_MSG3" />
							<Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP_PRANK" />
							<Property name="GalaxyMapMessageNotSpace" value="" />
							<Property name="NexusMessage" value="" />
							<Property name="Event" value="SE_PRANKMISSION1_START" />
							<Property name="Timeout" value="0" />
							<Property name="DistanceTimeout" value="False" />
							<Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
							<Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
								<Property name="ScanEventGPSHint" value="None" />
							</Property>
							<Property name="SurveyInactiveHint" value="UI_WATERMISS1_SURVEY_OFF" />
							<Property name="SurveySwapHint" value="UI_WATERMISS1_SURVEY_SWAP" />
							<Property name="SurveyHint" value="UI_WATERMISS1_SURVEY" />
							<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							<Property name="DebugText" value="wait for scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="8" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="8" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="8" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="8" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="8" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="8" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="8" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceModifyStat.xml">
							<Property name="Stat" value="PRANKSTORY_LORE" />
							<Property name="Amount" value="1" />
							<Property name="ModifyType" value="GcStatModifyType.xml">
								<Property name="ModifyType" value="Set" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ForcesPageHint" value="False" />
	<Property name="ForcesBuildMenuHint" value="False" />
	<Property name="IsProceduralAllowed" value="False" />
	<Property name="IsRecurring" value="False" />
	<Property name="IsLegacy" value="False" />
	<Property name="BlocksPinning" value="False" />
	<Property name="CanRenounce" value="False" />
	<Property name="UseCommunityMissionForLog" value="" />
	<Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
	<Property name="TelemetryUpload" value="False" />
	<Property name="UseSeasonTitleOverride" value="False" />
</Property>
<Property value="GcGenericMissionSequence.xml">
	<Property name="MissionID" value="PRANKSTORY2" />
	<Property name="MissionClass" value="ChainedSecondary" />
	<Property name="MissionIsCritical" value="False" />
	<Property name="MissionObjective" value="" />
	<Property name="MissionTitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_TITLE" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionSubtitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_SUB" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionDescriptions" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_DESC" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
		<Property name="ApplicableSeasonNumbers" />
		<Property name="MissionTitle" value="" />
		<Property name="MissionSubtitle" value="" />
		<Property name="MissionDescription" value="" />
	</Property>
	<Property name="MissionDescSwitchOverride" value="" />
	<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="UseScanEventDetailsInLogInfo" value="False" />
	<Property name="MissionIcon" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.ON.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconNotSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.OFF.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionPriority" value="0" />
	<Property name="MissionCategory" value="GcMissionCategory.xml">
		<Property name="MissionCategory" value="Mission" />
	</Property>
	<Property name="MissionPageHint" value="GcMissionPageHint.xml">
		<Property name="MissionPageHint" value="None" />
	</Property>
	<Property name="MissionPageLocID" value="" />
	<Property name="MissionBuildMenuHint" value="" />
	<Property name="MissionHasColourOverride" value="False" />
	<Property name="MissionColourOverride" value="Colour.xml">
		<Property name="R" value="1" />
		<Property name="G" value="1" />
		<Property name="B" value="1" />
		<Property name="A" value="1" />
	</Property>
	<Property name="BeginCheckFrequency" value="20" />
	<Property name="WikiMissionBlockedBySeasons" />
	<Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
		<Property name="PrimarySubstances" />
		<Property name="SecondarySubstances" />
		<Property name="PrimaryProducts" />
		<Property name="SecondaryProducts" />
		<Property name="AmountMin" value="0" />
		<Property name="AmountMax" value="0" />
		<Property name="AmountShouldBeRoundNumber" value="False" />
	</Property>
	<Property name="PrefixTitle" value="True" />
	<Property name="NextMissionHint" value="" />
	<Property name="MessageComplete" value="Never" />
	<Property name="MessageStart" value="Never" />
	<Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
		<Property name="Type" value="GcMissionType.xml">
			<Property name="MissionType" value="SpaceCombat" />
		</Property>
		<Property name="Difficulty" value="GcMissionDifficulty.xml">
			<Property name="MissionDifficulty" value="Normal" />
		</Property>
		<Property name="MinRank" value="0" />
		<Property name="CloseMissionGiver" value="False" />
		<Property name="IsGuildShopMission" value="False" />
		<Property name="IsPlanetProcMission" value="False" />
		<Property name="IsMultiplayerEventMission" value="False" />
		<Property name="RewardPenaltyOnAbandon" value="" />
		<Property name="Faction" />
		<Property name="Weighting" value="100" />
		<Property name="IgnoreCalculatedObjective" value="False" />
		<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
		<Property name="DefaultItemInitialWarpScanEvents" />
		<Property name="DefaultItemTypeForInitialWarp" value="None" />
		<Property name="BasePartBlueprints" />
	</Property>
	<Property name="AutoStart" value="AllModes" />
	<Property name="RestartOnCompletion" value="False" />
	<Property name="CancelSetsComplete" value="False" />
	<Property name="Dialog" value="GcAlienPuzzleTable.xml">
		<Property name="Table">
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK2_COMMS" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_NPC_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION2_COMMS_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_COMMS_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION2_COMMS_RES" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property value="NMSString0x10.xml">
								<Property name="Value" value="R_PRANKM2_START" />
							</Property>
						</Property>
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="True" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK2_STORY" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_TITLE" />
				<Property name="Text" value="NPC_PRANKMISSION2_DESC" />
				<Property name="TextAlien" value="" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION1_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ScanEvents">
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="SE_PRANKMISSION2_START" />
			<Property name="ForceInteraction" value="D_PRANK2_STORY" />
			<Property name="UseSeasonDataAsInteraction" value="False" />
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="AnomalyComputer" />
			</Property>
			<Property name="NPCReactsToPlayer" value="False" />
			<Property name="RequireInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="False" />
			<Property name="ForceFixed" value="True" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceOverridesAll" value="True" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="False" />
			<Property name="ClearForcedInteractionOnCompletion" value="False" />
			<Property name="BuildingPreventionRadius" value="0" />
			<Property name="UseMissionTradingDataOverride" value="False" />
			<Property name="AlwaysShow" value="False" />
			<Property name="NeverShow" value="False" />
			<Property name="ShowOnlyIfSequenceTarget" value="False" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="500" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_PRANKMISS1_SURVEY_OSD" />
			<Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="Regular" />
			<Property name="CanEndFromOutsideMission" value="False" />
			<Property name="DisableMultiplayerSync" value="False" />
			<Property name="BlockStartedOnUseEvents" value="False" />
			<Property name="ReplaceEventIfAlreadyActive" value="False" />
			<Property name="BuildingLocation" value="Nearest" />
			<Property name="BuildingType" value="Nexus" />
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="None" />
			</Property>
			<Property name="AllowFriendsBases" value="False" />
			<Property name="ForceWideRandom" value="False" />
			<Property name="MustFindSystem" value="False" />
			<Property name="AllowOverriddenBuildings" value="True" />
			<Property name="TargetMustMatchMissionSeed" value="False" />
			<Property name="SolarSystemLocation" value="LocalOrNear" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="ForceRestartInteraction" value="True" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="False" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="UI_WATERMISSION1_OSD" />
			<Property name="InterstellarOSDMessage" value="PRANK_SCANEVENT_ANOMALY" />
			<Property name="MarkerLabel" value="UI_WATERMISSION1_MARKER" />
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0" />
			<Property name="MessageTime" value="0" />
			<Property name="MessageDisplayTime" value="4" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="UI_NEW_DISCOVERY" />
			</Property>
			<Property name="IconTime" value="4" />
			<Property name="TooltipTime" value="10" />
			<Property name="TooltipRepeats" value="False" />
			<Property name="ShowEndTooltip" value="True" />
			<Property name="TooltipMessage" value="" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				</Property>
				<Property name="AltId" value="" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Rewards">
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="R_PRANKM2_START" />
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="False" />
				<Property name="UseInventoryChoiceOverride" value="False" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property value="GcRewardTableItem.xml">
						<Property name="PercentageChance" value="100" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMissionMessage.xml">
							<Property name="MessageID" value="PRANKM2_STARTED" />
							<Property name="BroadcastInMultiplayer" value="False" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Costs" />
	<Property name="TradingDataOverride" value="GcTradeData.xml">
		<Property name="AlwaysPresentProducts" />
		<Property name="AlwaysPresentSubstances" />
		<Property name="OptionalProducts" />
		<Property name="OptionalSubstances" />
		<Property name="MinItemsForSale" value="5" />
		<Property name="MaxItemsForSale" value="15" />
		<Property name="PercentageOfItemsAreProducts" value="0.3" />
		<Property name="BuyPriceIncreaseRedThreshold" value="20" />
		<Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
		<Property name="SellPriceIncreaseGreenThreshold" value="10" />
		<Property name="SellPriceDecreaseRedThreshold" value="-20" />
		<Property name="ShowSeasonRewards" value="False" />
		<Property name="MinAmountOfProductAvailable">
			<Property name="Poor" value="10" />
			<Property name="Average" value="10" />
			<Property name="Wealthy" value="10" />
			<Property name="Pirate" value="10" />
		</Property>
		<Property name="MaxAmountOfProductAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MinAmountOfSubstanceAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MaxAmountOfSubstanceAvailable">
			<Property name="Poor" value="1000" />
			<Property name="Average" value="1000" />
			<Property name="Wealthy" value="1000" />
			<Property name="Pirate" value="1000" />
		</Property>
		<Property name="MinExtraSystemProducts">
			<Property name="Poor" value="2" />
			<Property name="Average" value="2" />
			<Property name="Wealthy" value="2" />
			<Property name="Pirate" value="2" />
		</Property>
		<Property name="MaxExtraSystemProducts">
			<Property name="Poor" value="4" />
			<Property name="Average" value="4" />
			<Property name="Wealthy" value="4" />
			<Property name="Pirate" value="4" />
		</Property>
		<Property name="TradeProductsPriceImprovements">
			<Property name="Poor" value="0" />
			<Property name="Average" value="0" />
			<Property name="Wealthy" value="0" />
			<Property name="Pirate" value="0" />
		</Property>
	</Property>
	<Property name="StartConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AllFalse" />
	</Property>
	<Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AnyFalse" />
	</Property>
	<Property name="StartIsCancel" value="False" />
	<Property name="StartingConditions">
		<Property value="GcMissionConditionMissionCompleted.xml">
			<Property name="MissionID" value="PRANKSTORY1" />
			<Property name="SeasonalMissionSeed" value="-1" />
			<Property name="TakeIDFromSeasonData" value="False" />
			<Property name="CalculateTextMissionTargetFromStageIndex" value="False" />
			<Property name="CalculateSeasonalSeedFromStageIndexOffset" value="999" />
		</Property>
	</Property>
	<Property name="CancelingConditions" />
	<Property name="FinalStageVersions">
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="6" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="7" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="8" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="9" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="10" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="11" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="12" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="13" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="14" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="15" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="16" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="17" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="18" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="19" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="20" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="21" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="22" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="23" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="24" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="25" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="26" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="27" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="28" />
			<Property name="Progress" value="11" />
		</Property>
	</Property>
	<Property name="Stages">
		<Property value="GcGenericMissionStage.xml">
			<Property name="Versions" />
			<Property name="Stage" value="GcMissionSequenceGroup.xml">
				<Property name="Silent" value="False" />
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="" />
					<Property name="ResHandle" value="GcResource.xml">
						<Property name="ResourceID" value="0" />
					</Property>
				</Property>
				<Property name="PageHint" value="GcMissionPageHint.xml">
					<Property name="MissionPageHint" value="None" />
				</Property>
				<Property name="PageDataLocID" value="" />
				<Property name="BuildMenuHint" value="" />
				<Property name="InventoryHint" value="" />
				<Property name="TerrainTarget" value="" />
				<Property name="DebugText" value="initial comms wrapper" />
				<Property name="ObjectiveID" value="UI_PRANKMISSION1_OBJ1" />
				<Property name="ObjectiveTipID" value="UI_PRANKMISSION1_OBJ1_TIP" />
				<Property name="HasCategoryOverride" value="False" />
				<Property name="OverrideCategory" value="GcMissionCategory.xml">
					<Property name="MissionCategory" value="Mission" />
				</Property>
				<Property name="HasColourOverride" value="False" />
				<Property name="ColourOverride" value="Colour.xml">
					<Property name="R" value="1" />
					<Property name="G" value="1" />
					<Property name="B" value="1" />
					<Property name="A" value="1" />
				</Property>
				<Property name="PrefixTitle" value="False" />
				<Property name="PrefixTitleText" value="" />
				<Property name="BlockPinning" value="False" />
				<Property name="AutoPinRepairs" value="False" />
				<Property name="BlockSpaceBattles" value="False" />
				<Property name="ConditionTest" value="GcMissionConditionTest.xml">
					<Property name="ConditionTest" value="AnyFalse" />
				</Property>
				<Property name="HideFromLogIfConditionsMet" value="False" />
				<Property name="DoConsequencesIfNeverActivated" value="True" />
				<Property name="RepeatLogic" value="None" />
				<Property name="IconStyle" value="Default" />
				<Property name="GalMapPathOverride" value="None" />
				<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
					<Property name="InputButton" value="None" />
				</Property>
				<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
					<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
					<Property name="FormattableObjective" value="" />
					<Property name="FormattableObjectiveTip" value="" />
				</Property>
				<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
					<Property name="ApplicableSeasonNumbers" />
					<Property name="OverrideObjective" value="" />
					<Property name="OverrideObjectiveTip" value="" />
				</Property>
				<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
					<Property name="TargetMissionSurveyId" value="" />
					<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
					<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
					<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
					<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
					<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
					<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
				</Property>
				<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
					<Property name="HasCustomNotifyTimer" value="False" />
					<Property name="NotifyDisplayTime" value="20" />
					<Property name="NotifyPauseTime" value="30" />
				</Property>
				<Property name="Conditions" />
				<Property name="Consequences" />
				<Property name="Stages">
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="0" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
							<Property name="MissionID" value="" />
							<Property name="FirstIncompleteMilestone" value="False" />
							<Property name="Silent" value="False" />
							<Property name="DebugText" value="set self current" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="wait to be selected or warp" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionIsCurrentMission.xml" />
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForWarps.xml">
										<Property name="Message" value="UI_WATERMISSION1_MSG1" />
										<Property name="Amount" value="1" />
										<Property name="DebugText" value="wait to be selected or warp" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="comms control" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="Loop" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionMissionMessage.xml">
									<Property name="Message" value="PRANKM2_STARTED" />
									<Property name="MessageToFormatSeasonalIDInto" value="" />
								</Property>
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="7" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="6" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="8" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="9" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
										<Property name="Message" value="UI_PRANKMISSION1_MSG1" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllTrue" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="AllowedToFormatObjectives" value="True" />
										<Property name="ForceAllowMissionRestart" value="False" />
										<Property name="ForceAllowMissionRestartEvent" value="" />
										<Property name="DebugText" value="wait for space" />
										<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
											<Property name="MissionMarkup" value="None" />
										</Property>
									</Property>
								</Property>
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions" />
									<Property name="Stage" value="GcMissionSequenceGroup.xml">
										<Property name="Silent" value="True" />
										<Property name="Icon" value="TkTextureResource.xml">
											<Property name="Filename" value="" />
											<Property name="ResHandle" value="GcResource.xml">
												<Property name="ResourceID" value="0" />
											</Property>
										</Property>
										<Property name="PageHint" value="GcMissionPageHint.xml">
											<Property name="MissionPageHint" value="None" />
										</Property>
										<Property name="PageDataLocID" value="" />
										<Property name="BuildMenuHint" value="" />
										<Property name="InventoryHint" value="" />
										<Property name="TerrainTarget" value="" />
										<Property name="DebugText" value="must be in space" />
										<Property name="ObjectiveID" value="" />
										<Property name="ObjectiveTipID" value="" />
										<Property name="HasCategoryOverride" value="False" />
										<Property name="OverrideCategory" value="GcMissionCategory.xml">
											<Property name="MissionCategory" value="Mission" />
										</Property>
										<Property name="HasColourOverride" value="False" />
										<Property name="ColourOverride" value="Colour.xml">
											<Property name="R" value="1" />
											<Property name="G" value="1" />
											<Property name="B" value="1" />
											<Property name="A" value="1" />
										</Property>
										<Property name="PrefixTitle" value="False" />
										<Property name="PrefixTitleText" value="" />
										<Property name="BlockPinning" value="False" />
										<Property name="AutoPinRepairs" value="False" />
										<Property name="BlockSpaceBattles" value="False" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllFalse" />
										</Property>
										<Property name="HideFromLogIfConditionsMet" value="False" />
										<Property name="DoConsequencesIfNeverActivated" value="True" />
										<Property name="RepeatLogic" value="None" />
										<Property name="IconStyle" value="Default" />
										<Property name="GalMapPathOverride" value="None" />
										<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
											<Property name="InputButton" value="None" />
										</Property>
										<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
											<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
											<Property name="FormattableObjective" value="" />
											<Property name="FormattableObjectiveTip" value="" />
										</Property>
										<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
											<Property name="ApplicableSeasonNumbers" />
											<Property name="OverrideObjective" value="" />
											<Property name="OverrideObjectiveTip" value="" />
										</Property>
										<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
											<Property name="TargetMissionSurveyId" value="" />
											<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
											<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
											<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
											<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
											<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
											<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
										</Property>
										<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
											<Property name="HasCustomNotifyTimer" value="False" />
											<Property name="NotifyDisplayTime" value="20" />
											<Property name="NotifyPauseTime" value="30" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInPlanetOrbit" />
											</Property>
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="Consequences">
											<Property value="GcMissionConsequenceRemoveCommunicatorMessage.xml">
												<Property name="Comms" value="D_PRANK1_COMMS" />
											</Property>
										</Property>
										<Property name="Stages">
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="2" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceWait.xml">
													<Property name="Time" value="9" />
													<Property name="DebugText" value="small wait" />
													<Property name="SuppressMessages" value="False" />
													<Property name="MultiplyTimeBySeasonValue" value="False" />
												</Property>
											</Property>
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="3" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceCommunicator.xml">
													<Property name="Message" value="UI_PRANKMISSION1_MSG2" />
													<Property name="VRMessage" value="UI_CORE_COMMS_MSG2_VR1" />
													<Property name="OptionalWaitMessage" value="" />
													<Property name="OSDMessage" value="UI_WATERHUD_OSD" />
													<Property name="Comms" value="GcPlayerCommunicatorMessage.xml">
														<Property name="Dialog" value="D_PRANK2_COMMS" />
														<Property name="ShowHologram" value="False" />
														<Property name="CommunicatorType" value="Generic" />
														<Property name="RaceOverride" value="GcAlienRace.xml">
															<Property name="AlienRace" value="Traders" />
														</Property>
														<Property name="ShipHUDOverride" value="UI_PRANKHUD_OVERRIDE" />
														<Property name="HailAudioOverride" value="GcAudioWwiseEvents.xml">
															<Property name="AkEvent" value="INVALID_EVENT" />
														</Property>
													</Property>
													<Property name="AutoOpen" value="False" />
													<Property name="UsePulseEncounterObjectAsAttachment" value="False" />
													<Property name="MinTimeInSpaceBeforeCall" value="0" />
													<Property name="FormatDialogIDWithSeasonData" value="" />
													<Property name="DebugText" value="answer the space phone" />
												</Property>
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="5" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
							<Property name="MissionUpdateMessage" value="Start" />
							<Property name="CustomMessageLocID" value="" />
							<Property name="CustomObjectiveLocID" value="" />
							<Property name="SetMissionSelected" value="True" />
							<Property name="WaitForMessageOver" value="True" />
							<Property name="ShowChangeMissionNotify" value="False" />
							<Property name="SuppressNotificationsNotFromThisMission" value="False" />
							<Property name="PlayMusicSting" value="Start" />
							<Property name="DebugText" value="mission update message" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="6" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
							<Property name="Table" value="GcScanEventTableType.xml">
								<Property name="ScanTable" value="Tutorial" />
							</Property>
							<Property name="Participant" value="GcPlayerMissionParticipantType.xml">
								<Property name="ParticipantType" value="None" />
							</Property>
							<Property name="Event" value="SE_PRANKMISSION2_START" />
							<Property name="Time" value="0.6" />
							<Property name="DoAerialScan" value="False" />
							<Property name="AllowOtherPlayersBase" value="False" />
							<Property name="IgnoreIfAlreadyActive" value="False" />
							<Property name="DebugText" value="start scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="7" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
							<Property name="Message" value="UI_PRANKMISSION1_MSG3" />
							<Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP_ANOMALY" />
							<Property name="GalaxyMapMessageNotSpace" value="" />
							<Property name="NexusMessage" value="" />
							<Property name="Event" value="SE_PRANKMISSION2_START" />
							<Property name="Timeout" value="0" />
							<Property name="DistanceTimeout" value="False" />
							<Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
							<Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
								<Property name="ScanEventGPSHint" value="None" />
							</Property>
							<Property name="SurveyInactiveHint" value="UI_PRANKMISS1_SURVEY_OFF" />
							<Property name="SurveySwapHint" value="UI_PRANKMISS1_SURVEY_OFF" />
							<Property name="SurveyHint" value="UI_PRANKMISS1_SURVEY_OFF" />
							<Property name="SurveyVehicleHint" value="UI_PRANKMISS1_SURVEY_OFF" />
							<Property name="DebugText" value="wait for scan event" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ForcesPageHint" value="False" />
	<Property name="ForcesBuildMenuHint" value="False" />
	<Property name="IsProceduralAllowed" value="False" />
	<Property name="IsRecurring" value="False" />
	<Property name="IsLegacy" value="False" />
	<Property name="BlocksPinning" value="False" />
	<Property name="CanRenounce" value="False" />
	<Property name="UseCommunityMissionForLog" value="" />
	<Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
	<Property name="TelemetryUpload" value="False" />
	<Property name="UseSeasonTitleOverride" value="False" />
</Property>
<Property value="GcGenericMissionSequence.xml">
	<Property name="MissionID" value="PRANKSTORY3" />
	<Property name="MissionClass" value="ChainedSecondary" />
	<Property name="MissionIsCritical" value="False" />
	<Property name="MissionObjective" value="" />
	<Property name="MissionTitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_TITLE" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionSubtitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_SUB" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionDescriptions" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_DESC" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
		<Property name="ApplicableSeasonNumbers" />
		<Property name="MissionTitle" value="" />
		<Property name="MissionSubtitle" value="" />
		<Property name="MissionDescription" value="" />
	</Property>
	<Property name="MissionDescSwitchOverride" value="" />
	<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="UseScanEventDetailsInLogInfo" value="False" />
	<Property name="MissionIcon" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.ON.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconNotSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.OFF.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionPriority" value="0" />
	<Property name="MissionCategory" value="GcMissionCategory.xml">
		<Property name="MissionCategory" value="Mission" />
	</Property>
	<Property name="MissionPageHint" value="GcMissionPageHint.xml">
		<Property name="MissionPageHint" value="None" />
	</Property>
	<Property name="MissionPageLocID" value="" />
	<Property name="MissionBuildMenuHint" value="" />
	<Property name="MissionHasColourOverride" value="False" />
	<Property name="MissionColourOverride" value="Colour.xml">
		<Property name="R" value="1" />
		<Property name="G" value="1" />
		<Property name="B" value="1" />
		<Property name="A" value="1" />
	</Property>
	<Property name="BeginCheckFrequency" value="20" />
	<Property name="WikiMissionBlockedBySeasons" />
	<Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
		<Property name="PrimarySubstances" />
		<Property name="SecondarySubstances" />
		<Property name="PrimaryProducts" />
		<Property name="SecondaryProducts" />
		<Property name="AmountMin" value="0" />
		<Property name="AmountMax" value="0" />
		<Property name="AmountShouldBeRoundNumber" value="False" />
	</Property>
	<Property name="PrefixTitle" value="True" />
	<Property name="NextMissionHint" value="" />
	<Property name="MessageComplete" value="Never" />
	<Property name="MessageStart" value="Never" />
	<Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
		<Property name="Type" value="GcMissionType.xml">
			<Property name="MissionType" value="SpaceCombat" />
		</Property>
		<Property name="Difficulty" value="GcMissionDifficulty.xml">
			<Property name="MissionDifficulty" value="Normal" />
		</Property>
		<Property name="MinRank" value="0" />
		<Property name="CloseMissionGiver" value="False" />
		<Property name="IsGuildShopMission" value="False" />
		<Property name="IsPlanetProcMission" value="False" />
		<Property name="IsMultiplayerEventMission" value="False" />
		<Property name="RewardPenaltyOnAbandon" value="" />
		<Property name="Faction" />
		<Property name="Weighting" value="100" />
		<Property name="IgnoreCalculatedObjective" value="False" />
		<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
		<Property name="DefaultItemInitialWarpScanEvents" />
		<Property name="DefaultItemTypeForInitialWarp" value="None" />
		<Property name="BasePartBlueprints" />
	</Property>
	<Property name="AutoStart" value="AllModes" />
	<Property name="RestartOnCompletion" value="False" />
	<Property name="CancelSetsComplete" value="False" />
	<Property name="Dialog" value="GcAlienPuzzleTable.xml">
		<Property name="Table">
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK3_COMMS" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION2_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION3_COMMS_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_COMMS_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION3_COMMS_RES" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property value="NMSString0x10.xml">
								<Property name="Value" value="R_PRANKM3_START" />
							</Property>
						</Property>
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="True" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK3_STORY" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION3_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION3_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_BYE_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION3_SUM" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Positive" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK3B_STORY" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION3_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION3B_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_BYE_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION3B_SUM" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="VeryNegative" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK3C_STORY" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION3_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION3C_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_BYE_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION3C_SUM" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ScanEvents">
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="SE_PRANKMISSION3_START" />
			<Property name="ForceInteraction" value="D_PRANK3_STORY" />
			<Property name="UseSeasonDataAsInteraction" value="False" />
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="NPC" />
			</Property>
			<Property name="NPCReactsToPlayer" value="False" />
			<Property name="RequireInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="False" />
			<Property name="ForceFixed" value="False" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceOverridesAll" value="True" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="False" />
			<Property name="ClearForcedInteractionOnCompletion" value="False" />
			<Property name="BuildingPreventionRadius" value="0" />
			<Property name="UseMissionTradingDataOverride" value="False" />
			<Property name="AlwaysShow" value="False" />
			<Property name="NeverShow" value="False" />
			<Property name="ShowOnlyIfSequenceTarget" value="False" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="500" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_WATERMISS1_SURVEY_OSD" />
			<Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="Regular" />
			<Property name="CanEndFromOutsideMission" value="False" />
			<Property name="DisableMultiplayerSync" value="False" />
			<Property name="BlockStartedOnUseEvents" value="False" />
			<Property name="ReplaceEventIfAlreadyActive" value="False" />
			<Property name="BuildingLocation" value="Nearest" />
			<Property name="BuildingType" value="SpaceStation" />
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="None" />
			</Property>
			<Property name="AllowFriendsBases" value="False" />
			<Property name="ForceWideRandom" value="False" />
			<Property name="MustFindSystem" value="False" />
			<Property name="AllowOverriddenBuildings" value="True" />
			<Property name="TargetMustMatchMissionSeed" value="False" />
			<Property name="SolarSystemLocation" value="LocalOrNear" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Pirate" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="ForceRestartInteraction" value="True" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="False" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="UI_WATERMISSION1_OSD" />
			<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
			<Property name="MarkerLabel" value="UI_WATERMISSION1_MARKER" />
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0" />
			<Property name="MessageTime" value="0" />
			<Property name="MessageDisplayTime" value="4" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="UI_NEW_DISCOVERY" />
			</Property>
			<Property name="IconTime" value="4" />
			<Property name="TooltipTime" value="10" />
			<Property name="TooltipRepeats" value="False" />
			<Property name="ShowEndTooltip" value="True" />
			<Property name="TooltipMessage" value="" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				</Property>
				<Property name="AltId" value="" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				</Property>
			</Property>
		</Property>
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="SE_PRANKMISSION3B_START" />
			<Property name="ForceInteraction" value="D_PRANK3B_STORY" />
			<Property name="UseSeasonDataAsInteraction" value="False" />
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="PirateShop" />
			</Property>
			<Property name="NPCReactsToPlayer" value="False" />
			<Property name="RequireInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="False" />
			<Property name="ForceFixed" value="False" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceOverridesAll" value="False" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="False" />
			<Property name="ClearForcedInteractionOnCompletion" value="False" />
			<Property name="BuildingPreventionRadius" value="0" />
			<Property name="UseMissionTradingDataOverride" value="False" />
			<Property name="AlwaysShow" value="False" />
			<Property name="NeverShow" value="False" />
			<Property name="ShowOnlyIfSequenceTarget" value="False" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="0" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_PLACEHOLDER_TEXT" />
			<Property name="SurveyHUDName" value="UI_PLACEHOLDER_SUB" />
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="Regular" />
			<Property name="CanEndFromOutsideMission" value="False" />
			<Property name="DisableMultiplayerSync" value="False" />
			<Property name="BlockStartedOnUseEvents" value="False" />
			<Property name="ReplaceEventIfAlreadyActive" value="False" />
			<Property name="BuildingLocation" value="Nearest" />
			<Property name="BuildingType" value="SpaceStation" />
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="None" />
			</Property>
			<Property name="AllowFriendsBases" value="False" />
			<Property name="ForceWideRandom" value="False" />
			<Property name="MustFindSystem" value="False" />
			<Property name="AllowOverriddenBuildings" value="False" />
			<Property name="TargetMustMatchMissionSeed" value="False" />
			<Property name="SolarSystemLocation" value="Near" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Pirate" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="ForceRestartInteraction" value="False" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="False" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="" />
			<Property name="InterstellarOSDMessage" value="" />
			<Property name="MarkerLabel" value="UI_WATERMISSION1_MARKER" />
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0" />
			<Property name="MessageTime" value="0" />
			<Property name="MessageDisplayTime" value="4" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
			<Property name="IconTime" value="4" />
			<Property name="TooltipTime" value="10" />
			<Property name="TooltipRepeats" value="False" />
			<Property name="ShowEndTooltip" value="False" />
			<Property name="TooltipMessage" value="" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				</Property>
				<Property name="AltId" value="" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				</Property>
			</Property>
		</Property>
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="SE_PRANKMISSION3C_START" />
			<Property name="ForceInteraction" value="D_PRANK3C_STORY" />
			<Property name="UseSeasonDataAsInteraction" value="False" />
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="TechShop" />
			</Property>
			<Property name="NPCReactsToPlayer" value="False" />
			<Property name="RequireInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="False" />
			<Property name="ForceFixed" value="False" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceOverridesAll" value="False" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="False" />
			<Property name="ClearForcedInteractionOnCompletion" value="False" />
			<Property name="BuildingPreventionRadius" value="0" />
			<Property name="UseMissionTradingDataOverride" value="False" />
			<Property name="AlwaysShow" value="False" />
			<Property name="NeverShow" value="False" />
			<Property name="ShowOnlyIfSequenceTarget" value="False" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="0" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_PLACEHOLDER_TEXT" />
			<Property name="SurveyHUDName" value="UI_PLACEHOLDER_SUB" />
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="Regular" />
			<Property name="CanEndFromOutsideMission" value="False" />
			<Property name="DisableMultiplayerSync" value="False" />
			<Property name="BlockStartedOnUseEvents" value="False" />
			<Property name="ReplaceEventIfAlreadyActive" value="False" />
			<Property name="BuildingLocation" value="Nearest" />
			<Property name="BuildingType" value="SpaceStation" />
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="None" />
			</Property>
			<Property name="AllowFriendsBases" value="False" />
			<Property name="ForceWideRandom" value="False" />
			<Property name="MustFindSystem" value="False" />
			<Property name="AllowOverriddenBuildings" value="False" />
			<Property name="TargetMustMatchMissionSeed" value="False" />
			<Property name="SolarSystemLocation" value="Near" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Pirate" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="ForceRestartInteraction" value="False" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="False" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="" />
			<Property name="InterstellarOSDMessage" value="" />
			<Property name="MarkerLabel" value="UI_WATERMISSION1_MARKER" />
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0" />
			<Property name="MessageTime" value="0" />
			<Property name="MessageDisplayTime" value="4" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
			<Property name="IconTime" value="4" />
			<Property name="TooltipTime" value="10" />
			<Property name="TooltipRepeats" value="False" />
			<Property name="ShowEndTooltip" value="False" />
			<Property name="TooltipMessage" value="" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				</Property>
				<Property name="AltId" value="" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Rewards">
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="R_PRANKM3_START" />
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="False" />
				<Property name="UseInventoryChoiceOverride" value="False" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property value="GcRewardTableItem.xml">
						<Property name="PercentageChance" value="100" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMissionMessage.xml">
							<Property name="MessageID" value="PRANKM3_STARTED" />
							<Property name="BroadcastInMultiplayer" value="False" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Costs" />
	<Property name="TradingDataOverride" value="GcTradeData.xml">
		<Property name="AlwaysPresentProducts" />
		<Property name="AlwaysPresentSubstances" />
		<Property name="OptionalProducts" />
		<Property name="OptionalSubstances" />
		<Property name="MinItemsForSale" value="5" />
		<Property name="MaxItemsForSale" value="15" />
		<Property name="PercentageOfItemsAreProducts" value="0.3" />
		<Property name="BuyPriceIncreaseRedThreshold" value="20" />
		<Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
		<Property name="SellPriceIncreaseGreenThreshold" value="10" />
		<Property name="SellPriceDecreaseRedThreshold" value="-20" />
		<Property name="ShowSeasonRewards" value="False" />
		<Property name="MinAmountOfProductAvailable">
			<Property name="Poor" value="10" />
			<Property name="Average" value="10" />
			<Property name="Wealthy" value="10" />
			<Property name="Pirate" value="10" />
		</Property>
		<Property name="MaxAmountOfProductAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MinAmountOfSubstanceAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MaxAmountOfSubstanceAvailable">
			<Property name="Poor" value="1000" />
			<Property name="Average" value="1000" />
			<Property name="Wealthy" value="1000" />
			<Property name="Pirate" value="1000" />
		</Property>
		<Property name="MinExtraSystemProducts">
			<Property name="Poor" value="2" />
			<Property name="Average" value="2" />
			<Property name="Wealthy" value="2" />
			<Property name="Pirate" value="2" />
		</Property>
		<Property name="MaxExtraSystemProducts">
			<Property name="Poor" value="4" />
			<Property name="Average" value="4" />
			<Property name="Wealthy" value="4" />
			<Property name="Pirate" value="4" />
		</Property>
		<Property name="TradeProductsPriceImprovements">
			<Property name="Poor" value="0" />
			<Property name="Average" value="0" />
			<Property name="Wealthy" value="0" />
			<Property name="Pirate" value="0" />
		</Property>
	</Property>
	<Property name="StartConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AllFalse" />
	</Property>
	<Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AnyFalse" />
	</Property>
	<Property name="StartIsCancel" value="False" />
	<Property name="StartingConditions">
		<Property value="GcMissionConditionMissionCompleted.xml">
			<Property name="MissionID" value="PRANKSTORY2" />
			<Property name="SeasonalMissionSeed" value="-1" />
			<Property name="TakeIDFromSeasonData" value="False" />
			<Property name="CalculateTextMissionTargetFromStageIndex" value="False" />
			<Property name="CalculateSeasonalSeedFromStageIndexOffset" value="999" />
		</Property>
	</Property>
	<Property name="CancelingConditions" />
	<Property name="FinalStageVersions">
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="6" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="7" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="8" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="9" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="10" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="11" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="12" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="13" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="14" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="15" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="16" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="17" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="18" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="19" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="20" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="21" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="22" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="23" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="24" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="25" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="26" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="27" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="28" />
			<Property name="Progress" value="11" />
		</Property>
	</Property>
	<Property name="Stages">
		<Property value="GcGenericMissionStage.xml">
			<Property name="Versions" />
			<Property name="Stage" value="GcMissionSequenceGroup.xml">
				<Property name="Silent" value="False" />
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="" />
					<Property name="ResHandle" value="GcResource.xml">
						<Property name="ResourceID" value="0" />
					</Property>
				</Property>
				<Property name="PageHint" value="GcMissionPageHint.xml">
					<Property name="MissionPageHint" value="None" />
				</Property>
				<Property name="PageDataLocID" value="" />
				<Property name="BuildMenuHint" value="" />
				<Property name="InventoryHint" value="" />
				<Property name="TerrainTarget" value="" />
				<Property name="DebugText" value="initial comms wrapper" />
				<Property name="ObjectiveID" value="UI_PRANKMISSION1_OBJ1" />
				<Property name="ObjectiveTipID" value="UI_PRANKMISSION1_OBJ1_TIP" />
				<Property name="HasCategoryOverride" value="False" />
				<Property name="OverrideCategory" value="GcMissionCategory.xml">
					<Property name="MissionCategory" value="Mission" />
				</Property>
				<Property name="HasColourOverride" value="False" />
				<Property name="ColourOverride" value="Colour.xml">
					<Property name="R" value="1" />
					<Property name="G" value="1" />
					<Property name="B" value="1" />
					<Property name="A" value="1" />
				</Property>
				<Property name="PrefixTitle" value="False" />
				<Property name="PrefixTitleText" value="" />
				<Property name="BlockPinning" value="False" />
				<Property name="AutoPinRepairs" value="False" />
				<Property name="BlockSpaceBattles" value="False" />
				<Property name="ConditionTest" value="GcMissionConditionTest.xml">
					<Property name="ConditionTest" value="AnyFalse" />
				</Property>
				<Property name="HideFromLogIfConditionsMet" value="False" />
				<Property name="DoConsequencesIfNeverActivated" value="True" />
				<Property name="RepeatLogic" value="None" />
				<Property name="IconStyle" value="Default" />
				<Property name="GalMapPathOverride" value="None" />
				<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
					<Property name="InputButton" value="None" />
				</Property>
				<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
					<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
					<Property name="FormattableObjective" value="" />
					<Property name="FormattableObjectiveTip" value="" />
				</Property>
				<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
					<Property name="ApplicableSeasonNumbers" />
					<Property name="OverrideObjective" value="" />
					<Property name="OverrideObjectiveTip" value="" />
				</Property>
				<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
					<Property name="TargetMissionSurveyId" value="" />
					<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
					<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
					<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
					<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
					<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
					<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
				</Property>
				<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
					<Property name="HasCustomNotifyTimer" value="False" />
					<Property name="NotifyDisplayTime" value="20" />
					<Property name="NotifyPauseTime" value="30" />
				</Property>
				<Property name="Conditions" />
				<Property name="Consequences" />
				<Property name="Stages">
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="0" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
							<Property name="MissionID" value="" />
							<Property name="FirstIncompleteMilestone" value="False" />
							<Property name="Silent" value="False" />
							<Property name="DebugText" value="set self current" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="wait to be selected or warp" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionIsCurrentMission.xml" />
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForWarps.xml">
										<Property name="Message" value="UI_WATERMISSION1_MSG1" />
										<Property name="Amount" value="1" />
										<Property name="DebugText" value="wait to be selected or warp" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="comms control" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="Loop" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionMissionMessage.xml">
									<Property name="Message" value="PRANKM3_STARTED" />
									<Property name="MessageToFormatSeasonalIDInto" value="" />
								</Property>
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="7" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="6" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="8" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="9" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
										<Property name="Message" value="UI_WATERMISSION1_MSG1" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllTrue" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="AllowedToFormatObjectives" value="True" />
										<Property name="ForceAllowMissionRestart" value="False" />
										<Property name="ForceAllowMissionRestartEvent" value="" />
										<Property name="DebugText" value="wait for space" />
										<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
											<Property name="MissionMarkup" value="None" />
										</Property>
									</Property>
								</Property>
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions" />
									<Property name="Stage" value="GcMissionSequenceGroup.xml">
										<Property name="Silent" value="True" />
										<Property name="Icon" value="TkTextureResource.xml">
											<Property name="Filename" value="" />
											<Property name="ResHandle" value="GcResource.xml">
												<Property name="ResourceID" value="0" />
											</Property>
										</Property>
										<Property name="PageHint" value="GcMissionPageHint.xml">
											<Property name="MissionPageHint" value="None" />
										</Property>
										<Property name="PageDataLocID" value="" />
										<Property name="BuildMenuHint" value="" />
										<Property name="InventoryHint" value="" />
										<Property name="TerrainTarget" value="" />
										<Property name="DebugText" value="must be in space" />
										<Property name="ObjectiveID" value="" />
										<Property name="ObjectiveTipID" value="" />
										<Property name="HasCategoryOverride" value="False" />
										<Property name="OverrideCategory" value="GcMissionCategory.xml">
											<Property name="MissionCategory" value="Mission" />
										</Property>
										<Property name="HasColourOverride" value="False" />
										<Property name="ColourOverride" value="Colour.xml">
											<Property name="R" value="1" />
											<Property name="G" value="1" />
											<Property name="B" value="1" />
											<Property name="A" value="1" />
										</Property>
										<Property name="PrefixTitle" value="False" />
										<Property name="PrefixTitleText" value="" />
										<Property name="BlockPinning" value="False" />
										<Property name="AutoPinRepairs" value="False" />
										<Property name="BlockSpaceBattles" value="False" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllFalse" />
										</Property>
										<Property name="HideFromLogIfConditionsMet" value="False" />
										<Property name="DoConsequencesIfNeverActivated" value="True" />
										<Property name="RepeatLogic" value="None" />
										<Property name="IconStyle" value="Default" />
										<Property name="GalMapPathOverride" value="None" />
										<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
											<Property name="InputButton" value="None" />
										</Property>
										<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
											<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
											<Property name="FormattableObjective" value="" />
											<Property name="FormattableObjectiveTip" value="" />
										</Property>
										<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
											<Property name="ApplicableSeasonNumbers" />
											<Property name="OverrideObjective" value="" />
											<Property name="OverrideObjectiveTip" value="" />
										</Property>
										<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
											<Property name="TargetMissionSurveyId" value="" />
											<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
											<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
											<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
											<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
											<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
											<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
										</Property>
										<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
											<Property name="HasCustomNotifyTimer" value="False" />
											<Property name="NotifyDisplayTime" value="20" />
											<Property name="NotifyPauseTime" value="30" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInPlanetOrbit" />
											</Property>
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="Consequences">
											<Property value="GcMissionConsequenceRemoveCommunicatorMessage.xml">
												<Property name="Comms" value="D_PRANK1_COMMS" />
											</Property>
										</Property>
										<Property name="Stages">
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="2" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceWait.xml">
													<Property name="Time" value="9" />
													<Property name="DebugText" value="small wait" />
													<Property name="SuppressMessages" value="False" />
													<Property name="MultiplyTimeBySeasonValue" value="False" />
												</Property>
											</Property>
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="3" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceCommunicator.xml">
													<Property name="Message" value="UI_PRANKMISSION1_MSG2" />
													<Property name="VRMessage" value="UI_CORE_COMMS_MSG2_VR1" />
													<Property name="OptionalWaitMessage" value="" />
													<Property name="OSDMessage" value="UI_WATERHUD_OSD" />
													<Property name="Comms" value="GcPlayerCommunicatorMessage.xml">
														<Property name="Dialog" value="D_PRANK3_COMMS" />
														<Property name="ShowHologram" value="False" />
														<Property name="CommunicatorType" value="Generic" />
														<Property name="RaceOverride" value="GcAlienRace.xml">
															<Property name="AlienRace" value="Traders" />
														</Property>
														<Property name="ShipHUDOverride" value="UI_PRANKHUD_OVERRIDE" />
														<Property name="HailAudioOverride" value="GcAudioWwiseEvents.xml">
															<Property name="AkEvent" value="INVALID_EVENT" />
														</Property>
													</Property>
													<Property name="AutoOpen" value="False" />
													<Property name="UsePulseEncounterObjectAsAttachment" value="False" />
													<Property name="MinTimeInSpaceBeforeCall" value="0" />
													<Property name="FormatDialogIDWithSeasonData" value="" />
													<Property name="DebugText" value="answer the space phone" />
												</Property>
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="5" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
							<Property name="MissionUpdateMessage" value="Start" />
							<Property name="CustomMessageLocID" value="" />
							<Property name="CustomObjectiveLocID" value="" />
							<Property name="SetMissionSelected" value="True" />
							<Property name="WaitForMessageOver" value="True" />
							<Property name="ShowChangeMissionNotify" value="False" />
							<Property name="SuppressNotificationsNotFromThisMission" value="False" />
							<Property name="PlayMusicSting" value="Start" />
							<Property name="DebugText" value="mission update message" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
							<Property name="Table" value="GcScanEventTableType.xml">
								<Property name="ScanTable" value="Tutorial" />
							</Property>
							<Property name="Participant" value="GcPlayerMissionParticipantType.xml">
								<Property name="ParticipantType" value="None" />
							</Property>
							<Property name="Event" value="SE_PRANKMISSION3_START" />
							<Property name="Time" value="1" />
							<Property name="DoAerialScan" value="False" />
							<Property name="AllowOtherPlayersBase" value="False" />
							<Property name="IgnoreIfAlreadyActive" value="False" />
							<Property name="DebugText" value="start first scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
							<Property name="Table" value="GcScanEventTableType.xml">
								<Property name="ScanTable" value="Tutorial" />
							</Property>
							<Property name="Participant" value="GcPlayerMissionParticipantType.xml">
								<Property name="ParticipantType" value="None" />
							</Property>
							<Property name="Event" value="SE_PRANKMISSION3B_START" />
							<Property name="Time" value="1" />
							<Property name="DoAerialScan" value="False" />
							<Property name="AllowOtherPlayersBase" value="False" />
							<Property name="IgnoreIfAlreadyActive" value="False" />
							<Property name="DebugText" value="start second scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
							<Property name="Table" value="GcScanEventTableType.xml">
								<Property name="ScanTable" value="Tutorial" />
							</Property>
							<Property name="Participant" value="GcPlayerMissionParticipantType.xml">
								<Property name="ParticipantType" value="None" />
							</Property>
							<Property name="Event" value="SE_PRANKMISSION3C_START" />
							<Property name="Time" value="1" />
							<Property name="DoAerialScan" value="False" />
							<Property name="AllowOtherPlayersBase" value="False" />
							<Property name="IgnoreIfAlreadyActive" value="False" />
							<Property name="DebugText" value="start third scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
							<Property name="Message" value="UI_WATERMISSION1_MSG3" />
							<Property name="GalaxyMapMessage" value="" />
							<Property name="GalaxyMapMessageNotSpace" value="" />
							<Property name="NexusMessage" value="" />
							<Property name="Event" value="SE_PRANKMISSION3_START" />
							<Property name="Timeout" value="0" />
							<Property name="DistanceTimeout" value="False" />
							<Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
							<Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
								<Property name="ScanEventGPSHint" value="None" />
							</Property>
							<Property name="SurveyInactiveHint" value="UI_WATERMISS1_SURVEY_OFF" />
							<Property name="SurveySwapHint" value="UI_WATERMISS1_SURVEY_SWAP" />
							<Property name="SurveyHint" value="UI_WATERMISS1_SURVEY" />
							<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							<Property name="DebugText" value="wait for first scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
							<Property name="Message" value="UI_WATERMISSION1_MSG3" />
							<Property name="GalaxyMapMessage" value="" />
							<Property name="GalaxyMapMessageNotSpace" value="" />
							<Property name="NexusMessage" value="" />
							<Property name="Event" value="SE_PRANKMISSION3B_START" />
							<Property name="Timeout" value="0" />
							<Property name="DistanceTimeout" value="False" />
							<Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
							<Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
								<Property name="ScanEventGPSHint" value="None" />
							</Property>
							<Property name="SurveyInactiveHint" value="UI_WATERMISS1_SURVEY_OFF" />
							<Property name="SurveySwapHint" value="UI_WATERMISS1_SURVEY_SWAP" />
							<Property name="SurveyHint" value="UI_WATERMISS1_SURVEY" />
							<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							<Property name="DebugText" value="wait for second scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
							<Property name="Message" value="UI_WATERMISSION1_MSG3" />
							<Property name="GalaxyMapMessage" value="" />
							<Property name="GalaxyMapMessageNotSpace" value="" />
							<Property name="NexusMessage" value="" />
							<Property name="Event" value="SE_PRANKMISSION3C_START" />
							<Property name="Timeout" value="0" />
							<Property name="DistanceTimeout" value="False" />
							<Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
							<Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
								<Property name="ScanEventGPSHint" value="None" />
							</Property>
							<Property name="SurveyInactiveHint" value="UI_WATERMISS1_SURVEY_OFF" />
							<Property name="SurveySwapHint" value="UI_WATERMISS1_SURVEY_SWAP" />
							<Property name="SurveyHint" value="UI_WATERMISS1_SURVEY" />
							<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							<Property name="DebugText" value="wait for third scan event" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ForcesPageHint" value="False" />
	<Property name="ForcesBuildMenuHint" value="False" />
	<Property name="IsProceduralAllowed" value="False" />
	<Property name="IsRecurring" value="False" />
	<Property name="IsLegacy" value="False" />
	<Property name="BlocksPinning" value="False" />
	<Property name="CanRenounce" value="False" />
	<Property name="UseCommunityMissionForLog" value="" />
	<Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
	<Property name="TelemetryUpload" value="False" />
	<Property name="UseSeasonTitleOverride" value="False" />
</Property>
<Property value="GcGenericMissionSequence.xml">
	<Property name="MissionID" value="PRANKSTORY4" />
	<Property name="MissionClass" value="ChainedSecondary" />
	<Property name="MissionIsCritical" value="False" />
	<Property name="MissionObjective" value="" />
	<Property name="MissionTitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_TITLE" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionSubtitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_SUB" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionDescriptions" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_DESC" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
		<Property name="ApplicableSeasonNumbers" />
		<Property name="MissionTitle" value="" />
		<Property name="MissionSubtitle" value="" />
		<Property name="MissionDescription" value="" />
	</Property>
	<Property name="MissionDescSwitchOverride" value="" />
	<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="UseScanEventDetailsInLogInfo" value="False" />
	<Property name="MissionIcon" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.ON.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconNotSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.OFF.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionPriority" value="0" />
	<Property name="MissionCategory" value="GcMissionCategory.xml">
		<Property name="MissionCategory" value="Mission" />
	</Property>
	<Property name="MissionPageHint" value="GcMissionPageHint.xml">
		<Property name="MissionPageHint" value="None" />
	</Property>
	<Property name="MissionPageLocID" value="" />
	<Property name="MissionBuildMenuHint" value="" />
	<Property name="MissionHasColourOverride" value="False" />
	<Property name="MissionColourOverride" value="Colour.xml">
		<Property name="R" value="1" />
		<Property name="G" value="1" />
		<Property name="B" value="1" />
		<Property name="A" value="1" />
	</Property>
	<Property name="BeginCheckFrequency" value="20" />
	<Property name="WikiMissionBlockedBySeasons" />
	<Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
		<Property name="PrimarySubstances" />
		<Property name="SecondarySubstances" />
		<Property name="PrimaryProducts" />
		<Property name="SecondaryProducts" />
		<Property name="AmountMin" value="0" />
		<Property name="AmountMax" value="0" />
		<Property name="AmountShouldBeRoundNumber" value="False" />
	</Property>
	<Property name="PrefixTitle" value="True" />
	<Property name="NextMissionHint" value="" />
	<Property name="MessageComplete" value="Never" />
	<Property name="MessageStart" value="Never" />
	<Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
		<Property name="Type" value="GcMissionType.xml">
			<Property name="MissionType" value="SpaceCombat" />
		</Property>
		<Property name="Difficulty" value="GcMissionDifficulty.xml">
			<Property name="MissionDifficulty" value="Normal" />
		</Property>
		<Property name="MinRank" value="0" />
		<Property name="CloseMissionGiver" value="False" />
		<Property name="IsGuildShopMission" value="False" />
		<Property name="IsPlanetProcMission" value="False" />
		<Property name="IsMultiplayerEventMission" value="False" />
		<Property name="RewardPenaltyOnAbandon" value="" />
		<Property name="Faction" />
		<Property name="Weighting" value="100" />
		<Property name="IgnoreCalculatedObjective" value="False" />
		<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
		<Property name="DefaultItemInitialWarpScanEvents" />
		<Property name="DefaultItemTypeForInitialWarp" value="None" />
		<Property name="BasePartBlueprints" />
	</Property>
	<Property name="AutoStart" value="AllModes" />
	<Property name="RestartOnCompletion" value="False" />
	<Property name="CancelSetsComplete" value="False" />
	<Property name="Dialog" value="GcAlienPuzzleTable.xml">
		<Property name="Table">
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK4_COMMS" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_NPCGEK_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION4_COMMS_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_COMMS_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION4_COMMS_RES" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property value="NMSString0x10.xml">
								<Property name="Value" value="R_PRANKM4_START" />
							</Property>
						</Property>
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="True" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK4_STORY" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="Warriors" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_FAC_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION4_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_BYE_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION_BYE_LANG" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Positive" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ScanEvents">
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="SE_PRANKMISSION4_START" />
			<Property name="ForceInteraction" value="D_PRANK4_STORY" />
			<Property name="UseSeasonDataAsInteraction" value="False" />
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="NPC" />
			</Property>
			<Property name="NPCReactsToPlayer" value="False" />
			<Property name="RequireInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="Warriors" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="Warriors" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="False" />
			<Property name="ForceFixed" value="False" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceOverridesAll" value="True" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="False" />
			<Property name="ClearForcedInteractionOnCompletion" value="False" />
			<Property name="BuildingPreventionRadius" value="0" />
			<Property name="UseMissionTradingDataOverride" value="False" />
			<Property name="AlwaysShow" value="False" />
			<Property name="NeverShow" value="False" />
			<Property name="ShowOnlyIfSequenceTarget" value="False" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="500" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_WATERMISS1_SURVEY_OSD" />
			<Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="Regular" />
			<Property name="CanEndFromOutsideMission" value="False" />
			<Property name="DisableMultiplayerSync" value="False" />
			<Property name="BlockStartedOnUseEvents" value="False" />
			<Property name="ReplaceEventIfAlreadyActive" value="False" />
			<Property name="BuildingLocation" value="RandomOnFarPlanet" />
			<Property name="BuildingType" value="AnyNPC" />
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="None" />
			</Property>
			<Property name="AllowFriendsBases" value="False" />
			<Property name="ForceWideRandom" value="False" />
			<Property name="MustFindSystem" value="False" />
			<Property name="AllowOverriddenBuildings" value="True" />
			<Property name="TargetMustMatchMissionSeed" value="False" />
			<Property name="SolarSystemLocation" value="LocalOrNear" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="Warriors" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="ForceRestartInteraction" value="True" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="False" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="UI_WATERMISSION1_OSD" />
			<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
			<Property name="MarkerLabel" value="UI_WATERMISSION1_MARKER" />
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0" />
			<Property name="MessageTime" value="0" />
			<Property name="MessageDisplayTime" value="4" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="UI_NEW_DISCOVERY" />
			</Property>
			<Property name="IconTime" value="4" />
			<Property name="TooltipTime" value="10" />
			<Property name="TooltipRepeats" value="False" />
			<Property name="ShowEndTooltip" value="True" />
			<Property name="TooltipMessage" value="" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				</Property>
				<Property name="AltId" value="" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Rewards">
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="R_PRANKM4_START" />
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="False" />
				<Property name="UseInventoryChoiceOverride" value="False" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property value="GcRewardTableItem.xml">
						<Property name="PercentageChance" value="100" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMissionMessage.xml">
							<Property name="MessageID" value="PRANKM4_STARTED" />
							<Property name="BroadcastInMultiplayer" value="False" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Costs" />
	<Property name="TradingDataOverride" value="GcTradeData.xml">
		<Property name="AlwaysPresentProducts" />
		<Property name="AlwaysPresentSubstances" />
		<Property name="OptionalProducts" />
		<Property name="OptionalSubstances" />
		<Property name="MinItemsForSale" value="5" />
		<Property name="MaxItemsForSale" value="15" />
		<Property name="PercentageOfItemsAreProducts" value="0.3" />
		<Property name="BuyPriceIncreaseRedThreshold" value="20" />
		<Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
		<Property name="SellPriceIncreaseGreenThreshold" value="10" />
		<Property name="SellPriceDecreaseRedThreshold" value="-20" />
		<Property name="ShowSeasonRewards" value="False" />
		<Property name="MinAmountOfProductAvailable">
			<Property name="Poor" value="10" />
			<Property name="Average" value="10" />
			<Property name="Wealthy" value="10" />
			<Property name="Pirate" value="10" />
		</Property>
		<Property name="MaxAmountOfProductAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MinAmountOfSubstanceAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MaxAmountOfSubstanceAvailable">
			<Property name="Poor" value="1000" />
			<Property name="Average" value="1000" />
			<Property name="Wealthy" value="1000" />
			<Property name="Pirate" value="1000" />
		</Property>
		<Property name="MinExtraSystemProducts">
			<Property name="Poor" value="2" />
			<Property name="Average" value="2" />
			<Property name="Wealthy" value="2" />
			<Property name="Pirate" value="2" />
		</Property>
		<Property name="MaxExtraSystemProducts">
			<Property name="Poor" value="4" />
			<Property name="Average" value="4" />
			<Property name="Wealthy" value="4" />
			<Property name="Pirate" value="4" />
		</Property>
		<Property name="TradeProductsPriceImprovements">
			<Property name="Poor" value="0" />
			<Property name="Average" value="0" />
			<Property name="Wealthy" value="0" />
			<Property name="Pirate" value="0" />
		</Property>
	</Property>
	<Property name="StartConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AllFalse" />
	</Property>
	<Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AnyFalse" />
	</Property>
	<Property name="StartIsCancel" value="False" />
	<Property name="StartingConditions">
		<Property value="GcMissionConditionMissionCompleted.xml">
			<Property name="MissionID" value="PRANKSTORY3" />
			<Property name="SeasonalMissionSeed" value="-1" />
			<Property name="TakeIDFromSeasonData" value="False" />
			<Property name="CalculateTextMissionTargetFromStageIndex" value="False" />
			<Property name="CalculateSeasonalSeedFromStageIndexOffset" value="999" />
		</Property>
	</Property>
	<Property name="CancelingConditions" />
	<Property name="FinalStageVersions">
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="6" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="7" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="8" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="9" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="10" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="11" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="12" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="13" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="14" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="15" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="16" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="17" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="18" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="19" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="20" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="21" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="22" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="23" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="24" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="25" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="26" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="27" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="28" />
			<Property name="Progress" value="11" />
		</Property>
	</Property>
	<Property name="Stages">
		<Property value="GcGenericMissionStage.xml">
			<Property name="Versions" />
			<Property name="Stage" value="GcMissionSequenceGroup.xml">
				<Property name="Silent" value="False" />
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="" />
					<Property name="ResHandle" value="GcResource.xml">
						<Property name="ResourceID" value="0" />
					</Property>
				</Property>
				<Property name="PageHint" value="GcMissionPageHint.xml">
					<Property name="MissionPageHint" value="None" />
				</Property>
				<Property name="PageDataLocID" value="" />
				<Property name="BuildMenuHint" value="" />
				<Property name="InventoryHint" value="" />
				<Property name="TerrainTarget" value="" />
				<Property name="DebugText" value="initial comms wrapper" />
				<Property name="ObjectiveID" value="UI_PRANKMISSION1_OBJ1" />
				<Property name="ObjectiveTipID" value="UI_PRANKMISSION1_OBJ1_TIP" />
				<Property name="HasCategoryOverride" value="False" />
				<Property name="OverrideCategory" value="GcMissionCategory.xml">
					<Property name="MissionCategory" value="Mission" />
				</Property>
				<Property name="HasColourOverride" value="False" />
				<Property name="ColourOverride" value="Colour.xml">
					<Property name="R" value="1" />
					<Property name="G" value="1" />
					<Property name="B" value="1" />
					<Property name="A" value="1" />
				</Property>
				<Property name="PrefixTitle" value="False" />
				<Property name="PrefixTitleText" value="" />
				<Property name="BlockPinning" value="False" />
				<Property name="AutoPinRepairs" value="False" />
				<Property name="BlockSpaceBattles" value="False" />
				<Property name="ConditionTest" value="GcMissionConditionTest.xml">
					<Property name="ConditionTest" value="AnyFalse" />
				</Property>
				<Property name="HideFromLogIfConditionsMet" value="False" />
				<Property name="DoConsequencesIfNeverActivated" value="True" />
				<Property name="RepeatLogic" value="None" />
				<Property name="IconStyle" value="Default" />
				<Property name="GalMapPathOverride" value="None" />
				<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
					<Property name="InputButton" value="None" />
				</Property>
				<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
					<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
					<Property name="FormattableObjective" value="" />
					<Property name="FormattableObjectiveTip" value="" />
				</Property>
				<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
					<Property name="ApplicableSeasonNumbers" />
					<Property name="OverrideObjective" value="" />
					<Property name="OverrideObjectiveTip" value="" />
				</Property>
				<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
					<Property name="TargetMissionSurveyId" value="" />
					<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
					<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
					<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
					<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
					<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
					<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
				</Property>
				<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
					<Property name="HasCustomNotifyTimer" value="False" />
					<Property name="NotifyDisplayTime" value="20" />
					<Property name="NotifyPauseTime" value="30" />
				</Property>
				<Property name="Conditions" />
				<Property name="Consequences" />
				<Property name="Stages">
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="0" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
							<Property name="MissionID" value="" />
							<Property name="FirstIncompleteMilestone" value="False" />
							<Property name="Silent" value="False" />
							<Property name="DebugText" value="set self current" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="wait to be selected or warp" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionIsCurrentMission.xml" />
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForWarps.xml">
										<Property name="Message" value="UI_WATERMISSION1_MSG1" />
										<Property name="Amount" value="1" />
										<Property name="DebugText" value="wait to be selected or warp" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="comms control" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="Loop" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionMissionMessage.xml">
									<Property name="Message" value="PRANKM4_STARTED" />
									<Property name="MessageToFormatSeasonalIDInto" value="" />
								</Property>
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="7" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="6" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="8" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="9" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
										<Property name="Message" value="UI_WATERMISSION1_MSG1" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllTrue" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="AllowedToFormatObjectives" value="True" />
										<Property name="ForceAllowMissionRestart" value="False" />
										<Property name="ForceAllowMissionRestartEvent" value="" />
										<Property name="DebugText" value="wait for space" />
										<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
											<Property name="MissionMarkup" value="None" />
										</Property>
									</Property>
								</Property>
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions" />
									<Property name="Stage" value="GcMissionSequenceGroup.xml">
										<Property name="Silent" value="True" />
										<Property name="Icon" value="TkTextureResource.xml">
											<Property name="Filename" value="" />
											<Property name="ResHandle" value="GcResource.xml">
												<Property name="ResourceID" value="0" />
											</Property>
										</Property>
										<Property name="PageHint" value="GcMissionPageHint.xml">
											<Property name="MissionPageHint" value="None" />
										</Property>
										<Property name="PageDataLocID" value="" />
										<Property name="BuildMenuHint" value="" />
										<Property name="InventoryHint" value="" />
										<Property name="TerrainTarget" value="" />
										<Property name="DebugText" value="must be in space" />
										<Property name="ObjectiveID" value="" />
										<Property name="ObjectiveTipID" value="" />
										<Property name="HasCategoryOverride" value="False" />
										<Property name="OverrideCategory" value="GcMissionCategory.xml">
											<Property name="MissionCategory" value="Mission" />
										</Property>
										<Property name="HasColourOverride" value="False" />
										<Property name="ColourOverride" value="Colour.xml">
											<Property name="R" value="1" />
											<Property name="G" value="1" />
											<Property name="B" value="1" />
											<Property name="A" value="1" />
										</Property>
										<Property name="PrefixTitle" value="False" />
										<Property name="PrefixTitleText" value="" />
										<Property name="BlockPinning" value="False" />
										<Property name="AutoPinRepairs" value="False" />
										<Property name="BlockSpaceBattles" value="False" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllFalse" />
										</Property>
										<Property name="HideFromLogIfConditionsMet" value="False" />
										<Property name="DoConsequencesIfNeverActivated" value="True" />
										<Property name="RepeatLogic" value="None" />
										<Property name="IconStyle" value="Default" />
										<Property name="GalMapPathOverride" value="None" />
										<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
											<Property name="InputButton" value="None" />
										</Property>
										<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
											<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
											<Property name="FormattableObjective" value="" />
											<Property name="FormattableObjectiveTip" value="" />
										</Property>
										<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
											<Property name="ApplicableSeasonNumbers" />
											<Property name="OverrideObjective" value="" />
											<Property name="OverrideObjectiveTip" value="" />
										</Property>
										<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
											<Property name="TargetMissionSurveyId" value="" />
											<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
											<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
											<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
											<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
											<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
											<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
										</Property>
										<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
											<Property name="HasCustomNotifyTimer" value="False" />
											<Property name="NotifyDisplayTime" value="20" />
											<Property name="NotifyPauseTime" value="30" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInPlanetOrbit" />
											</Property>
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="Consequences">
											<Property value="GcMissionConsequenceRemoveCommunicatorMessage.xml">
												<Property name="Comms" value="D_PRANK1_COMMS" />
											</Property>
										</Property>
										<Property name="Stages">
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="2" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceWait.xml">
													<Property name="Time" value="9" />
													<Property name="DebugText" value="small wait" />
													<Property name="SuppressMessages" value="False" />
													<Property name="MultiplyTimeBySeasonValue" value="False" />
												</Property>
											</Property>
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="3" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceCommunicator.xml">
													<Property name="Message" value="UI_PRANKMISSION1_MSG2" />
													<Property name="VRMessage" value="UI_CORE_COMMS_MSG2_VR1" />
													<Property name="OptionalWaitMessage" value="" />
													<Property name="OSDMessage" value="UI_WATERHUD_OSD" />
													<Property name="Comms" value="GcPlayerCommunicatorMessage.xml">
														<Property name="Dialog" value="D_PRANK4_COMMS" />
														<Property name="ShowHologram" value="False" />
														<Property name="CommunicatorType" value="Generic" />
														<Property name="RaceOverride" value="GcAlienRace.xml">
															<Property name="AlienRace" value="Traders" />
														</Property>
														<Property name="ShipHUDOverride" value="UI_PRANKHUD_OVERRIDE" />
														<Property name="HailAudioOverride" value="GcAudioWwiseEvents.xml">
															<Property name="AkEvent" value="INVALID_EVENT" />
														</Property>
													</Property>
													<Property name="AutoOpen" value="False" />
													<Property name="UsePulseEncounterObjectAsAttachment" value="False" />
													<Property name="MinTimeInSpaceBeforeCall" value="0" />
													<Property name="FormatDialogIDWithSeasonData" value="" />
													<Property name="DebugText" value="answer the space phone" />
												</Property>
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="5" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
							<Property name="MissionUpdateMessage" value="Start" />
							<Property name="CustomMessageLocID" value="" />
							<Property name="CustomObjectiveLocID" value="" />
							<Property name="SetMissionSelected" value="True" />
							<Property name="WaitForMessageOver" value="True" />
							<Property name="ShowChangeMissionNotify" value="False" />
							<Property name="SuppressNotificationsNotFromThisMission" value="False" />
							<Property name="PlayMusicSting" value="Start" />
							<Property name="DebugText" value="mission update message" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="6" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
							<Property name="Table" value="GcScanEventTableType.xml">
								<Property name="ScanTable" value="Tutorial" />
							</Property>
							<Property name="Participant" value="GcPlayerMissionParticipantType.xml">
								<Property name="ParticipantType" value="None" />
							</Property>
							<Property name="Event" value="SE_PRANKMISSION4_START" />
							<Property name="Time" value="0.6" />
							<Property name="DoAerialScan" value="False" />
							<Property name="AllowOtherPlayersBase" value="False" />
							<Property name="IgnoreIfAlreadyActive" value="False" />
							<Property name="DebugText" value="start scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="7" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
							<Property name="Message" value="UI_WATERMISSION1_MSG3" />
							<Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_PRANK_WATER" />
							<Property name="GalaxyMapMessageNotSpace" value="" />
							<Property name="NexusMessage" value="" />
							<Property name="Event" value="SE_PRANKMISSION4_START" />
							<Property name="Timeout" value="0" />
							<Property name="DistanceTimeout" value="False" />
							<Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
							<Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
								<Property name="ScanEventGPSHint" value="None" />
							</Property>
							<Property name="SurveyInactiveHint" value="UI_WATERMISS1_SURVEY_OFF" />
							<Property name="SurveySwapHint" value="UI_WATERMISS1_SURVEY_SWAP" />
							<Property name="SurveyHint" value="UI_WATERMISS1_SURVEY" />
							<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							<Property name="DebugText" value="wait for scan event" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ForcesPageHint" value="False" />
	<Property name="ForcesBuildMenuHint" value="False" />
	<Property name="IsProceduralAllowed" value="False" />
	<Property name="IsRecurring" value="False" />
	<Property name="IsLegacy" value="False" />
	<Property name="BlocksPinning" value="False" />
	<Property name="CanRenounce" value="False" />
	<Property name="UseCommunityMissionForLog" value="" />
	<Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
	<Property name="TelemetryUpload" value="False" />
	<Property name="UseSeasonTitleOverride" value="False" />
</Property>
<Property value="GcGenericMissionSequence.xml">
	<Property name="MissionID" value="PRANKSTORY5" />
	<Property name="MissionClass" value="ChainedSecondary" />
	<Property name="MissionIsCritical" value="False" />
	<Property name="MissionObjective" value="" />
	<Property name="MissionTitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_TITLE" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionSubtitles" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_SUB" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionDescriptions" value="GcNumberedTextList.xml">
		<Property name="Format" value="UI_PRANKSTORY1_DESC" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
		<Property name="ApplicableSeasonNumbers" />
		<Property name="MissionTitle" value="" />
		<Property name="MissionSubtitle" value="" />
		<Property name="MissionDescription" value="" />
	</Property>
	<Property name="MissionDescSwitchOverride" value="" />
	<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
		<Property name="Format" value="" />
		<Property name="Count" value="1" />
	</Property>
	<Property name="UseScanEventDetailsInLogInfo" value="False" />
	<Property name="MissionIcon" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.ON.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionIconNotSelected" value="TkTextureResource.xml">
		<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PRANK.OFF.DDS" />
		<Property name="ResHandle" value="GcResource.xml">
			<Property name="ResourceID" value="0" />
		</Property>
	</Property>
	<Property name="MissionPriority" value="0" />
	<Property name="MissionCategory" value="GcMissionCategory.xml">
		<Property name="MissionCategory" value="Mission" />
	</Property>
	<Property name="MissionPageHint" value="GcMissionPageHint.xml">
		<Property name="MissionPageHint" value="None" />
	</Property>
	<Property name="MissionPageLocID" value="" />
	<Property name="MissionBuildMenuHint" value="" />
	<Property name="MissionHasColourOverride" value="False" />
	<Property name="MissionColourOverride" value="Colour.xml">
		<Property name="R" value="1" />
		<Property name="G" value="1" />
		<Property name="B" value="1" />
		<Property name="A" value="1" />
	</Property>
	<Property name="BeginCheckFrequency" value="20" />
	<Property name="WikiMissionBlockedBySeasons" />
	<Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
		<Property name="PrimarySubstances" />
		<Property name="SecondarySubstances" />
		<Property name="PrimaryProducts" />
		<Property name="SecondaryProducts" />
		<Property name="AmountMin" value="0" />
		<Property name="AmountMax" value="0" />
		<Property name="AmountShouldBeRoundNumber" value="False" />
	</Property>
	<Property name="PrefixTitle" value="True" />
	<Property name="NextMissionHint" value="" />
	<Property name="MessageComplete" value="Never" />
	<Property name="MessageStart" value="Never" />
	<Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
		<Property name="Type" value="GcMissionType.xml">
			<Property name="MissionType" value="SpaceCombat" />
		</Property>
		<Property name="Difficulty" value="GcMissionDifficulty.xml">
			<Property name="MissionDifficulty" value="Normal" />
		</Property>
		<Property name="MinRank" value="0" />
		<Property name="CloseMissionGiver" value="False" />
		<Property name="IsGuildShopMission" value="False" />
		<Property name="IsPlanetProcMission" value="False" />
		<Property name="IsMultiplayerEventMission" value="False" />
		<Property name="RewardPenaltyOnAbandon" value="" />
		<Property name="Faction" />
		<Property name="Weighting" value="100" />
		<Property name="IgnoreCalculatedObjective" value="False" />
		<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
		<Property name="DefaultItemInitialWarpScanEvents" />
		<Property name="DefaultItemTypeForInitialWarp" value="None" />
		<Property name="BasePartBlueprints" />
	</Property>
	<Property name="AutoStart" value="AllModes" />
	<Property name="RestartOnCompletion" value="False" />
	<Property name="CancelSetsComplete" value="False" />
	<Property name="Dialog" value="GcAlienPuzzleTable.xml">
		<Property name="Table">
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK5_COMMS" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_NPCGEK_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION5_COMMS_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION_COMMS_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION5_COMMS_RES" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property value="NMSString0x10.xml">
								<Property name="Value" value="R_PRANKM5_START" />
							</Property>
						</Property>
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="True" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK5_STORY" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_GEKT_TITLE" />
				<Property name="Text" value="NPC_PRANKMISSION5_DESC" />
				<Property name="TextAlien" value="NPC_PRANKMISSION5_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION5_CON_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Positive" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="False" />
						<Property name="NextInteraction" value="D_PRANK5_STORYA" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
			<Property value="GcAlienPuzzleEntry.xml">
				<Property name="ProgressionIndex" value="-1" />
				<Property name="MinProgressionForSelection" value="0" />
				<Property name="Id" value="D_PRANK5_STORYA" />
				<Property name="Race" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="Type" value="GcInteractionType.xml">
					<Property name="InteractionType" value="None" />
				</Property>
				<Property name="Category" value="GcAlienPuzzleCategory.xml">
					<Property name="AlienPuzzleCategory" value="Default" />
				</Property>
				<Property name="AdditionalOptions" value="None" />
				<Property name="Title" value="NPC_PRANKMISSION_GEKT_TITLE" />
				<Property name="Text" value="" />
				<Property name="TextAlien" value="NPC_PRANKMISSION5A_LANG" />
				<Property name="TranslateAlienText" value="False" />
				<Property name="TranslationBrackets" value="True" />
				<Property name="ProgressiveDialogue" value="True" />
				<Property name="RequiresScanEvent" value="" />
				<Property name="Options">
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION5_LEAVE_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION5_LEAVE_LANG" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Positive" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property value="GcAlienPuzzleOption.xml">
						<Property name="Name" value="NPC_PRANKMISSION5_DISS_OPT" />
						<Property name="Text" value="NPC_PRANKMISSION5_DISS_LANG" />
						<Property name="IsAlien" value="False" />
						<Property name="Cost" value="" />
						<Property name="Rewards" />
						<Property name="Mood" value="GcAlienMood.xml">
							<Property name="Mood" value="Positive" />
						</Property>
						<Property name="Prop" value="GcNPCPropType.xml">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="False" />
						<Property name="ReseedInteractionOnUse" value="False" />
						<Property name="KeepOpen" value="False" />
						<Property name="DisplayCost" value="True" />
						<Property name="TruncateCost" value="False" />
						<Property name="MarkInteractionComplete" value="True" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="False" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="EnablingConditions" />
						<Property name="EnablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
				</Property>
				<Property name="AdditionalText" />
				<Property name="AdditionalTextAlien" />
				<Property name="Mood" value="GcAlienMood.xml">
					<Property name="Mood" value="Neutral" />
				</Property>
				<Property name="Prop" value="GcNPCPropType.xml">
					<Property name="NPCProp" value="DontCare" />
				</Property>
				<Property name="AdvancedInteractionFlow" />
				<Property name="PersistancyBufferOverride" value="None" />
				<Property name="CustomFreighterTextIndex" value="-1" />
				<Property name="RadialInteraction" value="False" />
				<Property name="UseTitleOverrideInLabel" value="True" />
				<Property name="AllowNoOptions" value="False" />
				<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ScanEvents">
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="SE_PRANKMISSION5_START" />
			<Property name="ForceInteraction" value="D_PRANK5_STORY" />
			<Property name="UseSeasonDataAsInteraction" value="False" />
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="CrashedFreighter" />
			</Property>
			<Property name="NPCReactsToPlayer" value="False" />
			<Property name="RequireInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace.xml">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="False" />
			<Property name="ForceFixed" value="False" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceOverridesAll" value="True" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="False" />
			<Property name="ClearForcedInteractionOnCompletion" value="False" />
			<Property name="BuildingPreventionRadius" value="0" />
			<Property name="UseMissionTradingDataOverride" value="False" />
			<Property name="AlwaysShow" value="False" />
			<Property name="NeverShow" value="False" />
			<Property name="ShowOnlyIfSequenceTarget" value="False" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="0" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_WATERMISS1_SURVEY_OSD" />
			<Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="Regular" />
			<Property name="CanEndFromOutsideMission" value="False" />
			<Property name="DisableMultiplayerSync" value="False" />
			<Property name="BlockStartedOnUseEvents" value="False" />
			<Property name="ReplaceEventIfAlreadyActive" value="False" />
			<Property name="BuildingLocation" value="Nearest" />
			<Property name="BuildingType" value="BuildingClass" />
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="CrashedFreighter" />
			</Property>
			<Property name="AllowFriendsBases" value="False" />
			<Property name="ForceWideRandom" value="False" />
			<Property name="MustFindSystem" value="False" />
			<Property name="AllowOverriddenBuildings" value="True" />
			<Property name="TargetMustMatchMissionSeed" value="False" />
			<Property name="SolarSystemLocation" value="Near" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False" />
				<Property name="UseWealth" value="False" />
				<Property name="UseTrading" value="False" />
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False" />
				<Property name="NeverAllowEmpty" value="False" />
				<Property name="NeverAllowAbandoned" value="False" />
				<Property name="RequireUndiscovered" value="False" />
				<Property name="NeedsWaterPlanet" value="False" />
				<Property name="NeedsPrimePlanet" value="False" />
				<Property name="NeedsSentinels" value="False" />
				<Property name="NeedsCorruptSentinelPlanet" value="False" />
				<Property name="NeedsExtremeSentinelPlanet" value="False" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
				<Property name="NeedsExtremeWeatherPlanet" value="False" />
				<Property name="NeedsExtremeHazardPlanet" value="False" />
				<Property name="AnyBiomeNotWeirdOrDead" value="False" />
				<Property name="AnyRGBBiome" value="False" />
				<Property name="AnyInfestedBiome" value="False" />
				<Property name="NeedsBiome" value="False" />
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="False" />
				<Property name="NeedsAbandonedSystem" value="False" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="False" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="False" />
				<Property name="SuitableForRobotCreatureDiscovery" value="False" />
				<Property name="SuitableForCreatureTaming" value="False" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
			</Property>
			<Property name="ForceRestartInteraction" value="True" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="False" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="UI_WATERMISSION1_OSD" />
			<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
			<Property name="MarkerLabel" value="UI_WATERMISSION1_MARKER" />
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PRANK.DDS" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0" />
			<Property name="MessageTime" value="0" />
			<Property name="MessageDisplayTime" value="4" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="UI_NEW_DISCOVERY" />
			</Property>
			<Property name="IconTime" value="4" />
			<Property name="TooltipTime" value="10" />
			<Property name="TooltipRepeats" value="False" />
			<Property name="ShowEndTooltip" value="True" />
			<Property name="TooltipMessage" value="" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource.xml">
					<Property name="ResourceID" value="0" />
				</Property>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				</Property>
				<Property name="AltId" value="" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Rewards">
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="R_PRANKM5_START" />
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="False" />
				<Property name="UseInventoryChoiceOverride" value="False" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property value="GcRewardTableItem.xml">
						<Property name="PercentageChance" value="100" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMissionMessage.xml">
							<Property name="MessageID" value="PRANKM5_STARTED" />
							<Property name="BroadcastInMultiplayer" value="False" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="Costs" />
	<Property name="TradingDataOverride" value="GcTradeData.xml">
		<Property name="AlwaysPresentProducts" />
		<Property name="AlwaysPresentSubstances" />
		<Property name="OptionalProducts" />
		<Property name="OptionalSubstances" />
		<Property name="MinItemsForSale" value="5" />
		<Property name="MaxItemsForSale" value="15" />
		<Property name="PercentageOfItemsAreProducts" value="0.3" />
		<Property name="BuyPriceIncreaseRedThreshold" value="20" />
		<Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
		<Property name="SellPriceIncreaseGreenThreshold" value="10" />
		<Property name="SellPriceDecreaseRedThreshold" value="-20" />
		<Property name="ShowSeasonRewards" value="False" />
		<Property name="MinAmountOfProductAvailable">
			<Property name="Poor" value="10" />
			<Property name="Average" value="10" />
			<Property name="Wealthy" value="10" />
			<Property name="Pirate" value="10" />
		</Property>
		<Property name="MaxAmountOfProductAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MinAmountOfSubstanceAvailable">
			<Property name="Poor" value="100" />
			<Property name="Average" value="100" />
			<Property name="Wealthy" value="100" />
			<Property name="Pirate" value="100" />
		</Property>
		<Property name="MaxAmountOfSubstanceAvailable">
			<Property name="Poor" value="1000" />
			<Property name="Average" value="1000" />
			<Property name="Wealthy" value="1000" />
			<Property name="Pirate" value="1000" />
		</Property>
		<Property name="MinExtraSystemProducts">
			<Property name="Poor" value="2" />
			<Property name="Average" value="2" />
			<Property name="Wealthy" value="2" />
			<Property name="Pirate" value="2" />
		</Property>
		<Property name="MaxExtraSystemProducts">
			<Property name="Poor" value="4" />
			<Property name="Average" value="4" />
			<Property name="Wealthy" value="4" />
			<Property name="Pirate" value="4" />
		</Property>
		<Property name="TradeProductsPriceImprovements">
			<Property name="Poor" value="0" />
			<Property name="Average" value="0" />
			<Property name="Wealthy" value="0" />
			<Property name="Pirate" value="0" />
		</Property>
	</Property>
	<Property name="StartConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AllFalse" />
	</Property>
	<Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
		<Property name="ConditionTest" value="AnyFalse" />
	</Property>
	<Property name="StartIsCancel" value="False" />
	<Property name="StartingConditions">
		<Property value="GcMissionConditionMissionCompleted.xml">
			<Property name="MissionID" value="PRANKSTORY4" />
			<Property name="SeasonalMissionSeed" value="-1" />
			<Property name="TakeIDFromSeasonData" value="False" />
			<Property name="CalculateTextMissionTargetFromStageIndex" value="False" />
			<Property name="CalculateSeasonalSeedFromStageIndexOffset" value="999" />
		</Property>
	</Property>
	<Property name="CancelingConditions" />
	<Property name="FinalStageVersions">
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="6" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="7" />
			<Property name="Progress" value="7" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="8" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="9" />
			<Property name="Progress" value="8" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="10" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="11" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="12" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="13" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="14" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="15" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="16" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="17" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="18" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="19" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="20" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="21" />
			<Property name="Progress" value="9" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="22" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="23" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="24" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="25" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="26" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="27" />
			<Property name="Progress" value="11" />
		</Property>
		<Property value="GcGenericMissionVersionProgress.xml">
			<Property name="Version" value="28" />
			<Property name="Progress" value="11" />
		</Property>
	</Property>
	<Property name="Stages">
		<Property value="GcGenericMissionStage.xml">
			<Property name="Versions" />
			<Property name="Stage" value="GcMissionSequenceGroup.xml">
				<Property name="Silent" value="False" />
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="" />
					<Property name="ResHandle" value="GcResource.xml">
						<Property name="ResourceID" value="0" />
					</Property>
				</Property>
				<Property name="PageHint" value="GcMissionPageHint.xml">
					<Property name="MissionPageHint" value="None" />
				</Property>
				<Property name="PageDataLocID" value="" />
				<Property name="BuildMenuHint" value="" />
				<Property name="InventoryHint" value="" />
				<Property name="TerrainTarget" value="" />
				<Property name="DebugText" value="initial comms wrapper" />
				<Property name="ObjectiveID" value="UI_PRANKMISSION1_OBJ1" />
				<Property name="ObjectiveTipID" value="UI_PRANKMISSION1_OBJ1_TIP" />
				<Property name="HasCategoryOverride" value="False" />
				<Property name="OverrideCategory" value="GcMissionCategory.xml">
					<Property name="MissionCategory" value="Mission" />
				</Property>
				<Property name="HasColourOverride" value="False" />
				<Property name="ColourOverride" value="Colour.xml">
					<Property name="R" value="1" />
					<Property name="G" value="1" />
					<Property name="B" value="1" />
					<Property name="A" value="1" />
				</Property>
				<Property name="PrefixTitle" value="False" />
				<Property name="PrefixTitleText" value="" />
				<Property name="BlockPinning" value="False" />
				<Property name="AutoPinRepairs" value="False" />
				<Property name="BlockSpaceBattles" value="False" />
				<Property name="ConditionTest" value="GcMissionConditionTest.xml">
					<Property name="ConditionTest" value="AnyFalse" />
				</Property>
				<Property name="HideFromLogIfConditionsMet" value="False" />
				<Property name="DoConsequencesIfNeverActivated" value="True" />
				<Property name="RepeatLogic" value="None" />
				<Property name="IconStyle" value="Default" />
				<Property name="GalMapPathOverride" value="None" />
				<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
					<Property name="InputButton" value="None" />
				</Property>
				<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
					<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
					<Property name="FormattableObjective" value="" />
					<Property name="FormattableObjectiveTip" value="" />
				</Property>
				<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
					<Property name="ApplicableSeasonNumbers" />
					<Property name="OverrideObjective" value="" />
					<Property name="OverrideObjectiveTip" value="" />
				</Property>
				<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
					<Property name="TargetMissionSurveyId" value="" />
					<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
					<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
					<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
					<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
					<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
					<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
				</Property>
				<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
					<Property name="HasCustomNotifyTimer" value="False" />
					<Property name="NotifyDisplayTime" value="20" />
					<Property name="NotifyPauseTime" value="30" />
				</Property>
				<Property name="Conditions" />
				<Property name="Consequences" />
				<Property name="Stages">
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="0" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="0" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
							<Property name="MissionID" value="" />
							<Property name="FirstIncompleteMilestone" value="False" />
							<Property name="Silent" value="False" />
							<Property name="DebugText" value="set self current" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="wait to be selected or warp" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionIsCurrentMission.xml" />
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForWarps.xml">
										<Property name="Message" value="UI_WATERMISSION1_MSG1" />
										<Property name="Amount" value="1" />
										<Property name="DebugText" value="wait to be selected or warp" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions" />
						<Property name="Stage" value="GcMissionSequenceGroup.xml">
							<Property name="Silent" value="True" />
							<Property name="Icon" value="TkTextureResource.xml">
								<Property name="Filename" value="" />
								<Property name="ResHandle" value="GcResource.xml">
									<Property name="ResourceID" value="0" />
								</Property>
							</Property>
							<Property name="PageHint" value="GcMissionPageHint.xml">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="DebugText" value="comms control" />
							<Property name="ObjectiveID" value="" />
							<Property name="ObjectiveTipID" value="" />
							<Property name="HasCategoryOverride" value="False" />
							<Property name="OverrideCategory" value="GcMissionCategory.xml">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="False" />
							<Property name="ColourOverride" value="Colour.xml">
								<Property name="R" value="1" />
								<Property name="G" value="1" />
								<Property name="B" value="1" />
								<Property name="A" value="1" />
							</Property>
							<Property name="PrefixTitle" value="False" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="False" />
							<Property name="AutoPinRepairs" value="False" />
							<Property name="BlockSpaceBattles" value="False" />
							<Property name="ConditionTest" value="GcMissionConditionTest.xml">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="False" />
							<Property name="DoConsequencesIfNeverActivated" value="True" />
							<Property name="RepeatLogic" value="Loop" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
								<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
								<Property name="HasCustomNotifyTimer" value="False" />
								<Property name="NotifyDisplayTime" value="20" />
								<Property name="NotifyPauseTime" value="30" />
							</Property>
							<Property name="Conditions">
								<Property value="GcMissionConditionMissionMessage.xml">
									<Property name="Message" value="PRANKM5_STARTED" />
									<Property name="MessageToFormatSeasonalIDInto" value="" />
								</Property>
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions">
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="7" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="6" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="8" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="9" />
											<Property name="Progress" value="0" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="10" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="11" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="12" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="13" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="14" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="15" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="16" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="17" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="18" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="19" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="20" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="21" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="22" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="23" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="24" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="25" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="26" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="27" />
											<Property name="Progress" value="1" />
										</Property>
										<Property value="GcGenericMissionVersionProgress.xml">
											<Property name="Version" value="28" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
										<Property name="Message" value="UI_WATERMISSION1_MSG1" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllTrue" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="AllowedToFormatObjectives" value="True" />
										<Property name="ForceAllowMissionRestart" value="False" />
										<Property name="ForceAllowMissionRestartEvent" value="" />
										<Property name="DebugText" value="wait for space" />
										<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
											<Property name="MissionMarkup" value="None" />
										</Property>
									</Property>
								</Property>
								<Property value="GcGenericMissionStage.xml">
									<Property name="Versions" />
									<Property name="Stage" value="GcMissionSequenceGroup.xml">
										<Property name="Silent" value="True" />
										<Property name="Icon" value="TkTextureResource.xml">
											<Property name="Filename" value="" />
											<Property name="ResHandle" value="GcResource.xml">
												<Property name="ResourceID" value="0" />
											</Property>
										</Property>
										<Property name="PageHint" value="GcMissionPageHint.xml">
											<Property name="MissionPageHint" value="None" />
										</Property>
										<Property name="PageDataLocID" value="" />
										<Property name="BuildMenuHint" value="" />
										<Property name="InventoryHint" value="" />
										<Property name="TerrainTarget" value="" />
										<Property name="DebugText" value="must be in space" />
										<Property name="ObjectiveID" value="" />
										<Property name="ObjectiveTipID" value="" />
										<Property name="HasCategoryOverride" value="False" />
										<Property name="OverrideCategory" value="GcMissionCategory.xml">
											<Property name="MissionCategory" value="Mission" />
										</Property>
										<Property name="HasColourOverride" value="False" />
										<Property name="ColourOverride" value="Colour.xml">
											<Property name="R" value="1" />
											<Property name="G" value="1" />
											<Property name="B" value="1" />
											<Property name="A" value="1" />
										</Property>
										<Property name="PrefixTitle" value="False" />
										<Property name="PrefixTitleText" value="" />
										<Property name="BlockPinning" value="False" />
										<Property name="AutoPinRepairs" value="False" />
										<Property name="BlockSpaceBattles" value="False" />
										<Property name="ConditionTest" value="GcMissionConditionTest.xml">
											<Property name="ConditionTest" value="AllFalse" />
										</Property>
										<Property name="HideFromLogIfConditionsMet" value="False" />
										<Property name="DoConsequencesIfNeverActivated" value="True" />
										<Property name="RepeatLogic" value="None" />
										<Property name="IconStyle" value="Default" />
										<Property name="GalMapPathOverride" value="None" />
										<Property name="SpecialButtonIcon" value="TkInputEnum.xml">
											<Property name="InputButton" value="None" />
										</Property>
										<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
											<Property name="ObjectivesCanBeFormattedBySequences" value="False" />
											<Property name="FormattableObjective" value="" />
											<Property name="FormattableObjectiveTip" value="" />
										</Property>
										<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
											<Property name="ApplicableSeasonNumbers" />
											<Property name="OverrideObjective" value="" />
											<Property name="OverrideObjectiveTip" value="" />
										</Property>
										<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
											<Property name="TargetMissionSurveyId" value="" />
											<Property name="TargetMissionSurveyDefinitelyExists" value="False" />
											<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
											<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
											<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
											<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
											<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
										</Property>
										<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
											<Property name="HasCustomNotifyTimer" value="False" />
											<Property name="NotifyDisplayTime" value="20" />
											<Property name="NotifyPauseTime" value="30" />
										</Property>
										<Property name="Conditions">
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInPlanetOrbit" />
											</Property>
											<Property value="GcMissionConditionLocation.xml">
												<Property name="MissionPlayerLocation" value="InShipInSpace" />
											</Property>
										</Property>
										<Property name="Consequences">
											<Property value="GcMissionConsequenceRemoveCommunicatorMessage.xml">
												<Property name="Comms" value="D_PRANK1_COMMS" />
											</Property>
										</Property>
										<Property name="Stages">
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="1" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="2" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceWait.xml">
													<Property name="Time" value="9" />
													<Property name="DebugText" value="small wait" />
													<Property name="SuppressMessages" value="False" />
													<Property name="MultiplyTimeBySeasonValue" value="False" />
												</Property>
											</Property>
											<Property value="GcGenericMissionStage.xml">
												<Property name="Versions">
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="7" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="6" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="8" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="9" />
														<Property name="Progress" value="2" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="10" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="11" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="12" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="13" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="14" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="15" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="16" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="17" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="18" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="19" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="20" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="21" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="22" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="23" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="24" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="25" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="26" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="27" />
														<Property name="Progress" value="3" />
													</Property>
													<Property value="GcGenericMissionVersionProgress.xml">
														<Property name="Version" value="28" />
														<Property name="Progress" value="3" />
													</Property>
												</Property>
												<Property name="Stage" value="GcMissionSequenceCommunicator.xml">
													<Property name="Message" value="UI_PRANKMISSION1_MSG2" />
													<Property name="VRMessage" value="UI_CORE_COMMS_MSG2_VR1" />
													<Property name="OptionalWaitMessage" value="" />
													<Property name="OSDMessage" value="UI_WATERHUD_OSD" />
													<Property name="Comms" value="GcPlayerCommunicatorMessage.xml">
														<Property name="Dialog" value="D_PRANK5_COMMS" />
														<Property name="ShowHologram" value="False" />
														<Property name="CommunicatorType" value="Generic" />
														<Property name="RaceOverride" value="GcAlienRace.xml">
															<Property name="AlienRace" value="Traders" />
														</Property>
														<Property name="ShipHUDOverride" value="UI_PRANKHUD_OVERRIDE" />
														<Property name="HailAudioOverride" value="GcAudioWwiseEvents.xml">
															<Property name="AkEvent" value="INVALID_EVENT" />
														</Property>
													</Property>
													<Property name="AutoOpen" value="False" />
													<Property name="UsePulseEncounterObjectAsAttachment" value="False" />
													<Property name="MinTimeInSpaceBeforeCall" value="0" />
													<Property name="FormatDialogIDWithSeasonData" value="" />
													<Property name="DebugText" value="answer the space phone" />
												</Property>
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="3" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="5" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
							<Property name="MissionUpdateMessage" value="Start" />
							<Property name="CustomMessageLocID" value="" />
							<Property name="CustomObjectiveLocID" value="" />
							<Property name="SetMissionSelected" value="True" />
							<Property name="WaitForMessageOver" value="True" />
							<Property name="ShowChangeMissionNotify" value="False" />
							<Property name="SuppressNotificationsNotFromThisMission" value="False" />
							<Property name="PlayMusicSting" value="Start" />
							<Property name="DebugText" value="mission update message" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="4" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="6" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
							<Property name="Table" value="GcScanEventTableType.xml">
								<Property name="ScanTable" value="Tutorial" />
							</Property>
							<Property name="Participant" value="GcPlayerMissionParticipantType.xml">
								<Property name="ParticipantType" value="None" />
							</Property>
							<Property name="Event" value="SE_PRANKMISSION5_START" />
							<Property name="Time" value="0.6" />
							<Property name="DoAerialScan" value="False" />
							<Property name="AllowOtherPlayersBase" value="False" />
							<Property name="IgnoreIfAlreadyActive" value="False" />
							<Property name="DebugText" value="start scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="7" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="6" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="5" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="7" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
							<Property name="Message" value="UI_WATERMISSION1_MSG3" />
							<Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP_WATER" />
							<Property name="GalaxyMapMessageNotSpace" value="" />
							<Property name="NexusMessage" value="" />
							<Property name="Event" value="SE_PRANKMISSION5_START" />
							<Property name="Timeout" value="0" />
							<Property name="DistanceTimeout" value="False" />
							<Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
							<Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
								<Property name="ScanEventGPSHint" value="None" />
							</Property>
							<Property name="SurveyInactiveHint" value="UI_WATERMISS1_SURVEY_OFF" />
							<Property name="SurveySwapHint" value="UI_WATERMISS1_SURVEY_SWAP" />
							<Property name="SurveyHint" value="UI_WATERMISS1_SURVEY" />
							<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							<Property name="DebugText" value="wait for scan event" />
						</Property>
					</Property>
					<Property value="GcGenericMissionStage.xml">
						<Property name="Versions">
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="8" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="9" />
								<Property name="Progress" value="6" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="10" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="11" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="12" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="13" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="14" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="15" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="16" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="17" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="18" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="19" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="20" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="21" />
								<Property name="Progress" value="7" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="22" />
								<Property name="Progress" value="9" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="23" />
								<Property name="Progress" value="9" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="24" />
								<Property name="Progress" value="9" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="25" />
								<Property name="Progress" value="9" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="26" />
								<Property name="Progress" value="9" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="27" />
								<Property name="Progress" value="9" />
							</Property>
							<Property value="GcGenericMissionVersionProgress.xml">
								<Property name="Version" value="28" />
								<Property name="Progress" value="9" />
							</Property>
						</Property>
						<Property name="Stage" value="GcMissionSequenceAudioEvent.xml">
							<Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
								<Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_32" />
							</Property>
							<Property name="UseFrontendAudioObject" value="False" />
							<Property name="DebugText" value="play music" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="ForcesPageHint" value="False" />
	<Property name="ForcesBuildMenuHint" value="False" />
	<Property name="IsProceduralAllowed" value="False" />
	<Property name="IsRecurring" value="False" />
	<Property name="IsLegacy" value="False" />
	<Property name="BlocksPinning" value="False" />
	<Property name="CanRenounce" value="False" />
	<Property name="UseCommunityMissionForLog" value="" />
	<Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
	<Property name="TelemetryUpload" value="False" />
	<Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]

--| Mod Definition Container
--|=======================================================================================--
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = string.format("%s_v%s_nms%s.pak", modName, modVersion, gameVersion),
	["MOD_DESCRIPTION"] = description,
	["MOD_AUTHOR"] = author,
	["LUA_AUTHOR"] = luaAuthor,
	["MAINTENANCE"] = maintenance,
	["NMS_VERSION"] = gameVersion,
	["ADD_FILES"] = {{
		["FILE_DESTINATION"] = "LANGUAGE/NMS_LOCMT_ENGLISH.EXML",
		["FILE_CONTENT"] = LocMT,
	}},
	["MODIFICATIONS"] = {{
		["MBIN_CT"]=
		{
			{
				["MBIN_FS"] = "METADATA/SIMULATION/MISSIONS/TABLES/WATERMISSIONTABLE.MBIN",
				["EXML_CT"] = {{
					["PKW"] = "Missions",
					["ADD_OPTION"] = "ADDendSECTION", 
					["ADD"] = PranksterMissions
				}}
			},
			{
				["MBIN_FS"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
				["EXML_CT"] = {{
					["PKW"] = "LocTableList",
					["ADD_OPTION"] = "ADDendSECTION", 
					["ADD"] = '<Property value="NMSString0x20.xml"><Property name="Value" value="NMS_LocMT" /></Property>'
				}}
			}
		}
	}}
}