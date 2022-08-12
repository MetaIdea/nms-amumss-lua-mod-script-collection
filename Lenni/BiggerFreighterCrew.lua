Rooms = {
	"BIOROOM",
	"MAINROOMCUBE",
	"CUBEROOM_SPACE",
	"CUBEROOMB_SPACE",
	"CUBEROOMC_SPACE",
	"MAINROOM",
	"MAINROOM_WATER",
	"MAINROOMCUBE_W",
	"CORRIDORL_SPACE",
	"CORRIDOR_SPACE",
	"CORRIDOR_S",
	"CORRIDORX_SPACE",
	"CORRIDORT_SPACE",
	"CORSTAIRS_SPACE",
}


function GetRoom(Room)
    return [[
    <Property value="GcFreighterRoomNPCData.xml">
      <Property name="RoomID" value="]]..Room..[[" />
      <Property name="SpawnCapacity">
        <Property name="SquadronPilot" value="1" />
        <Property name="FrigateCaptain" value="1" />
        <Property name="WorkerBio" value="1" />
        <Property name="WorkerTech" value="1" />
        <Property name="WorkerIndustry" value="1" />
      </Property>
      <Property name="POISelectionWeight">
        <Property name="SquadronPilot" value="0.25" />
        <Property name="FrigateCaptain" value="0.25" />
        <Property name="WorkerBio" value="0.25" />
        <Property name="WorkerTech" value="0.25" />
        <Property name="WorkerIndustry" value="0.25" />
      </Property>
    </Property>
    ]]
end

--in this function we're looping all the POSSIBLE_UPGRADES list
function GetFreighterRooms()
    ROOMS_ADDING_ALL = {}
    for i=1,#Rooms,1 do
        -- in this loop we're filling UPGRADES_ADDING_ALL with a single rewardtable item
        table.insert(ROOMS_ADDING_ALL,GetRoom(Rooms[i]))
    end
	return table.concat(ROOMS_ADDING_ALL)
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "BiggerFreighterCrew.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.98+",
["MOD_DESCRIPTION"]	= "Makes more NPCs spawn on your freighter",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "MaxTotalNPCCount", 96 },				
								{ "MinTotalRoomsRequiredPerNPC", 1 },						
								{ "FrigateCaptain", 30 },						
								{ "WorkerBio", "20" },						
								{ "WorkerTech", "20" },						
								{ "WorkerIndustry", "20" },						
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= "FreighterRoomNPCData",
							["ADD_OPTION"]			= "ADDafterLINE",
							["ADD"]               	= GetFreighterRooms(),
						},
					},
				}, 
			},
		}
	}	
}