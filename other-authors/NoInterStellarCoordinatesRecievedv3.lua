NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]	= "NOInterStellarCoordinatesReceivedv3.pak",
    ["MOD_DESCRIPTION"]	= "Removes Interstellar Coordinates prompt",
    ["MOD_AUTHOR"]		= "DeathWrench",
    ["LUA_AUTHOR"]		= "DeathWrench",
    ["NMS_VERSION"]		= "3.8",
    ["MODIFICATIONS"]    = {
{
    ["MBIN_CHANGE_TABLE"] =
    {    {
        ["MBIN_FILE_SOURCE"]     =
        {
            "LANGUAGE\NMS_LOC6_BRAZILIANPORTUGUESE.MBIN",
            "LANGUAGE\NMS_LOC6_DUTCH.MBIN",
            "LANGUAGE\NMS_LOC6_ENGLISH.MBIN",
            "LANGUAGE\NMS_LOC6_FRENCH.MBIN",
            "LANGUAGE\NMS_LOC6_GERMAN.MBIN",
            "LANGUAGE\NMS_LOC6_ITALIAN.MBIN",
            "LANGUAGE\NMS_LOC6_JAPANESE.MBIN",
            "LANGUAGE\NMS_LOC6_KOREAN.MBIN",
            "LANGUAGE\NMS_LOC6_LATINAMERAICANSPANISH.MBIN",
            "LANGUAGE\NMS_LOC6_POLISH.MBIN",
            "LANGUAGE\NMS_LOC6_PORTUGUESE.MBIN",
            "LANGUAGE\NMS_LOC6_RUSSIAN.MBIN",
			"LANGUAGE\NMS_LOC6_SIMPLIFIEDCHINESE.MBIN",
            "LANGUAGE\NMS_LOC6_SPANISH.MBIN",
            --"LANGUAGE\NMS_LOC6_TENCENTCHINESE.MBIN", - doesn't have anything in it to replace
            "LANGUAGE\NMS_LOC6_TRADITIONALCHINESE.MBIN",
            "LANGUAGE\NMS_LOC6_USENGLISH.MBIN",
        },
        ["EXML_CHANGE_TABLE"] = {
            {
                ["REPLACE_TYPE"] 		= "RAW",
						["VALUE_CHANGE_TABLE"] 	= 
						{
							{ [[<Property name="Value" value="INTERSTELLAIRE COÖRDINATEN ONTVANGEN" />]],	[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="COORDONNÉES INTERSTELLAIRES REÇUES" />]],		[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="INTERSTELLARE KOORDINATEN ERHALTEN" />]],		[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="COORDINATE INTERSTELLARI RICEVUTE" />]],		[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="星間座標を受信" />]],							[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="성간 좌표 수신" />]],								[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="OTRZYMANO WSPÓŁRZĘDNE MIĘDZYGWIEZDNE" />]],	[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="COORDENADAS INTERESTELARES RECEBIDAS" />]],	[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="ПОЛУЧЕНЫ МЕЖЗВЕЗДНЫЕ КООРДИНАТЫ" />]],		[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="已收到星际坐标" />]],							[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="INTERSTELLAR COORDINATES RECEIVED" />]],		[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="COORDENADAS INTERESTELARES RECIBIDAS" />]],	[[<Property name="Value" value=" " />]] },
							{ [[<Property name="Value" value="收到星際座標" />]],								[[<Property name="Value" value=" " />]] },
						},
             
        }
}}}}}}

