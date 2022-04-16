//=============================================================================
// Skip initial missions e.g. tutorial, act 1 (artemis), act 2 (apollo),
// base computer, base npc's, water, ...
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Mission_Skip : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcDebugOptions();
			GcMissionTable();
		}

		//...........................................................

		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);
			mbin.SkipTutorial = true;  // enables SKIP_TUT ?
		}

		//...........................................................

		protected void R_SKIP_MISS(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){
			// each of these skips missions in a different mission mbin
			
			R_SKIP_MISS_Wiki(MISS, PROD, TECH);

			R_SKIP_MISS_BaseComputer(MISS, PROD, TECH);
			R_SKIP_MISS_BaseNPC     (MISS, PROD, TECH);
			R_SKIP_MISS_Water       (MISS, PROD, TECH);	

			R_SKIP_MISS_Act1(MISS, PROD, TECH);
			R_SKIP_MISS_Act2(MISS, PROD, TECH);
		}

		//...........................................................

		// Wiki missions:
		protected void R_SKIP_MISS_Wiki(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){
			R_SKIP_MISS_AddTable(MISS, PROD, TECH,
				"METADATA/SIMULATION/MISSIONS/WIKIMISSIONTABLE.MBIN",
				MISS => true  // skip all missions
			);
		}

		//...........................................................

		// Base Computer missions:
		protected void R_SKIP_MISS_BaseComputer(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){
			R_SKIP_MISS_AddTable(MISS, PROD, TECH,
				"METADATA/SIMULATION/MISSIONS/BASECOMPUTERMISSIONTABLE.MBIN",
				MISS => true  // skip all missions
			);
		}

		//...........................................................

		// Base NPC missions e.g. overseer
		protected void R_SKIP_MISS_BaseNPC(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){
			R_SKIP_MISS_AddTable(MISS, PROD, TECH,
				"METADATA/SIMULATION/MISSIONS/MISSIONTABLE.MBIN",
				MISS => false  // only skip missions that match following:
				|| MISS.MissionID.Value.Contains("OVERSEER")
				|| MISS.MissionID.Value.Contains("SCIENTIST")
				|| MISS.MissionID.Value.Contains("WEAPGUY")
				|| MISS.MissionID.Value.Contains("FARMER")
				|| MISS.MissionID.Value.Contains("EXOTUT")
			//	|| MISS.MissionID.Value.Contains("_CATCHUP")
			);
		}

		//...........................................................

		// Water missions:
		protected void R_SKIP_MISS_Water(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){
			R_SKIP_MISS_AddTable(MISS, PROD, TECH,
				"METADATA/SIMULATION/MISSIONS/WATERMISSIONTABLE.MBIN",
				MISS => true  // skip all missions
			);
		}
		
		//...........................................................
		
		// ACT 1 - Artemis
		protected void R_SKIP_MISS_Act1(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){
			R_SKIP_MISS_AddTable(MISS, PROD, TECH,
				"METADATA/SIMULATION/MISSIONS/COREMISSIONTABLE.MBIN",
				MISS => false  // only skip missions that match following:
				|| MISS.MissionID.Value.Contains("ACT1_")
				|| MISS.MissionID == "ART_SIM"
				|| MISS.MissionID == "ART_SIM_TRUTH"
			);
		}

		//...........................................................
		
		// ACT 2 - Apollo
		protected void R_SKIP_MISS_Act2(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){
			R_SKIP_MISS_AddTable(MISS, PROD, TECH,
				"METADATA/SIMULATION/MISSIONS/COREMISSIONTABLE.MBIN",
				MISS => false  // only skip missions that match following:
				|| MISS.MissionID.Value.Contains("ACT2_")
				|| MISS.MissionID == "APOLLO_PORTAL"
			);
		}

		//...........................................................
		// helper methods, shouldn't have the change:
		//...........................................................

		// Start with clone of SKIP_TUT from Seasonal Mission Table,
		// add other missions to clone, add clone to Tutorial Mission Table.
		protected void GcMissionTable()
		{
			var mbin = ExtractMbin<GcMissionTable>(		
				"METADATA/SIMULATION/MISSIONS/SEASONALMISSIONTABLE.MBIN"
			);
			var skip = CloneMbin(mbin.Missions.Find(MISSION => MISSION.MissionID == "SKIP_TUT"));
			
			mbin = ExtractMbin<GcMissionTable>(
				"METADATA/SIMULATION/MISSIONS/TUTORIALMISSIONTABLE.MBIN"
			);
			
			// remove tut missions, like find a droppod to increase exosuit slots
			mbin.Missions.RemoveAll(MISSION => MISSION.MissionID.Value.StartsWith("TUT_"));
			mbin.Missions.RemoveAll(MISSION => MISSION.MissionID.Value.EndsWith("_TUT"));
			
			// add SKIP_TUT clone from SEASONALMISSIONTABLE to TUTORIALMISSIONTABLE
			mbin.Missions.Add(skip);

			// clone already has Rewards:
			// R_SKIP_NEXUS
			// R_SKIP_TECH - Reward GcRewardMultiSpecificTechRecipes
			// - TERRAINEDITOR, HYPERDRIVE
			// R_SKIP_PRODS - Reward GcRewardMultiSpecificProductRecipes
			// - CARBON_SEAL, BUILD_REFINER1, ANTIMATTER, AM_HOUSING, BASE_FLAG,
			//   BP_ANALYSER, T_DOOR1, T_WALL, T_CHEV_WIN0, PLANTPOT3, T_FLOOR,
			//   T_ROOF6, T_ROOF7, FLAG1, BUILDLIGHT2
			// R_SKIP_MISS - Reward GcRewardCompleteMultiMission
			// - TUT_NEXT1-5, TUT_TRANSITION, TUT_REPAIR_SHIP, TUT_ADV_MATS,
			//   TUT_FIRST_WALK, TUT_BASEBUILD, FIRST_BP_DUMMY, STORY_INIT
			// R_SKIP_WIKI (empty)
			// R_SKIP_FIX - Weapon, Ship
			// R_SKIP_INSTALL
			// - SCANBINOC1, TERRAINEDITOR, HYPERDRIVE
			var r_skip_tech = skip.Rewards.Find(REWARD => REWARD.Id == "R_SKIP_TECH") .List.List[0].Reward as GcRewardMultiSpecificTechRecipes;
			var r_skip_prod = skip.Rewards.Find(REWARD => REWARD.Id == "R_SKIP_PRODS").List.List[0].Reward as GcRewardMultiSpecificProductRecipes;
			var r_skip_miss = skip.Rewards.Find(REWARD => REWARD.Id == "R_SKIP_MISS") .List.List[0].Reward as GcRewardCompleteMultiMission;
			R_SKIP_MISS(
				r_skip_miss.Missions,
				r_skip_prod.ProductIds,
				r_skip_tech.TechIds
			);

			CopyKnown(
				r_skip_prod.ProductIds,
				r_skip_tech.TechIds
			);
		}

		//...........................................................

		protected void CopyKnown(
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH
		){		
			var mbin = ExtractMbin<GcDefaultSaveData>(		
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"
			);
			
			// seems that R_SKIP_TECH and R_SKIP_PRODS aren't made known, so explicitly make known.
			foreach( var prod in PROD ) mbin.State.KnownProducts.AddUnique(prod);
			foreach( var tech in TECH ) mbin.State.KnownTech    .AddUnique(tech);
			
			mbin.State.KnownProducts.AddUnique("BAIT_BASIC");

			// seems R_SKIP_NEXUS may not be used either
			mbin.State.HasAccessToNexus = true;
		}
		
		//...........................................................
		
		// Helper method to skip missions from a LOOKUP mission (mbin) table.
		// Move MATCHing missions from LOOKUP mbin to MISS list,
		// also add any MATCHing mission prod|tech rewards to PROD|TECH lists.
		protected GcMissionTable R_SKIP_MISS_AddTable(
			List<nms.NMSString0x10> MISS,
			List<nms.NMSString0x10> PROD,
			List<nms.NMSString0x10> TECH,
			string LOOKUP,
			Predicate<GcGenericMissionSequence> MATCH
		){
			var mbin = ExtractMbin<GcMissionTable>(LOOKUP);
			foreach( var mission in mbin.Missions ) {
				if( MATCH(mission) ) R_SKIP_MISS_AddMission(MISS, PROD, TECH, mission);
			}
			mbin.Missions.RemoveAll(MISSION => MISS.Contains(MISSION.MissionID));
			return mbin;
		}

		//...........................................................
		
		// For each MISSION we add to MISS, go through its rewards
		// and add all product and technology rewards to PROD and TECH.
		protected void R_SKIP_MISS_AddMission(
			List<nms.NMSString0x10>  MISS,
			List<nms.NMSString0x10>  PROD,
			List<nms.NMSString0x10>  TECH,
			GcGenericMissionSequence MISSION
		){
			MISS.AddUnique(MISSION.MissionID);
			foreach( var reward in MISSION.Rewards ) {
				foreach( var item in reward.List.List ) {
					if( item.Reward is GcRewardMultiSpecificProductRecipes prods ) {
						prods.ProductIds.ForEach(ID => PROD.AddUnique(ID));
					}
					if( item.Reward is GcRewardMultiSpecificTechRecipes techs ) {
						techs.TechIds.ForEach(ID => TECH.AddUnique(ID));
					}
					if( item.Reward is GcRewardSpecificProductRecipe prod ) PROD.AddUnique(prod.Id);
					if( item.Reward is GcRewardSpecificTech          tech ) TECH.AddUnique(tech.TechId);				
				}
			}
		}		
	}
}

//=============================================================================
