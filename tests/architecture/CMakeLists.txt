cmake_minimum_required(VERSION 3.16)
project(TurtleArchitectureTests LANGUAGES C CXX)
enable_testing()
add_executable(BoundedBotTraceTest BoundedBotTraceTest.cpp)
target_compile_features(BoundedBotTraceTest PRIVATE cxx_std_17)
target_include_directories(BoundedBotTraceTest PRIVATE ../../src/shared)
if(MSVC)
    target_compile_options(BoundedBotTraceTest PRIVATE /EHsc)
endif()
add_test(NAME BoundedBotTraceTest COMMAND BoundedBotTraceTest)
set_tests_properties(BoundedBotTraceTest PROPERTIES TIMEOUT 20)

function(extract_native_fragment source start end output)
    set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS "${source}")
    file(READ "${source}" body)
    string(FIND "${body}" "${start}" first)
    if(first LESS 0)
        message(FATAL_ERROR "Cannot find native regression start: ${output}")
    endif()
    string(SUBSTRING "${body}" ${first} -1 body)
    string(FIND "${body}" "${end}" length)
    if(length LESS 0)
        message(FATAL_ERROR "Cannot extract native regression fragment: ${output}")
    endif()
    string(SUBSTRING "${body}" 0 ${length} fragment)
    file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/${output}" "${fragment}")
endfunction()
set(CORE_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../..")
set(TRAVEL_ROOT "${CORE_ROOT}/modules/mod-playerbots/src/playerbot")
extract_native_fragment("${TRAVEL_ROOT}/TravelNode.cpp"
    "void TravelNodeMap::generateTaxiPaths()" "void TravelNodeMap::removeLowNodes()" NativeTaxiGeneration.inc)
extract_native_fragment("${TRAVEL_ROOT}/TravelNode.cpp"
    "void TravelNodeMap::generateAll()" "void TravelNodeMap::printMap()" NativeTravelGeneration.inc)
extract_native_fragment("${TRAVEL_ROOT}/TravelNode.h"
    "        TravelNodePath* setPathTo(" "        bool hasCompletePathTo(" NativeTravelSetPath.inc)
extract_native_fragment("${TRAVEL_ROOT}/TravelNode.h"
    "        void setPathAndCost(" "        //void setPortal(" NativeTravelSetCost.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Database/DBCStructure.h"
    "struct TaxiPathNodePtr" "typedef Path<TaxiPathNodePtr" NativeTaxiNodePtr.inc)
add_executable(BotTaxiCacheRefreshTest BotTaxiCacheRefreshTest.cpp)
target_compile_features(BotTaxiCacheRefreshTest PRIVATE cxx_std_17)
target_include_directories(BotTaxiCacheRefreshTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
if(MSVC)
    target_compile_options(BotTaxiCacheRefreshTest PRIVATE /EHsc)
endif()
add_test(NAME BotTaxiCacheRefreshTest COMMAND BotTaxiCacheRefreshTest)
set_tests_properties(BotTaxiCacheRefreshTest PROPERTIES TIMEOUT 20)
extract_native_fragment("${TRAVEL_ROOT}/BotDiagnostics.cpp"
    "    void TraceBehavior(" "\n}}" BotTraceBody.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Movement/spline/MoveSpline.h"
    "int32 Duration() const" "int32 Duration(int first" BotNativeSplineDuration.inc)
add_executable(BotTraceSnapshotTest BotTraceSnapshotTest.cpp)
target_compile_features(BotTraceSnapshotTest PRIVATE cxx_std_17)
target_include_directories(BotTraceSnapshotTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}" "${CORE_ROOT}/src/shared")
if(MSVC)
    target_compile_options(BotTraceSnapshotTest PRIVATE /EHsc)
endif()
add_test(NAME BotTraceSnapshotTest COMMAND BotTraceSnapshotTest)
set_tests_properties(BotTraceSnapshotTest PROPERTIES TIMEOUT 20)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Player.cpp"
    "bool Player::CanInteractWithNPC(" "GameObject* Player::GetGameObjectIfCanInteractWith(" NativeNpcInteraction.inc)
extract_native_fragment("${TRAVEL_ROOT}/BotDiagnostics.cpp"
    "    class DiagnosticFlightMasterCheck" "    void TraceBehavior(" TaxiInteractionTrace.inc)
add_executable(NpcInteractionTraceTest NpcInteractionTraceTest.cpp)
target_compile_features(NpcInteractionTraceTest PRIVATE cxx_std_17)
target_include_directories(NpcInteractionTraceTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
if(MSVC)
    target_compile_options(NpcInteractionTraceTest PRIVATE /EHsc)
endif()
add_test(NAME NpcInteractionTraceTest COMMAND NpcInteractionTraceTest)
set_tests_properties(NpcInteractionTraceTest PROPERTIES TIMEOUT 20)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/MovementActions.cpp"
    "void MovementAction::DispatchMovement(" "Unit* MovementAction::GetMover(" BotMoveDispatch.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Movement/MotionMaster.cpp"
    "void MotionMaster::MovePath(" "void MotionMaster::MoveWaypointAsDefault(" BotNativeMovePath.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Movement/PointMovementGenerator.cpp"
    "template<class T>\nvoid PointMovementGenerator<T>::Initialize(" "template<class T>\nvoid PointMovementGenerator<T>::Finalize(" BotNativePointInit.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Movement/PointMovementGenerator.cpp"
    "template<class T>\nbool PointMovementGenerator<T>::Update(" "template<>\nvoid PointMovementGenerator<Player>::MovementInform(" BotNativePointUpdate.inc)
add_executable(BotMovementDispatchTest BotMovementDispatchTest.cpp)
target_compile_features(BotMovementDispatchTest PRIVATE cxx_std_17)
target_compile_definitions(BotMovementDispatchTest PRIVATE MANGOSBOT_ZERO)
target_include_directories(BotMovementDispatchTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
if(MSVC)
    target_compile_options(BotMovementDispatchTest PRIVATE /EHsc)
endif()
add_test(NAME BotMovementDispatchTest COMMAND BotMovementDispatchTest)
set_tests_properties(BotMovementDispatchTest PROPERTIES TIMEOUT 20)
extract_native_fragment("${TRAVEL_ROOT}/RandomPlayerbotFactory.cpp"
    "    std::vector<std::future<void>> account_creations;" "    //LoginDatabase.PExecute" BotAccountCreation.inc)
extract_native_fragment("${TRAVEL_ROOT}/RandomPlayerbotFactory.cpp"
    "    std::vector<std::future<void>> bot_creations;" "    std::vector<Player*> players;" BotCreationSaves.inc)
add_executable(BotCreationLifecycleTest BotCreationLifecycleTest.cpp)
target_compile_features(BotCreationLifecycleTest PRIVATE cxx_std_17)
target_compile_definitions(BotCreationLifecycleTest PRIVATE MANGOSBOT_ZERO)
target_include_directories(BotCreationLifecycleTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
if(MSVC)
    target_compile_options(BotCreationLifecycleTest PRIVATE /EHsc)
endif()
add_test(NAME BotCreationLifecycleTest COMMAND BotCreationLifecycleTest)
set_tests_properties(BotCreationLifecycleTest PROPERTIES TIMEOUT 60)
extract_native_fragment("${TRAVEL_ROOT}/WorldPosition.cpp"
    "bool WorldPosition::ClosestCorrectPoint(" "bool WorldPosition::GetReachableRandomPointOnGround(" BotRpgPoint.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/ChooseRpgTargetAction.cpp"
    "std::unordered_map<ObjectGuid, uint32> ChooseRpgTargetAction::GetTargetCounts(" "#define SkipRpgTarget" BotRpgCrowd.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/MoveToRpgTargetAction.cpp"
    "    WorldPosition movePos(mapId, x, y, z);" "    if ((ai->HasStrategy(\"debug rpg\"" BotRpgApproach.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/MoveToRpgTargetAction.cpp"
    "bool MoveToRpgTargetAction::isUseful()" "    if(MEM_AI_VALUE" BotRpgUsefulPrefix.inc)
add_executable(BotRpgMovementTest BotRpgMovementTest.cpp)
target_compile_features(BotRpgMovementTest PRIVATE cxx_std_17)
target_include_directories(BotRpgMovementTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
if(MSVC)
    target_compile_options(BotRpgMovementTest PRIVATE /EHsc)
endif()
add_test(NAME BotRpgMovementTest COMMAND BotRpgMovementTest)
set_tests_properties(BotRpgMovementTest PROPERTIES TIMEOUT 20)
add_executable(StableTargetPositionTest StableTargetPositionTest.cpp)
target_compile_features(StableTargetPositionTest PRIVATE cxx_std_17)
if(MSVC)
    target_compile_options(StableTargetPositionTest PRIVATE /EHsc)
endif()
add_test(NAME StableTargetPositionTest COMMAND StableTargetPositionTest)
set_tests_properties(StableTargetPositionTest PROPERTIES TIMEOUT 20)
add_executable(TravelRoutePolicyTest TravelRoutePolicyTest.cpp)
target_compile_features(TravelRoutePolicyTest PRIVATE cxx_std_17)
if(MSVC)
    target_compile_options(TravelRoutePolicyTest PRIVATE /EHsc)
endif()
add_test(NAME TravelRoutePolicyTest COMMAND TravelRoutePolicyTest)
set_tests_properties(TravelRoutePolicyTest PROPERTIES TIMEOUT 20)
extract_native_fragment("${TRAVEL_ROOT}/strategy/Engine.cpp"
    "void Engine::UpdateActionFailureCachePeak(" "std::string Engine::GetFailureKey(" BotRetryPeak.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/Engine.cpp"
    "bool Engine::IsFailureBackedOff(" "bool Engine::AllowBackgroundRetry(" BotRetryCache.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/Engine.cpp"
    "bool Engine::AllowBackgroundRetry(" "Engine::Engine(" BotRetryPolicy.inc)
add_executable(BotRetryIntegrationTest BotRetryIntegrationTest.cpp)
target_compile_features(BotRetryIntegrationTest PRIVATE cxx_std_17)
target_include_directories(BotRetryIntegrationTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
add_test(NAME BotRetryIntegrationTest COMMAND BotRetryIntegrationTest)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/MovementActions.cpp"
    "bool MovementAction::UseTaxi(" "bool MovementAction::MoveOnTransport(" BotTaxiUse.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/MovementActions.cpp"
    "    //Taxi handling: Start taxi" "   //Transport handling:" BotTaxiLeg.inc)
add_executable(BotTaxiIntegrationTest BotTaxiIntegrationTest.cpp)
target_compile_features(BotTaxiIntegrationTest PRIVATE cxx_std_17)
target_include_directories(BotTaxiIntegrationTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
add_test(NAME BotTaxiIntegrationTest COMMAND BotTaxiIntegrationTest)
set_tests_properties(BotRetryIntegrationTest BotTaxiIntegrationTest PROPERTIES TIMEOUT 20)
if(MSVC)
    target_compile_options(BotRetryIntegrationTest PRIVATE /EHsc)
    target_compile_options(BotTaxiIntegrationTest PRIVATE /EHsc)
endif()
extract_native_fragment("${CORE_ROOT}/src/game/Maps/PathFinder.cpp"
    "bool PathInfo::calculate(float" "bool PathInfo::calculate(Vector3" ForkPathFloat.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Maps/PathFinder.cpp"
    "bool PathInfo::calculate(Vector3" "    TurtleDiagnostics::Scope diagnosticPath" ForkPathVectorPrefix.inc)
extract_native_fragment("${TRAVEL_ROOT}/BroadcastHelper.cpp"
    "bool BroadcastHelper::BroadcastToChannelWithGlobalChance(" "    for (const auto& pair : toChannels)" ForkBroadcastPrefix.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/values/StatsValues.cpp"
    "bool PetIsDeadValue::Calculate()" "bool PetIsHappyValue::Calculate()" ForkPetDead.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/BattleGroundTactics.cpp"
    "        // Ground-level static rays" "        closePlayers =" ForkBannerCandidates.inc)
add_executable(ForkIntegrationTest ForkIntegrationTest.cpp)
target_compile_features(ForkIntegrationTest PRIVATE cxx_std_17)
target_include_directories(ForkIntegrationTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
if(MSVC)
    target_compile_options(ForkIntegrationTest PRIVATE /EHsc)
endif()
add_test(NAME ForkIntegrationTest COMMAND ForkIntegrationTest)
extract_native_fragment("${TRAVEL_ROOT}/strategy/values/TravelValues.h"
    "inline bool IsTravelSearchPending(" "    typedef std::set<uint32>" TravelPending.inc)
extract_native_fragment("${TRAVEL_ROOT}/PlayerbotAI.cpp"
    "FutureDestinations* future = AI_VALUE(FutureDestinations*, \"future travel destinations\");"
    "        RESET_AI_VALUE2(std::string" TravelReset.inc)
extract_native_fragment("${TRAVEL_ROOT}/TravelMgr.cpp"
    "void TravelMgr::GetPartitionsLock(" "bool TravelMgr::IsLocationLevelValid(" TravelPermit.inc)
extract_native_fragment("${TRAVEL_ROOT}/TravelMgr.cpp"
    "    sTravelMgr.GetPartitionsLock();" "    PartitionedTravelList pointMap;" TravelPermitScope.inc)
extract_native_fragment("${TRAVEL_ROOT}/strategy/actions/ChooseTravelTargetAction.cpp"
    "    PartitionedTravelList destinationList;\n    try" "    ai->TellDebug(ai->GetMaster(), \"Got \"" TravelResult.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Player.h"
    "uint32 GetAIElapsed(" "uint32 BackgroundAIDueAge(" AIClock.inc)
extract_native_fragment("${CORE_ROOT}/modules/mod-playerbots/src/playerbot/PlayerbotScripts.cpp"
    "bool IsAIUpdateDue(" "void OnAIUpdate(" AIDue.inc)
extract_native_fragment("${CORE_ROOT}/modules/mod-playerbots/src/playerbot/PlayerbotAIBase.cpp"
    "void PlayerbotAIBase::AdvanceMinimalUpdateDelay(" "void PlayerbotAIBase::SetAIInternalUpdateDelay(" AIAdvance.inc)
extract_native_fragment("${CORE_ROOT}/modules/mod-playerbots/src/playerbot/PlayerbotAI.cpp"
    "bool PlayerbotAI::HasSpell(uint32 spellid) const" "SpellCastResult PlayerbotAI::CheckSpellTargetAlignment(" AICapability.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Player.cpp"
    "bool Player::HasSpell(uint32 spell) const" "bool Player::HasActiveSpell(" NativeHasSpell.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Player.cpp"
    "void Player::SendQuestUpdateAddItem(" "void Player::SendQuestUpdateAddCreatureOrGo(" QuestItemUpdate.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Player.cpp"
    "void Player::RewardRage(" "void Player::HandleFoodEmotes(" NativeRewardRage.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Unit.cpp"
    "float Unit::GetTotalAuraMultiplier(" "int32 Unit::GetMaxPositiveAuraModifier(" NativeAuraMultiplier.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Unit.cpp"
    "float Unit::GetTotalAuraMultiplierByMiscMask(" "int32 Unit::GetTotalAuraModifierByMiscValue(" NativeAuraMaskMultiplier.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Object.cpp"
    "// Native periodic-damage bonus:" "// Add pct bonus from spell damage versus" NativePeriodicBonus.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Unit.cpp"
    "// Native chain avoidance" "if (damagetype == DOT)" NativeChainSpell.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Objects/Unit.cpp"
    "// Weapon-based chain spells" "if (spellProto && damagetype == DOT)" NativeChainWeapon.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Spells/SpellEntry.cpp"
    "// Native skill-specific cast-time auras" "        }\n    }\n\n    if (Attributes & SPELL_ATTR_RANGED" NativeSkillCastTime.inc)
foreach(test AIClockAccountingTest NativeSpellCapabilityTest QuestItemUpdateTest NativeCustomAuraTest TravelFutureLifecycleTest)
    add_executable(${test} ${test}.cpp)
    target_compile_features(${test} PRIVATE cxx_std_17)
    target_include_directories(${test} PRIVATE "${CMAKE_CURRENT_BINARY_DIR}" "${CORE_ROOT}/src/game/Spells")
    if(MSVC)
        target_compile_options(${test} PRIVATE /EHsc)
    endif()
    add_test(NAME ${test} COMMAND ${test})
endforeach()
set_tests_properties(TravelFutureLifecycleTest PROPERTIES TIMEOUT 20)

# Exercise the actual trainer purchase handler with deterministic stand-ins for
# its native services. This tests dispatch/payment, not the Spell engine itself.
set(TRAINER_SOURCE "${CMAKE_CURRENT_SOURCE_DIR}/../../src/game/Handlers/NPCHandler.cpp")
set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS "${TRAINER_SOURCE}")
file(READ "${TRAINER_SOURCE}" trainerSource)
string(FIND "${trainerSource}" "void WorldSession::HandleTrainerBuySpellOpcode(" trainerStart)
string(FIND "${trainerSource}" "void WorldSession::HandleGossipHelloOpcode(" trainerEnd)
if(trainerStart LESS 0 OR trainerEnd LESS trainerStart)
    message(FATAL_ERROR "Cannot isolate the native trainer handler for its regression test")
endif()
math(EXPR trainerLength "${trainerEnd} - ${trainerStart}")
string(SUBSTRING "${trainerSource}" ${trainerStart} ${trainerLength} trainerHandler)
file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/TrainerPurchaseHandler.inc" "${trainerHandler}")
add_executable(TrainerPurchaseTest TrainerPurchaseTest.cpp)
target_compile_features(TrainerPurchaseTest PRIVATE cxx_std_17)
if(MSVC)
    target_compile_options(TrainerPurchaseTest PRIVATE /EHsc)
endif()
target_include_directories(TrainerPurchaseTest PRIVATE "${CMAKE_CURRENT_BINARY_DIR}")
add_test(NAME TrainerPurchaseTest COMMAND TrainerPurchaseTest)

foreach(test AreaLookupIndexTest IncrementalFilterTest StaticLocationIndexTest TickDiffWindowTest UpstreamIntegrationTest)
    add_executable(${test} ${test}.cpp)
    target_compile_features(${test} PRIVATE cxx_std_17)
    target_include_directories(${test} PRIVATE ../../src/shared)
    if(MSVC)
        target_compile_options(${test} PRIVATE /EHsc /O2)
    endif()
    add_test(NAME ${test} COMMAND ${test})
endforeach()
add_executable(WeightedPermutationTest WeightedPermutationTest.cpp)
target_compile_features(WeightedPermutationTest PRIVATE cxx_std_17)
target_include_directories(WeightedPermutationTest PRIVATE ../../src/shared)
if(MSVC)
    target_compile_options(WeightedPermutationTest PRIVATE /EHsc /O2)
endif()
add_test(NAME WeightedPermutationTest COMMAND WeightedPermutationTest)
set_tests_properties(WeightedPermutationTest PROPERTIES TIMEOUT 60)
add_executable(PopulationSpatialIndexTest PopulationSpatialIndexTest.cpp)
target_compile_features(PopulationSpatialIndexTest PRIVATE cxx_std_17)
target_include_directories(PopulationSpatialIndexTest PRIVATE ../../src/shared)
if(MSVC)
    target_compile_options(PopulationSpatialIndexTest PRIVATE /EHsc /O2)
endif()
add_test(NAME PopulationSpatialIndexTest COMMAND PopulationSpatialIndexTest)
set_tests_properties(PopulationSpatialIndexTest PROPERTIES TIMEOUT 60)
add_executable(WorkSliceTest WorkSliceTest.cpp)
target_compile_features(WorkSliceTest PRIVATE cxx_std_17)
target_include_directories(WorkSliceTest PRIVATE ../../src/shared)
if(MSVC)
    target_compile_options(WorkSliceTest PRIVATE /EHsc)
endif()
add_test(NAME WorkSliceTest COMMAND WorkSliceTest)
set_tests_properties(WorkSliceTest PROPERTIES TIMEOUT 60)
find_package(Threads REQUIRED)
add_subdirectory(../../dep/libdeflate libdeflate)
foreach(test PacketCompressionContextTest MovementViewerSetTest)
    add_executable(${test} ${test}.cpp)
    target_compile_features(${test} PRIVATE cxx_std_17)
    target_include_directories(${test} PRIVATE ../../src/shared)
    target_link_libraries(${test} PRIVATE libdeflate Threads::Threads)
    if(MSVC)
        target_compile_options(${test} PRIVATE /EHsc /O2)
    endif()
    add_test(NAME ${test} COMMAND ${test})
    set_tests_properties(${test} PROPERTIES TIMEOUT 60)
endforeach()
add_executable(ThreadPoolBatchTest ThreadPoolBatchTest.cpp ../../src/shared/ThreadPool.cpp)
target_compile_features(ThreadPoolBatchTest PRIVATE cxx_std_17)
if(MSVC)
    target_compile_options(ThreadPoolBatchTest PRIVATE /EHsc)
endif()
target_compile_definitions(ThreadPoolBatchTest PRIVATE THREADPOOL_STANDALONE_TEST)
target_include_directories(ThreadPoolBatchTest PRIVATE ../../src/shared)
target_link_libraries(ThreadPoolBatchTest PRIVATE Threads::Threads)
add_test(NAME ThreadPoolBatchTest COMMAND ThreadPoolBatchTest)
set_tests_properties(ThreadPoolBatchTest PROPERTIES TIMEOUT 60)
add_test(NAME ContentHookContract COMMAND ${CMAKE_COMMAND}
    -DSOURCE_ROOT=${CMAKE_CURRENT_SOURCE_DIR}/../.. -P ${CMAKE_CURRENT_SOURCE_DIR}/ContentHookContract.cmake)

add_executable(MapDiscoveryTest MapDiscoveryTest.cpp)
target_compile_features(MapDiscoveryTest PRIVATE cxx_std_17)
target_include_directories(MapDiscoveryTest PRIVATE ../../src/shared)
target_link_libraries(MapDiscoveryTest PRIVATE Threads::Threads)
if(MSVC)
    target_compile_options(MapDiscoveryTest PRIVATE /EHsc)
endif()
add_test(NAME MapDiscoveryTest COMMAND MapDiscoveryTest)
set_tests_properties(MapDiscoveryTest PROPERTIES TIMEOUT 60)

add_executable(BackgroundWorldSchedulingTest BackgroundWorldSchedulingTest.cpp)
target_compile_features(BackgroundWorldSchedulingTest PRIVATE cxx_std_17)
target_include_directories(BackgroundWorldSchedulingTest PRIVATE ../../src/shared)
if(MSVC)
    target_compile_options(BackgroundWorldSchedulingTest PRIVATE /EHsc)
endif()
add_test(NAME BackgroundWorldSchedulingTest COMMAND BackgroundWorldSchedulingTest)
set_tests_properties(BackgroundWorldSchedulingTest PROPERTIES TIMEOUT 60)

set(DETOUR_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../dep/recastnavigation/Detour)
add_executable(NavMeshLifetimeTest NavMeshLifetimeTest.cpp
    ${DETOUR_DIR}/Source/DetourAlloc.cpp ${DETOUR_DIR}/Source/DetourAssert.cpp
    ${DETOUR_DIR}/Source/DetourCommon.cpp ${DETOUR_DIR}/Source/DetourNavMesh.cpp
    ${DETOUR_DIR}/Source/DetourNavMeshBuilder.cpp ${DETOUR_DIR}/Source/DetourNavMeshQuery.cpp
    ${DETOUR_DIR}/Source/DetourNode.cpp)
target_compile_features(NavMeshLifetimeTest PRIVATE cxx_std_17)
target_compile_definitions(NavMeshLifetimeTest PRIVATE DT_VIRTUAL_QUERYFILTER=1)
target_include_directories(NavMeshLifetimeTest PRIVATE ${DETOUR_DIR}/Include)
target_link_libraries(NavMeshLifetimeTest PRIVATE Threads::Threads)
if(MSVC)
    target_compile_options(NavMeshLifetimeTest PRIVATE /EHsc)
endif()
add_test(NAME NavMeshLifetimeTest COMMAND NavMeshLifetimeTest)
set_tests_properties(NavMeshLifetimeTest PROPERTIES TIMEOUT 90)

# --- AuctionBot / market tests (PR #34, appended to the ManTech suite) ---
set(AHBOT_ROOT "${CORE_ROOT}/modules/mod-playerbots/src/ahbot")
extract_native_fragment("${TRAVEL_ROOT}/PlayerbotAI.cpp"
  "bool ChatHandler::HandleAhBotCommand(char* args)" "float PlayerbotAI::GetRange" NativeAhBotChatDispatch.inc)
extract_native_fragment("${AHBOT_ROOT}/AhBot.cpp"
  "bool AhBot::HandleAhBotCommand(ChatHandler* handler, char const* args)" "uint32 AhBot::auctionIds" NativeAhBotModuleDispatch.inc)
extract_native_fragment("${AHBOT_ROOT}/AhBot.h"
  "namespace ahbot" "#define auctionbot" NativeMarketDeclarations.inc)
extract_native_fragment("${AHBOT_ROOT}/AhBot.cpp"
  "bool ReadNumbers(" "bool QueryIds(" NativeMarketParser.inc)
extract_native_fragment("${AHBOT_ROOT}/AhBot.cpp"
  "bool AhBot::IsBotOwner(" "void AhBot::Status(" NativeMarketWork.inc)
extract_native_fragment("${AHBOT_ROOT}/AhBot.cpp"
  "bool AhBot::HandleCommand(" "// End market command implementation." NativeMarketCommands.inc)
extract_native_fragment("${CORE_ROOT}/src/game/AuctionHouse/AuctionHouseMgr.cpp"
  "void AuctionHouseObject::ExpireAuction(" "void AuctionHouseObject::Update()" NativeMarketExpiry.inc)
extract_native_fragment("${CORE_ROOT}/src/game/AuctionHouse/AuctionHouseMgr.cpp"
  "void AuctionHouseMgr::SendAuctionOutbiddedMail(" "void AuctionHouseObject::BuildListBidderItems(" NativeMarketRefund.inc)
extract_native_fragment("${CORE_ROOT}/src/game/AuctionHouse/AuctionHouseMgr.cpp"
  "std::vector<AuctionSnapshot> AuctionHouseObject::GetAuctionsSnapshotPage(" "AuctionHouseMgr::AuctionHouseMgr()" NativeMarketPage.inc)
extract_native_fragment("${CORE_ROOT}/src/game/AuctionHouse/AuctionHouseMgr.cpp"
  "void AuctionHouseMgr::SendAuctionWonMail(" "void AuctionHouseMgr::SendAuctionSuccessfulMail(" NativeAuctionWonMail.inc)
extract_native_fragment("${CORE_ROOT}/src/game/AuctionHouse/AuctionHouseMgr.cpp"
  "void AuctionHouseMgr::SendAuctionExpiredMail(" "AuctionHouseObject* AuctionHouseMgr::MakeNewAuctionHouseObject()" NativeAuctionExpiredMail.inc)
extract_native_fragment("${CORE_ROOT}/src/game/Handlers/AuctionHouseHandler.cpp"
  "void WorldSession::HandleAuctionRemoveItem(" "class AuctionHouseClientQueryTask" NativeAuctionCancel.inc)
foreach(test AhBotChatDispatchTest AhBotMarketTest AuctionSettlementTest AuctionItemHandoffTest)
  add_executable(${test} ${test}.cpp)
  target_compile_features(${test} PRIVATE cxx_std_17)
  target_include_directories(${test} PRIVATE "${CMAKE_CURRENT_BINARY_DIR}" "${AHBOT_ROOT}" "${CORE_ROOT}/src/shared")
  if(MSVC)
    target_compile_options(${test} PRIVATE /EHsc)
  endif()
  add_test(NAME ${test} COMMAND ${test})
  set_tests_properties(${test} PROPERTIES TIMEOUT 30)
endforeach()
