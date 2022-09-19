# server_base.cmake

include_guard(GLOBAL)

set(SERVER_BASE_DIR ${CMAKE_CURRENT_LIST_DIR})
set(
	SERVER_BASE_SOURCE_FILES

	# Replay
	"${SERVER_BASE_DIR}/gamedll_replay.cpp"
	"${SRCDIR}/common/replay/ireplaysessionrecorder.h"

	"$<${BUILD_REPLAY}:${SRCDIR}/game/shared/replay_gamestats_shared.cpp>"
	"$<${BUILD_REPLAY}:${SRCDIR}/game/shared/replay_gamestats_shared.h>"

	# Source Files
	"${SRCDIR}/game/shared/achievement_saverestore.cpp"
	"${SRCDIR}/game/shared/achievement_saverestore.h"
	"${SRCDIR}/game/shared/achievementmgr.cpp"
	"${SRCDIR}/game/shared/achievementmgr.h"
	"${SRCDIR}/game/shared/achievements_hlx.cpp"
	"${SRCDIR}/game/shared/activitylist.cpp"
	"${SRCDIR}/game/shared/activitylist.h"
	"${SERVER_BASE_DIR}/ai_activity.cpp"
	"${SRCDIR}/game/shared/ai_activity.h"
	"${SERVER_BASE_DIR}/ai_baseactor.cpp"
	"${SERVER_BASE_DIR}/ai_baseactor.h"
	"${SERVER_BASE_DIR}/ai_basehumanoid.cpp"
	"${SERVER_BASE_DIR}/ai_basehumanoid.h"
	"${SERVER_BASE_DIR}/ai_basenpc.cpp"
	"${SERVER_BASE_DIR}/ai_basenpc.h"
	"${SERVER_BASE_DIR}/ai_basenpc_flyer.cpp"
	"${SERVER_BASE_DIR}/ai_basenpc_flyer.h"
	"${SERVER_BASE_DIR}/ai_basenpc_flyer_new.cpp"
	"${SERVER_BASE_DIR}/ai_basenpc_flyer_new.h"
	"${SERVER_BASE_DIR}/ai_basenpc_movement.cpp"
	"${SERVER_BASE_DIR}/ai_basenpc_physicsflyer.cpp"
	"${SERVER_BASE_DIR}/ai_basenpc_physicsflyer.h"
	"${SERVER_BASE_DIR}/ai_basenpc_schedule.cpp"
	"${SERVER_BASE_DIR}/ai_basenpc_squad.cpp"
	"${SERVER_BASE_DIR}/ai_behavior.cpp"
	"${SERVER_BASE_DIR}/ai_behavior.h"
	"${SERVER_BASE_DIR}/ai_behavior_assault.cpp"
	"${SERVER_BASE_DIR}/ai_behavior_assault.h"
	"${SERVER_BASE_DIR}/ai_behavior_fear.cpp"
	"${SERVER_BASE_DIR}/ai_behavior_fear.h"
	"${SERVER_BASE_DIR}/ai_behavior_follow.cpp"
	"${SERVER_BASE_DIR}/ai_behavior_follow.h"
	"${SERVER_BASE_DIR}/ai_behavior_lead.cpp"
	"${SERVER_BASE_DIR}/ai_behavior_lead.h"
	"${SERVER_BASE_DIR}/ai_behavior_rappel.cpp"
	"${SERVER_BASE_DIR}/ai_behavior_rappel.h"
	"${SERVER_BASE_DIR}/ai_behavior_standoff.cpp"
	"${SERVER_BASE_DIR}/ai_behavior_standoff.h"
	"${SERVER_BASE_DIR}/ai_blended_movement.cpp"
	"${SERVER_BASE_DIR}/ai_blended_movement.h"
	"${SERVER_BASE_DIR}/ai_component.h"
	"${SERVER_BASE_DIR}/ai_concommands.cpp"
	"${SERVER_BASE_DIR}/ai_condition.cpp"
	"${SERVER_BASE_DIR}/ai_condition.h"
	"${SERVER_BASE_DIR}/AI_Criteria.cpp"
	"${SERVER_BASE_DIR}/AI_Criteria.h"
	"${SERVER_BASE_DIR}/ai_debug.h"
	"${SRCDIR}/game/shared/ai_debug_shared.h"
	"${SERVER_BASE_DIR}/ai_default.cpp"
	"${SERVER_BASE_DIR}/ai_default.h"
	"${SERVER_BASE_DIR}/ai_dynamiclink.cpp"
	"${SERVER_BASE_DIR}/ai_dynamiclink.h"
	"${SERVER_BASE_DIR}/ai_event.cpp"
	"${SERVER_BASE_DIR}/ai_goalentity.cpp"
	"${SERVER_BASE_DIR}/ai_goalentity.h"
	"${SERVER_BASE_DIR}/ai_hint.cpp"
	"${SERVER_BASE_DIR}/ai_hint.h"
	"${SERVER_BASE_DIR}/ai_hull.cpp"
	"${SERVER_BASE_DIR}/ai_hull.h"
	"${SERVER_BASE_DIR}/ai_initutils.cpp"
	"${SERVER_BASE_DIR}/ai_initutils.h"
	"${SERVER_BASE_DIR}/AI_Interest_Target.cpp"
	"${SERVER_BASE_DIR}/AI_Interest_Target.h"
	"${SERVER_BASE_DIR}/ai_link.cpp"
	"${SERVER_BASE_DIR}/ai_link.h"
	"${SERVER_BASE_DIR}/ai_localnavigator.cpp"
	"${SERVER_BASE_DIR}/ai_localnavigator.h"
	"${SERVER_BASE_DIR}/ai_looktarget.cpp"
	"${SERVER_BASE_DIR}/ai_looktarget.h"
	"${SERVER_BASE_DIR}/ai_memory.cpp"
	"${SERVER_BASE_DIR}/ai_memory.h"
	"${SERVER_BASE_DIR}/ai_motor.cpp"
	"${SERVER_BASE_DIR}/ai_motor.h"
	"${SERVER_BASE_DIR}/ai_moveprobe.cpp"
	"${SERVER_BASE_DIR}/ai_moveprobe.h"
	"${SERVER_BASE_DIR}/ai_moveshoot.cpp"
	"${SERVER_BASE_DIR}/ai_moveshoot.h"
	"${SERVER_BASE_DIR}/ai_movesolver.cpp"
	"${SERVER_BASE_DIR}/ai_movesolver.h"
	"${SERVER_BASE_DIR}/ai_movetypes.h"
	"${SERVER_BASE_DIR}/ai_namespaces.cpp"
	"${SERVER_BASE_DIR}/ai_namespaces.h"
	"${SERVER_BASE_DIR}/ai_navgoaltype.h"
	"${SERVER_BASE_DIR}/ai_navigator.cpp"
	"${SERVER_BASE_DIR}/ai_navigator.h"
	"${SERVER_BASE_DIR}/ai_navtype.h"
	"${SERVER_BASE_DIR}/ai_network.cpp"
	"${SERVER_BASE_DIR}/ai_network.h"
	"${SERVER_BASE_DIR}/ai_networkmanager.cpp"
	"${SERVER_BASE_DIR}/ai_networkmanager.h"
	"${SERVER_BASE_DIR}/ai_node.cpp"
	"${SERVER_BASE_DIR}/ai_node.h"
	"${SERVER_BASE_DIR}/ai_npcstate.h"
	"${SERVER_BASE_DIR}/ai_obstacle_type.h"
	"${SERVER_BASE_DIR}/ai_pathfinder.cpp"
	"${SERVER_BASE_DIR}/ai_pathfinder.h"
	"${SERVER_BASE_DIR}/ai_planesolver.cpp"
	"${SERVER_BASE_DIR}/ai_planesolver.h"
	"${SERVER_BASE_DIR}/ai_playerally.cpp"
	"${SERVER_BASE_DIR}/ai_playerally.h"
	"${SERVER_BASE_DIR}/AI_ResponseSystem.cpp"
	"${SERVER_BASE_DIR}/AI_ResponseSystem.h"
	"${SERVER_BASE_DIR}/ai_route.cpp"
	"${SERVER_BASE_DIR}/ai_route.h"
	"${SERVER_BASE_DIR}/ai_routedist.h"
	"${SERVER_BASE_DIR}/ai_saverestore.cpp"
	"${SERVER_BASE_DIR}/ai_saverestore.h"
	"${SERVER_BASE_DIR}/ai_schedule.cpp"
	"${SERVER_BASE_DIR}/ai_schedule.h"
	"${SERVER_BASE_DIR}/ai_scriptconditions.cpp"
	"${SERVER_BASE_DIR}/ai_scriptconditions.h"
	"${SERVER_BASE_DIR}/ai_senses.cpp"
	"${SERVER_BASE_DIR}/ai_senses.h"
	"${SERVER_BASE_DIR}/ai_sentence.cpp"
	"${SERVER_BASE_DIR}/ai_sentence.h"
	"${SERVER_BASE_DIR}/ai_speech.cpp"
	"${SERVER_BASE_DIR}/ai_speech.h"
	"${SERVER_BASE_DIR}/ai_speechfilter.cpp"
	"${SERVER_BASE_DIR}/ai_speechfilter.h"
	"${SERVER_BASE_DIR}/ai_squad.cpp"
	"${SERVER_BASE_DIR}/ai_squad.h"
	"${SERVER_BASE_DIR}/ai_squadslot.cpp"
	"${SERVER_BASE_DIR}/ai_squadslot.h"
	"${SERVER_BASE_DIR}/ai_tacticalservices.cpp"
	"${SERVER_BASE_DIR}/ai_tacticalservices.h"
	"${SERVER_BASE_DIR}/ai_task.cpp"
	"${SERVER_BASE_DIR}/ai_task.h"
	"${SERVER_BASE_DIR}/ai_trackpather.cpp"
	"${SERVER_BASE_DIR}/ai_trackpather.h"
	"${SERVER_BASE_DIR}/ai_utils.cpp"
	"${SERVER_BASE_DIR}/ai_utils.h"
	"${SERVER_BASE_DIR}/ai_waypoint.cpp"
	"${SERVER_BASE_DIR}/ai_waypoint.h"
	"${SRCDIR}/game/shared/ammodef.cpp"
	"${SRCDIR}/game/shared/animation.cpp"
	"${SRCDIR}/game/shared/animation.h"
	"${SRCDIR}/game/shared/apparent_velocity_helper.h"
	"${SRCDIR}/game/shared/base_playeranimstate.cpp"
	"${SERVER_BASE_DIR}/base_transmit_proxy.cpp"
	"${SRCDIR}/game/shared/baseachievement.cpp"
	"${SRCDIR}/game/shared/baseachievement.h"
	"${SERVER_BASE_DIR}/baseanimating.cpp"
	"${SERVER_BASE_DIR}/baseanimating.h"
	"${SERVER_BASE_DIR}/BaseAnimatingOverlay.cpp"
	"${SERVER_BASE_DIR}/BaseAnimatingOverlay.h"
	"${SERVER_BASE_DIR}/basecombatcharacter.cpp"
	"${SERVER_BASE_DIR}/basecombatcharacter.h"
	"${SRCDIR}/game/shared/basecombatcharacter_shared.cpp"
	"${SERVER_BASE_DIR}/basecombatweapon.cpp"
	"${SERVER_BASE_DIR}/basecombatweapon.h"
	"${SRCDIR}/game/shared/basecombatweapon_shared.cpp"
	"${SRCDIR}/game/shared/basecombatweapon_shared.h"
	"${SERVER_BASE_DIR}/baseentity.cpp"
	"${SERVER_BASE_DIR}/baseentity.h"
	"${SRCDIR}/game/shared/baseentity_shared.cpp"
	"${SRCDIR}/game/shared/baseentity_shared.h"
	"${SERVER_BASE_DIR}/baseflex.cpp"
	"${SERVER_BASE_DIR}/baseflex.h"
	"${SRCDIR}/game/shared/basegrenade_shared.cpp"
	"${SRCDIR}/game/shared/basegrenade_shared.h"
	"${SERVER_BASE_DIR}/basemultiplayerplayer.cpp"
	"${SERVER_BASE_DIR}/basemultiplayerplayer.h"
	"${SRCDIR}/game/shared/baseparticleentity.cpp"
	"${SRCDIR}/game/shared/baseparticleentity.h"
	"${SRCDIR}/game/shared/baseplayer_shared.cpp"
	"${SRCDIR}/game/shared/baseplayer_shared.h"
	"${SRCDIR}/game/shared/baseprojectile.cpp"
	"${SRCDIR}/game/shared/baseprojectile.h"
	"${SERVER_BASE_DIR}/BasePropDoor.h"
	"${SERVER_BASE_DIR}/basetoggle.h"
	"${SERVER_BASE_DIR}/baseviewmodel.cpp"
	"${SERVER_BASE_DIR}/baseviewmodel.h"
	"${SRCDIR}/game/shared/baseviewmodel_shared.cpp"
	"${SRCDIR}/game/shared/baseviewmodel_shared.h"
	"${SRCDIR}/game/shared/beam_shared.cpp"
	"${SRCDIR}/game/shared/beam_shared.h"
	"${SERVER_BASE_DIR}/bitstring.cpp"
	"${SERVER_BASE_DIR}/bitstring.h"
	"${SERVER_BASE_DIR}/bmodels.cpp"
	"${SRCDIR}/public/bone_setup.h"
	"${SERVER_BASE_DIR}/buttons.cpp"
	"${SERVER_BASE_DIR}/buttons.h"
	"${SERVER_BASE_DIR}/cbase.cpp"
	"${SERVER_BASE_DIR}/cbase.h"
	"${SRCDIR}/game/shared/choreoactor.h"
	"${SRCDIR}/game/shared/choreochannel.h"
	"${SRCDIR}/game/shared/choreoevent.h"
	"${SRCDIR}/game/shared/choreoscene.h"
	"${SERVER_BASE_DIR}/client.cpp"
	"${SERVER_BASE_DIR}/client.h"
	"${SRCDIR}/game/shared/collisionproperty.cpp"
	"${SRCDIR}/game/shared/collisionproperty.h"
	"${SRCDIR}/public/collisionutils.h"
	"${SERVER_BASE_DIR}/colorcorrection.cpp"
	"${SERVER_BASE_DIR}/colorcorrectionvolume.cpp"
	"${SERVER_BASE_DIR}/CommentarySystem.cpp"
	"${SERVER_BASE_DIR}/controlentities.cpp"
	"${SERVER_BASE_DIR}/cplane.cpp"
	"${SERVER_BASE_DIR}/CRagdollMagnet.cpp"
	"${SERVER_BASE_DIR}/CRagdollMagnet.h"
	"${SERVER_BASE_DIR}/damagemodifier.cpp"
	"${SRCDIR}/game/shared/death_pose.cpp"
	"${SRCDIR}/game/shared/debugoverlay_shared.cpp"
	"${SRCDIR}/game/shared/debugoverlay_shared.h"
	"${SRCDIR}/game/shared/decals.cpp"
	"${SERVER_BASE_DIR}/doors.cpp"
	"${SERVER_BASE_DIR}/doors.h"
	"${SERVER_BASE_DIR}/dynamiclight.cpp"
	"${SRCDIR}/public/edict.h"
	"${SRCDIR}/public/editor_sendcommand.h"
	"${SRCDIR}/game/shared/effect_color_tables.h"
	"${SRCDIR}/game/shared/effect_dispatch_data.cpp"
	"${SERVER_BASE_DIR}/effects.cpp"
	"${SERVER_BASE_DIR}/effects.h"
	"${SERVER_BASE_DIR}/EffectsServer.cpp"
	"${SRCDIR}/game/shared/ehandle.cpp"
	"${SRCDIR}/public/eiface.h"
	"${SERVER_BASE_DIR}/enginecallback.h"
	"${SERVER_BASE_DIR}/entityapi.h"
	"${SERVER_BASE_DIR}/entityblocker.cpp"
	"${SERVER_BASE_DIR}/entityblocker.h"
	"${SERVER_BASE_DIR}/EntityDissolve.cpp"
	"${SERVER_BASE_DIR}/EntityDissolve.h"
	"${SERVER_BASE_DIR}/EntityFlame.cpp"
	"${SERVER_BASE_DIR}/entityinput.h"
	"${SERVER_BASE_DIR}/entitylist.cpp"
	"${SERVER_BASE_DIR}/entitylist.h"
	"${SRCDIR}/game/shared/entitylist_base.cpp"
	"${SERVER_BASE_DIR}/entityoutput.h"
	"${SERVER_BASE_DIR}/EntityParticleTrail.cpp"
	"${SERVER_BASE_DIR}/EntityParticleTrail.h"
	"${SRCDIR}/game/shared/EntityParticleTrail_Shared.cpp"
	"${SRCDIR}/game/shared/entityparticletrail_shared.h"
	"${SERVER_BASE_DIR}/env_debughistory.cpp"
	"${SERVER_BASE_DIR}/env_debughistory.h"
	"${SRCDIR}/game/shared/env_detail_controller.cpp"
	"${SERVER_BASE_DIR}/env_effectsscript.cpp"
	"${SERVER_BASE_DIR}/env_entity_maker.cpp"
	"${SERVER_BASE_DIR}/env_particlescript.cpp"
	"${SERVER_BASE_DIR}/env_player_surface_trigger.cpp"
	"${SERVER_BASE_DIR}/env_player_surface_trigger.h"
	"${SERVER_BASE_DIR}/env_projectedtexture.cpp"
	"${SERVER_BASE_DIR}/env_screenoverlay.cpp"
	"${SERVER_BASE_DIR}/env_texturetoggle.cpp"
	"${SERVER_BASE_DIR}/env_tonemap_controller.cpp"
	"${SRCDIR}/game/shared/env_wind_shared.cpp"
	"${SRCDIR}/game/shared/env_wind_shared.h"
	"${SERVER_BASE_DIR}/env_zoom.cpp"
	"${SERVER_BASE_DIR}/env_zoom.h"
	"${SERVER_BASE_DIR}/EnvBeam.cpp"
	"${SERVER_BASE_DIR}/EnvFade.cpp"
	"${SERVER_BASE_DIR}/EnvHudHint.cpp"
	"${SERVER_BASE_DIR}/EnvLaser.cpp"
	"${SERVER_BASE_DIR}/EnvLaser.h"
	"${SERVER_BASE_DIR}/EnvMessage.cpp"
	"${SERVER_BASE_DIR}/EnvMessage.h"
	"${SERVER_BASE_DIR}/envmicrophone.cpp"
	"${SERVER_BASE_DIR}/envmicrophone.h"
	"${SERVER_BASE_DIR}/EnvShake.cpp"
	"${SERVER_BASE_DIR}/EnvSpark.cpp"
	"${SERVER_BASE_DIR}/envspark.h"
	"${SRCDIR}/public/event_flags.h"
	"${SERVER_BASE_DIR}/event_tempentity_tester.h"
	"${SRCDIR}/game/shared/eventlist.cpp"
	"${SRCDIR}/game/shared/eventlist.h"
	"${SERVER_BASE_DIR}/EventLog.cpp"
	"${SERVER_BASE_DIR}/eventqueue.h"
	"${SERVER_BASE_DIR}/explode.cpp"
	"${SERVER_BASE_DIR}/explode.h"
	"${SERVER_BASE_DIR}/filters.cpp"
	"${SERVER_BASE_DIR}/filters.h"
	"${SERVER_BASE_DIR}/fire.cpp"
	"${SERVER_BASE_DIR}/fire.h"
	"${SERVER_BASE_DIR}/fire_smoke.cpp"
	"${SERVER_BASE_DIR}/fire_smoke.h"
	"${SERVER_BASE_DIR}/fish.cpp"
	"${SERVER_BASE_DIR}/fish.h"
	"${SERVER_BASE_DIR}/fogcontroller.cpp"
	"${SERVER_BASE_DIR}/fourwheelvehiclephysics.cpp"
	"${SERVER_BASE_DIR}/fourwheelvehiclephysics.h"
	"${SERVER_BASE_DIR}/func_areaportal.cpp"
	"${SERVER_BASE_DIR}/func_areaportalbase.cpp"
	"${SERVER_BASE_DIR}/func_areaportalbase.h"
	"${SERVER_BASE_DIR}/func_areaportalwindow.cpp"
	"${SERVER_BASE_DIR}/func_areaportalwindow.h"
	"${SERVER_BASE_DIR}/func_break.cpp"
	"${SERVER_BASE_DIR}/func_break.h"
	"${SERVER_BASE_DIR}/func_breakablesurf.cpp"
	"${SERVER_BASE_DIR}/func_breakablesurf.h"
	"${SERVER_BASE_DIR}/func_dust.cpp"
	"${SRCDIR}/game/shared/func_dust_shared.h"
	"${SRCDIR}/game/shared/func_ladder.cpp"
	"${SERVER_BASE_DIR}/func_ladder_endpoint.cpp"
	"${SERVER_BASE_DIR}/func_lod.cpp"
	"${SERVER_BASE_DIR}/func_movelinear.cpp"
	"${SERVER_BASE_DIR}/func_movelinear.h"
	"${SERVER_BASE_DIR}/func_occluder.cpp"
	"${SERVER_BASE_DIR}/func_reflective_glass.cpp"
	"${SERVER_BASE_DIR}/func_smokevolume.cpp"
	"${SERVER_BASE_DIR}/game.cpp"
	"${SERVER_BASE_DIR}/game.h"
	"${SERVER_BASE_DIR}/game_ui.cpp"
	"${SERVER_BASE_DIR}/gameinterface.cpp"
	"${SERVER_BASE_DIR}/gameinterface.h"
	"${SRCDIR}/game/shared/gamemovement.cpp"
	"${SRCDIR}/game/shared/gamemovement.h"
	"${SRCDIR}/game/shared/gamerules.cpp"
	"${SRCDIR}/game/shared/gamerules.h"
	"${SRCDIR}/game/shared/gamerules_register.cpp"
	"${SRCDIR}/game/shared/GameStats.cpp"
	"${SRCDIR}/game/shared/gamestats.h"
	"${SRCDIR}/game/shared/gamestringpool.cpp"
	"${SRCDIR}/game/shared/gamestringpool.h"
	"${SERVER_BASE_DIR}/gametrace_dll.cpp"
	"${SRCDIR}/game/shared/gamevars_shared.cpp"
	"${SRCDIR}/game/shared/gamevars_shared.h"
	"${SERVER_BASE_DIR}/gameweaponmanager.cpp"
	"${SERVER_BASE_DIR}/gameweaponmanager.h"
	"${SERVER_BASE_DIR}/genericactor.cpp"
	"${SERVER_BASE_DIR}/genericmonster.cpp"
	"${SERVER_BASE_DIR}/gib.cpp"
	"${SERVER_BASE_DIR}/gib.h"
	"${SERVER_BASE_DIR}/globals.cpp"
	"${SERVER_BASE_DIR}/globalstate.cpp"
	"${SERVER_BASE_DIR}/globalstate.h"
	"${SERVER_BASE_DIR}/globalstate_private.h"
	"${SERVER_BASE_DIR}/guntarget.cpp"
	"${SERVER_BASE_DIR}/h_ai.cpp"
	"${SERVER_BASE_DIR}/hierarchy.cpp"
	"${SERVER_BASE_DIR}/hierarchy.h"
	"${SRCDIR}/common/hl2orange.spa.h"
	"${SERVER_BASE_DIR}/hltvdirector.cpp"
	"${SERVER_BASE_DIR}/hltvdirector.h"
	"${SRCDIR}/game/shared/hintmessage.cpp"
	"${SRCDIR}/game/shared/hintmessage.h"
	"${SRCDIR}/game/shared/hintsystem.cpp"
	"${SRCDIR}/game/shared/hintsystem.h"
	"${SRCDIR}/game/shared/ichoreoeventcallback.h"
	"${SRCDIR}/game/shared/igamesystem.cpp"
	"${SRCDIR}/game/shared/igamesystem.h"
	"${SERVER_BASE_DIR}/info_camera_link.cpp"
	"${SERVER_BASE_DIR}/info_camera_link.h"
	"${SERVER_BASE_DIR}/info_overlay_accessor.cpp"
	"${SERVER_BASE_DIR}/init_factory.h"
	"${SERVER_BASE_DIR}/intermission.cpp"
	"${SRCDIR}/public/interpolatortypes.h"
	"${SRCDIR}/game/shared/interval.h"
	"${SRCDIR}/public/iregistry.h"
	"${SRCDIR}/game/shared/iscenetokenprocessor.h"
	"${SERVER_BASE_DIR}/iservervehicle.h"
	"${SERVER_BASE_DIR}/item_world.cpp"
	"${SERVER_BASE_DIR}/items.h"
	"${SRCDIR}/public/ivoiceserver.h"
	"${SRCDIR}/public/keyframe/keyframe.h"
	"${SERVER_BASE_DIR}/lightglow.cpp"
	"${SERVER_BASE_DIR}/lights.cpp"
	"${SERVER_BASE_DIR}/lights.h"
	"${SERVER_BASE_DIR}/locksounds.h"
	"${SERVER_BASE_DIR}/logic_measure_movement.cpp"
	"${SERVER_BASE_DIR}/logic_navigation.cpp"
	"${SERVER_BASE_DIR}/logicauto.cpp"
	"${SERVER_BASE_DIR}/logicentities.cpp"
	"${SERVER_BASE_DIR}/logicrelay.cpp"
	"${SERVER_BASE_DIR}/mapentities.cpp"
	"${SRCDIR}/game/shared/mapentities_shared.cpp"
	"${SERVER_BASE_DIR}/maprules.cpp"
	"${SERVER_BASE_DIR}/maprules.h"
	"${SERVER_BASE_DIR}/MaterialModifyControl.cpp"
	"${SRCDIR}/public/mathlib/mathlib.h"
	"${SERVER_BASE_DIR}/message_entity.cpp"
	"${SRCDIR}/public/model_types.h"
	"${SERVER_BASE_DIR}/modelentities.cpp"
	"${SRCDIR}/game/shared/ModelSoundsCache.cpp"
	"${SERVER_BASE_DIR}/movehelper_server.cpp"
	"${SERVER_BASE_DIR}/movehelper_server.h"
	"${SERVER_BASE_DIR}/movement.cpp"
	"${SRCDIR}/game/shared/movevars_shared.cpp"
	"${SERVER_BASE_DIR}/movie_explosion.h"
	"${SRCDIR}/game/shared/multiplay_gamerules.cpp"
	"${SRCDIR}/game/shared/multiplay_gamerules.h"
	"${SERVER_BASE_DIR}/ndebugoverlay.cpp"
	"${SERVER_BASE_DIR}/ndebugoverlay.h"
	"${SERVER_BASE_DIR}/networkstringtable_gamedll.h"
	"${SRCDIR}/public/networkstringtabledefs.h"
	"${SERVER_BASE_DIR}/npc_vehicledriver.cpp"
	"${SRCDIR}/game/shared/obstacle_pushaway.cpp"
	"${SRCDIR}/game/shared/obstacle_pushaway.h"
	"${SERVER_BASE_DIR}/particle_fire.h"
	"${SERVER_BASE_DIR}/particle_light.cpp"
	"${SERVER_BASE_DIR}/particle_light.h"
	"${SRCDIR}/game/shared/particle_parse.cpp"
	"${SRCDIR}/game/shared/particle_parse.h"
	"${SERVER_BASE_DIR}/particle_smokegrenade.h"
	"${SERVER_BASE_DIR}/particle_system.cpp"
	"${SRCDIR}/game/shared/particlesystemquery.cpp"
	"${SERVER_BASE_DIR}/pathcorner.cpp"
	"${SERVER_BASE_DIR}/pathtrack.cpp"
	"${SERVER_BASE_DIR}/pathtrack.h"
	"${SRCDIR}/public/vphysics/performance.h"
	"${SERVER_BASE_DIR}/phys_controller.cpp"
	"${SERVER_BASE_DIR}/phys_controller.h"
	"${SERVER_BASE_DIR}/physconstraint.cpp"
	"${SERVER_BASE_DIR}/physconstraint.h"
	"${SERVER_BASE_DIR}/physics.cpp"
	"${SERVER_BASE_DIR}/physics.h"
	"${SERVER_BASE_DIR}/physics_bone_follower.cpp"
	"${SERVER_BASE_DIR}/physics_cannister.cpp"
	"${SERVER_BASE_DIR}/physics_collisionevent.h"
	"${SERVER_BASE_DIR}/physics_fx.cpp"
	"${SERVER_BASE_DIR}/physics_impact_damage.cpp"
	"${SERVER_BASE_DIR}/pushentity.h"
	"${SERVER_BASE_DIR}/physics_main.cpp"
	"${SRCDIR}/game/shared/physics_main_shared.cpp"
	"${SERVER_BASE_DIR}/physics_npc_solver.cpp"
	"${SERVER_BASE_DIR}/physics_npc_solver.h"
	"${SERVER_BASE_DIR}/physics_prop_ragdoll.cpp"
	"${SERVER_BASE_DIR}/physics_prop_ragdoll.h"
	"${SRCDIR}/game/shared/physics_saverestore.cpp"
	"${SRCDIR}/game/shared/physics_saverestore.h"
	"${SRCDIR}/game/shared/physics_shared.cpp"
	"${SRCDIR}/game/shared/physics_shared.h"
	"${SERVER_BASE_DIR}/physobj.cpp"
	"${SERVER_BASE_DIR}/physobj.h"
	"${SERVER_BASE_DIR}/player.cpp"
	"${SERVER_BASE_DIR}/player.h"
	"${SERVER_BASE_DIR}/player_command.cpp"
	"${SERVER_BASE_DIR}/player_command.h"
	"${SERVER_BASE_DIR}/player_lagcompensation.cpp"
	"${SERVER_BASE_DIR}/player_pickup.cpp"
	"${SERVER_BASE_DIR}/player_pickup.h"
	"${SERVER_BASE_DIR}/player_resource.cpp"
	"${SERVER_BASE_DIR}/player_resource.h"
	"${SERVER_BASE_DIR}/playerinfomanager.cpp"
	"${SERVER_BASE_DIR}/playerlocaldata.cpp"
	"${SERVER_BASE_DIR}/playerlocaldata.h"
	"${SERVER_BASE_DIR}/plugin_check.cpp"
	"${SRCDIR}/game/shared/point_bonusmaps_accessor.cpp"
	"${SRCDIR}/game/shared/point_bonusmaps_accessor.h"
	"${SERVER_BASE_DIR}/point_camera.cpp"
	"${SERVER_BASE_DIR}/point_camera.h"
	"${SERVER_BASE_DIR}/point_devshot_camera.cpp"
	"${SERVER_BASE_DIR}/point_playermoveconstraint.cpp"
	"${SRCDIR}/game/shared/point_posecontroller.cpp"
	"${SRCDIR}/game/shared/point_posecontroller.h"
	"${SERVER_BASE_DIR}/point_spotlight.cpp"
	"${SERVER_BASE_DIR}/point_template.cpp"
	"${SERVER_BASE_DIR}/point_template.h"
	"${SERVER_BASE_DIR}/pointanglesensor.cpp"
	"${SERVER_BASE_DIR}/PointAngularVelocitySensor.cpp"
	"${SERVER_BASE_DIR}/pointhurt.cpp"
	"${SERVER_BASE_DIR}/pointteleport.cpp"
	"${SRCDIR}/public/mathlib/polyhedron.h"
	"${SRCDIR}/game/shared/positionwatcher.h"
	"${SRCDIR}/game/shared/precache_register.cpp"
	"${SRCDIR}/game/shared/precache_register.h"
	"${SRCDIR}/game/shared/predictableid.cpp"
	"${SRCDIR}/game/shared/predictableid.h"
	"${SERVER_BASE_DIR}/props.cpp"
	"${SERVER_BASE_DIR}/props.h"
	"${SRCDIR}/game/shared/props_shared.cpp"
	"${SRCDIR}/game/shared/querycache.cpp"
	"${SERVER_BASE_DIR}/ragdoll_manager.cpp"
	"${SRCDIR}/game/shared/ragdoll_shared.cpp"
	"${SERVER_BASE_DIR}/RagdollBoogie.cpp"
	"${SERVER_BASE_DIR}/RagdollBoogie.h"
	"${SERVER_BASE_DIR}/recipientfilter.cpp"
	"${SERVER_BASE_DIR}/recipientfilter.h"
	"${SERVER_BASE_DIR}/rope.cpp"
	"${SERVER_BASE_DIR}/rope.h"
	"${SRCDIR}/game/shared/rope_helpers.cpp"
	"${SRCDIR}/public/rope_physics.h"
	"${SRCDIR}/public/rope_shared.h"
	"${SRCDIR}/game/shared/saverestore.cpp"
	"${SRCDIR}/game/shared/saverestore.h"
	"${SRCDIR}/game/shared/saverestore_bitstring.h"
	"${SERVER_BASE_DIR}/saverestore_gamedll.cpp"
	"${SRCDIR}/game/shared/saverestore_utlsymbol.h"
	"${SRCDIR}/game/shared/saverestore_utlvector.h"
	"${SRCDIR}/game/shared/SceneCache.cpp"
	"${SERVER_BASE_DIR}/sceneentity.cpp"
	"${SERVER_BASE_DIR}/sceneentity.h"
	"${SRCDIR}/game/shared/sceneentity_shared.cpp"
	"${SERVER_BASE_DIR}/scratchpad_gamedll_helpers.cpp"
	"${SERVER_BASE_DIR}/scripted.cpp"
	"${SERVER_BASE_DIR}/scripted.h"
	"${SERVER_BASE_DIR}/scriptedtarget.cpp"
	"${SERVER_BASE_DIR}/scriptedtarget.h"
	"${SRCDIR}/game/shared/scriptevent.h"
	"${SERVER_BASE_DIR}/sendproxy.cpp"
	"${SRCDIR}/game/shared/sequence_Transitioner.cpp"
	"${SRCDIR}/game/server/serverbenchmark_base.cpp"
	"${SRCDIR}/game/server/serverbenchmark_base.h"
	"${SRCDIR}/public/server_class.h"
	"${SERVER_BASE_DIR}/ServerNetworkProperty.cpp"
	"${SERVER_BASE_DIR}/ServerNetworkProperty.h"
	"${SERVER_BASE_DIR}/shadowcontrol.cpp"
	"${SRCDIR}/public/shattersurfacetypes.h"
	"${SRCDIR}/game/shared/sheetsimulator.h"
	"${SRCDIR}/public/simple_physics.h"
	"${SRCDIR}/game/shared/simtimer.cpp"
	"${SRCDIR}/game/shared/simtimer.h"
	"${SRCDIR}/game/shared/singleplay_gamerules.cpp"
	"${SRCDIR}/game/shared/singleplay_gamerules.h"
	"${SERVER_BASE_DIR}/SkyCamera.cpp"
	"${SERVER_BASE_DIR}/slideshow_display.cpp"
	"${SERVER_BASE_DIR}/sound.cpp"
	"${SRCDIR}/game/shared/SoundEmitterSystem.cpp"
	"${SERVER_BASE_DIR}/soundent.cpp"
	"${SERVER_BASE_DIR}/soundent.h"
	"${SRCDIR}/game/shared/soundenvelope.cpp"
	"${SRCDIR}/public/SoundParametersInternal.cpp"
	"${SERVER_BASE_DIR}/soundscape.cpp"
	"${SERVER_BASE_DIR}/soundscape.h"
	"${SERVER_BASE_DIR}/soundscape_system.cpp"
	"${SERVER_BASE_DIR}/spark.h"
	"${SERVER_BASE_DIR}/spotlightend.cpp"
	"${SERVER_BASE_DIR}/spotlightend.h"
	"${SRCDIR}/game/shared/Sprite.cpp"
	"${SRCDIR}/game/shared/Sprite.h"
	"${SERVER_BASE_DIR}/sprite_perfmonitor.cpp"
	"${SRCDIR}/game/shared/SpriteTrail.h"
	"${SRCDIR}/public/vphysics/stats.h"
	"${SRCDIR}/public/steam/steam_api.h"
	"${SRCDIR}/public/stringregistry.h"
	"${SRCDIR}/game/shared/studio_shared.cpp"
	"${SERVER_BASE_DIR}/subs.cpp"
	"${SERVER_BASE_DIR}/sun.cpp"
	"${SERVER_BASE_DIR}/tactical_mission.cpp"
	"${SERVER_BASE_DIR}/tactical_mission.h"
	"${SRCDIR}/game/shared/takedamageinfo.cpp"
	"${SERVER_BASE_DIR}/tanktrain.cpp"
	"${SERVER_BASE_DIR}/team.cpp"
	"${SERVER_BASE_DIR}/team.h"
	"${SRCDIR}/game/shared/teamplay_gamerules.cpp"
	"${SRCDIR}/game/shared/teamplay_gamerules.h"
	"${SRCDIR}/game/shared/tempentity.h"
	"${SERVER_BASE_DIR}/TemplateEntities.cpp"
	"${SERVER_BASE_DIR}/TemplateEntities.h"
	"${SERVER_BASE_DIR}/tempmonster.cpp"
	"${SERVER_BASE_DIR}/tesla.cpp"
	"${SRCDIR}/game/shared/test_ehandle.cpp"
	"${SERVER_BASE_DIR}/test_proxytoggle.cpp"
	"${SERVER_BASE_DIR}/test_stressentities.cpp"
	"${SERVER_BASE_DIR}/testfunctions.cpp"
	"${SERVER_BASE_DIR}/testtraceline.cpp"
	"${SERVER_BASE_DIR}/textstatsmgr.cpp"
	"${SERVER_BASE_DIR}/timedeventmgr.cpp"
	"${SERVER_BASE_DIR}/trains.cpp"
	"${SERVER_BASE_DIR}/trains.h"
	"${SERVER_BASE_DIR}/triggers.cpp"
	"${SERVER_BASE_DIR}/triggers.h"
	"${SRCDIR}/game/shared/usercmd.cpp"
	"${SERVER_BASE_DIR}/util.cpp"
	"${SERVER_BASE_DIR}/util.h"
	"${SRCDIR}/game/shared/util_shared.cpp"
	"${SERVER_BASE_DIR}/variant_t.cpp"
	"${SERVER_BASE_DIR}/vehicle_base.cpp"
	"${SERVER_BASE_DIR}/vehicle_baseserver.cpp"
	"${SERVER_BASE_DIR}/vehicle_sounds.h"
	"${SRCDIR}/game/shared/vehicle_viewblend_shared.cpp"
	"${SERVER_BASE_DIR}/vguiscreen.cpp"
	"${SERVER_BASE_DIR}/vguiscreen.h"
	"${SRCDIR}/public/mathlib/vmatrix.h"
	"${SRCDIR}/game/shared/voice_common.h"
	"${SRCDIR}/game/shared/voice_gamemgr.cpp"
	"${SRCDIR}/game/shared/voice_gamemgr.h"
	"${SERVER_BASE_DIR}/waterbullet.cpp"
	"${SERVER_BASE_DIR}/waterbullet.h"
	"${SERVER_BASE_DIR}/WaterLODControl.cpp"
	"${SERVER_BASE_DIR}/wcedit.cpp"
	"${SERVER_BASE_DIR}/wcedit.h"
	"${SRCDIR}/game/shared/weapon_parse.cpp"
	"${SRCDIR}/game/shared/weapon_parse.h"
	"${SRCDIR}/game/shared/weapon_proficiency.cpp"
	"${SRCDIR}/game/shared/weapon_proficiency.h"
	"${SERVER_BASE_DIR}/weight_button.cpp"
	"${SERVER_BASE_DIR}/world.cpp"
	"${SERVER_BASE_DIR}/world.h"
	"${SRCDIR}/game/shared/mp_shareddefs.cpp"
	"${SRCDIR}/game/shared/SharedFunctorUtils.h"
	"${SRCDIR}/game/server/vote_controller.h"
	"${SRCDIR}/game/server/vote_controller.cpp"
	# Haptics
	"${SRCDIR}/public/haptics/haptic_msgs.cpp"
	"$<${IS_WINDOWS}:${SRCDIR}/public/haptics/haptic_utils.cpp>"

	"${SRCDIR}/public/bone_setup.cpp"
	"${SRCDIR}/public/collisionutils.cpp"
	"${SRCDIR}/public/dt_send.cpp"
	"${SRCDIR}/public/dt_utlvector_common.cpp"
	"${SRCDIR}/public/dt_utlvector_send.cpp"
	"${SRCDIR}/public/editor_sendcommand.cpp"
	"${SRCDIR}/public/filesystem_helpers.cpp"
	"${SERVER_BASE_DIR}/gamehandle.cpp"
	"${SERVER_BASE_DIR}/h_export.cpp"
	"${SERVER_BASE_DIR}/init_factory.cpp"
	"${SRCDIR}/public/interpolatortypes.cpp"
	"${SRCDIR}/game/shared/interval.cpp"
	"${SRCDIR}/public/keyframe/keyframe.cpp"
	"${SRCDIR}/common/language.cpp"
	"${SRCDIR}/public/map_utils.cpp"
	"${SRCDIR}/public/networkvar.cpp"
	"${SRCDIR}/common/randoverride.cpp"
	"${SRCDIR}/public/registry.cpp"
	"${SRCDIR}/public/rope_physics.cpp"
	"${SRCDIR}/public/scratchpad3d.cpp"
	"${SRCDIR}/public/ScratchPadUtils.cpp"
	"${SRCDIR}/public/server_class.cpp"
	"${SRCDIR}/game/shared/sheetsimulator.cpp"
	"${SRCDIR}/public/simple_physics.cpp"
	"${SRCDIR}/public/stringregistry.cpp"
	"${SRCDIR}/public/studio.cpp"
	"${SERVER_BASE_DIR}/GameStats_BasicStatsFunctions.cpp"

	# Temporary Entities
	"${SERVER_BASE_DIR}/basetempentity.cpp"
	"${SERVER_BASE_DIR}/event_tempentity_tester.cpp"
	"${SERVER_BASE_DIR}/movie_explosion.cpp"
	"${SERVER_BASE_DIR}/particle_fire.cpp"
	"${SERVER_BASE_DIR}/particle_smokegrenade.cpp"
	"${SERVER_BASE_DIR}/plasma.cpp"
	"${SERVER_BASE_DIR}/plasma.h"
	"${SERVER_BASE_DIR}/smoke_trail.h"
	"${SERVER_BASE_DIR}/smokestack.cpp"
	"${SERVER_BASE_DIR}/smokestack.h"
	"${SERVER_BASE_DIR}/smoke_trail.cpp"
	"${SRCDIR}/game/shared/SpriteTrail.cpp"
	"${SERVER_BASE_DIR}/steamjet.cpp"
	"${SERVER_BASE_DIR}/steamjet.h"
	"${SERVER_BASE_DIR}/te.cpp"
	"${SERVER_BASE_DIR}/te.h"
	"${SERVER_BASE_DIR}/te_armorricochet.cpp"
	"${SERVER_BASE_DIR}/te_basebeam.cpp"
	"${SERVER_BASE_DIR}/te_basebeam.h"
	"${SERVER_BASE_DIR}/te_beamentpoint.cpp"
	"${SERVER_BASE_DIR}/te_beaments.cpp"
	"${SERVER_BASE_DIR}/te_beamfollow.cpp"
	"${SERVER_BASE_DIR}/te_beamlaser.cpp"
	"${SERVER_BASE_DIR}/te_beampoints.cpp"
	"${SERVER_BASE_DIR}/te_beamring.cpp"
	"${SERVER_BASE_DIR}/te_beamringpoint.cpp"
	"${SERVER_BASE_DIR}/te_beamspline.cpp"
	"${SERVER_BASE_DIR}/te_bloodsprite.cpp"
	"${SERVER_BASE_DIR}/te_bloodstream.cpp"
	"${SERVER_BASE_DIR}/te_breakmodel.cpp"
	"${SERVER_BASE_DIR}/te_bspdecal.cpp"
	"${SERVER_BASE_DIR}/te_bubbles.cpp"
	"${SERVER_BASE_DIR}/te_bubbletrail.cpp"
	"${SERVER_BASE_DIR}/te_clientprojectile.cpp"
	"${SERVER_BASE_DIR}/te_decal.cpp"
	"${SERVER_BASE_DIR}/te_dynamiclight.cpp"
	"${SERVER_BASE_DIR}/te_effect_dispatch.cpp"
	"${SERVER_BASE_DIR}/te_energysplash.cpp"
	"${SERVER_BASE_DIR}/te_explosion.cpp"
	"${SERVER_BASE_DIR}/te_fizz.cpp"
	"${SERVER_BASE_DIR}/te_footprintdecal.cpp"
	"${SERVER_BASE_DIR}/hl2/te_gaussexplosion.cpp"
	"${SERVER_BASE_DIR}/te_glassshatter.cpp"
	"${SERVER_BASE_DIR}/te_glowsprite.cpp"
	"${SERVER_BASE_DIR}/te_impact.cpp"
	"${SERVER_BASE_DIR}/te_killplayerattachments.cpp"
	"${SERVER_BASE_DIR}/te_largefunnel.cpp"
	"${SERVER_BASE_DIR}/te_muzzleflash.cpp"
	"${SERVER_BASE_DIR}/te_particlesystem.cpp"
	"${SERVER_BASE_DIR}/te_particlesystem.h"
	"${SERVER_BASE_DIR}/te_physicsprop.cpp"
	"${SERVER_BASE_DIR}/te_playerdecal.cpp"
	"${SERVER_BASE_DIR}/te_projecteddecal.cpp"
	"${SERVER_BASE_DIR}/te_showline.cpp"
	"${SERVER_BASE_DIR}/te_smoke.cpp"
	"${SERVER_BASE_DIR}/te_sparks.cpp"
	"${SERVER_BASE_DIR}/te_sprite.cpp"
	"${SERVER_BASE_DIR}/te_spritespray.cpp"
	"${SERVER_BASE_DIR}/te_worlddecal.cpp"
	"${SRCDIR}/game/shared/usermessages.cpp"

	# Header Files
	"${SRCDIR}/public/mathlib/amd3dx.h"
	"${SRCDIR}/game/shared/ammodef.h"
	"${SRCDIR}/game/shared/base_playeranimstate.h"
	"${SERVER_BASE_DIR}/base_transmit_proxy.h"
	"${SRCDIR}/public/basehandle.h"
	"${SERVER_BASE_DIR}/basetempentity.h"
	"${SRCDIR}/public/tier0/basetypes.h"
	"${SRCDIR}/game/shared/beam_flags.h"
	"${SRCDIR}/public/tier1/bitbuf.h"
	"${SRCDIR}/public/bitvec.h"
	"${SRCDIR}/public/bone_accessor.h"
	"${SRCDIR}/public/bspfile.h"
	"${SRCDIR}/public/bspflags.h"
	"${SRCDIR}/public/mathlib/bumpvects.h"
	"${SRCDIR}/public/tier1/characterset.h"
	"${SRCDIR}/public/tier1/checksum_md5.h"
	"${SRCDIR}/public/client_class.h"
	"${SRCDIR}/public/client_textmessage.h"
	"${SRCDIR}/public/cmodel.h"
	"${SRCDIR}/public/vphysics/collision_set.h"
	"${SRCDIR}/public/Color.h"
	"${SRCDIR}/public/tier0/commonmacros.h"
	"${SRCDIR}/public/mathlib/compressed_light_cube.h"
	"${SRCDIR}/public/mathlib/compressed_vector.h"
	"${SRCDIR}/public/const.h"
	"${SRCDIR}/public/vphysics/constraints.h"
	"${SRCDIR}/public/coordsize.h"
	"${SERVER_BASE_DIR}/cplane.h"
	"${SERVER_BASE_DIR}/damagemodifier.h"
	"${SRCDIR}/public/datamap.h"
	"${SRCDIR}/public/tier0/dbg.h"
	"${SRCDIR}/game/shared/death_pose.h"
	"${SRCDIR}/game/shared/decals.h"
	"${SRCDIR}/public/dlight.h"
	"${SRCDIR}/public/dt_common.h"
	"${SRCDIR}/public/dt_recv.h"
	"${SRCDIR}/public/dt_send.h"
	"${SRCDIR}/public/dt_utlvector_common.h"
	"${SRCDIR}/public/dt_utlvector_send.h"
	"${SRCDIR}/game/shared/effect_dispatch_data.h"
	"${SRCDIR}/game/shared/ehandle.h"
	"${SRCDIR}/game/shared/entitydatainstantiator.h"
	"${SRCDIR}/game/shared/entitylist_base.h"
	"${SRCDIR}/game/shared/env_detail_controller.h"
	"${SERVER_BASE_DIR}/EventLog.h"
	"${SRCDIR}/game/shared/expressionsample.h"
	"${SRCDIR}/public/tier0/fasttimer.h"
	"${SRCDIR}/public/filesystem.h"
	"${SRCDIR}/public/filesystem_helpers.h"
	"${SRCDIR}/public/tier1/fmtstr.h"
	"${SERVER_BASE_DIR}/fogcontroller.h"
	"${SRCDIR}/public/vphysics/friction.h"
	"${SRCDIR}/game/shared/func_ladder.h"
	"${SRCDIR}/game/shared/gameeventdefs.h"
	"${SRCDIR}/game/shared/GameEventListener.h"
	"${SRCDIR}/game/shared/gamerules_register.h"
	"${SRCDIR}/public/gametrace.h"
	"${SERVER_BASE_DIR}/globals.h"
	"${SRCDIR}/public/globalvars_base.h"
	"${SRCDIR}/game/shared/groundlink.h"
	"${SRCDIR}/game/shared/hl2/hl2_vehicle_radar.h"
	"${SRCDIR}/public/iachievementmgr.h"
	"${SRCDIR}/public/appframework/IAppSystem.h"
	"${SRCDIR}/public/icliententity.h"
	"${SRCDIR}/public/iclientnetworkable.h"
	"${SRCDIR}/public/iclientrenderable.h"
	"${SRCDIR}/public/iclientunknown.h"
	"${SRCDIR}/public/engine/ICollideable.h"
	"${SRCDIR}/public/tier0/icommandline.h"
	"${SRCDIR}/public/icvar.h"
	"${SRCDIR}/game/shared/IEffects.h"
	"${SRCDIR}/public/engine/IEngineSound.h"
	"${SRCDIR}/public/engine/IEngineTrace.h"
	"${SRCDIR}/public/igameevents.h"
	"${SRCDIR}/game/shared/igamemovement.h"
	"${SRCDIR}/public/ihandleentity.h"
	"${SRCDIR}/public/ihltv.h"
	"${SRCDIR}/public/ihltvdirector.h"
	"${SRCDIR}/public/vstdlib/IKeyValuesSystem.h"
	"${SERVER_BASE_DIR}/ilagcompensationmanager.h"
	"${SRCDIR}/public/vgui/ILocalize.h"
	"${SRCDIR}/public/materialsystem/imaterial.h"
	"${SRCDIR}/public/materialsystem/imaterialsystem.h"
	"${SRCDIR}/public/materialsystem/imaterialvar.h"
	"${SRCDIR}/game/shared/imovehelper.h"
	"${SRCDIR}/game/shared/in_buttons.h"
	"${SRCDIR}/public/inetchannelinfo.h"
	"${SRCDIR}/game/shared/iplayeranimstate.h"
	"${SRCDIR}/game/shared/ipredictionsystem.h"
	"${SRCDIR}/public/irecipientfilter.h"
	"${SRCDIR}/public/isaverestore.h"
	"${SRCDIR}/public/iscratchpad3d.h"
	"${SRCDIR}/public/iserverentity.h"
	"${SRCDIR}/public/iservernetworkable.h"
	"${SRCDIR}/public/iserverunknown.h"
	"${SRCDIR}/public/SoundEmitterSystem/isoundemittersystembase.h"
	"${SRCDIR}/public/ispatialpartition.h"
	"${SRCDIR}/public/engine/IStaticPropMgr.h"
	"${SRCDIR}/game/shared/itempents.h"
	"${SRCDIR}/public/engine/ivdebugoverlay.h"
	"${SRCDIR}/game/shared/IVehicle.h"
	"${SRCDIR}/public/engine/ivmodelinfo.h"
	"${SRCDIR}/public/tier1/KeyValues.h"
	"${SRCDIR}/common/language.h"
	"${SRCDIR}/public/tier0/l2cache.h"
	"${SERVER_BASE_DIR}/logicrelay.h"
	"${SRCDIR}/public/map_utils.h"
	"${SERVER_BASE_DIR}/mapentities.h"
	"${SRCDIR}/game/shared/mapentities_shared.h"
	"${SRCDIR}/public/tier0/mem.h"
	"${SRCDIR}/public/tier0/memalloc.h"
	"${SRCDIR}/public/tier0/memdbgoff.h"
	"${SRCDIR}/public/tier0/memdbgon.h"
	"${SERVER_BASE_DIR}/modelentities.h"
	"${SRCDIR}/game/shared/movevars_shared.h"
	"${SRCDIR}/public/networkvar.h"
	"${SERVER_BASE_DIR}/npc_vehicledriver.h"
	"${SRCDIR}/game/shared/npcevent.h"
	"${SRCDIR}/public/vphysics/object_hash.h"
	"${SERVER_BASE_DIR}/particle_system.h"
	"${SERVER_BASE_DIR}/physics_cannister.h"
	"${SERVER_BASE_DIR}/physics_fx.h"
	"${SERVER_BASE_DIR}/physics_impact_damage.h"
	"${SRCDIR}/public/tier0/platform.h"
	"${SRCDIR}/public/vphysics/player_controller.h"
	"${SERVER_BASE_DIR}/playerinfomanager.h"
	"${SRCDIR}/game/shared/playernet_vars.h"
	"${SRCDIR}/public/PlayerState.h"
	"${SRCDIR}/game/shared/precipitation_shared.h"
	"${SRCDIR}/game/shared/predictable_entity.h"
	"${SRCDIR}/game/shared/predictioncopy.h"
	"${SRCDIR}/public/tier1/processor_detect.h"
	"${SRCDIR}/game/shared/querycache.h"
	"${SRCDIR}/game/shared/props_shared.h"
	"${SRCDIR}/public/tier0/protected_things.h"
	"${SRCDIR}/public/vstdlib/random.h"
	"${SRCDIR}/game/shared/rope_helpers.h"
	"${SRCDIR}/game/shared/saverestore_stringtable.h"
	"${SRCDIR}/game/shared/saverestore_utlclass.h"
	"${SRCDIR}/game/shared/saverestore_utlmap.h"
	"${SRCDIR}/game/shared/saverestore_utlrbtree.h"
	"${SRCDIR}/public/saverestoretypes.h"
	"${SRCDIR}/public/scratchpad3d.h"
	"${SERVER_BASE_DIR}/scratchpad_gamedll_helpers.h"
	"${SRCDIR}/public/ScratchPadUtils.h"
	"${SERVER_BASE_DIR}/sendproxy.h"
	"${SRCDIR}/public/shake.h"
	"${SRCDIR}/game/shared/shared_classnames.h"
	"${SRCDIR}/game/shared/shareddefs.h"
	"${SRCDIR}/game/shared/sharedInterface.h"
	"${SRCDIR}/game/shared/shot_manipulator.h"
	"${SERVER_BASE_DIR}/SkyCamera.h"
	"${SRCDIR}/public/soundchars.h"
	"${SRCDIR}/game/shared/soundenvelope.h"
	"${SRCDIR}/public/soundflags.h"
	"${SERVER_BASE_DIR}/soundscape_system.h"
	"${SRCDIR}/public/stdstring.h"
	"${SRCDIR}/public/string_t.h"
	"${SRCDIR}/public/tier1/stringpool.h"
	"${SRCDIR}/public/tier1/strtools.h"
	"${SRCDIR}/public/studio.h"
	"${SRCDIR}/game/shared/sun_shared.h"
	"${SRCDIR}/game/shared/takedamageinfo.h"
	"${SERVER_BASE_DIR}/te_effect_dispatch.h"
	"${SERVER_BASE_DIR}/tesla.h"
	"${SERVER_BASE_DIR}/test_stressentities.h"
	"${SERVER_BASE_DIR}/textstatsmgr.h"
	"${SRCDIR}/public/texture_group_names.h"
	"${SERVER_BASE_DIR}/timedeventmgr.h"
	"${SRCDIR}/game/shared/usercmd.h"
	"${SRCDIR}/game/shared/usermessages.h"
	"${SRCDIR}/game/shared/util_shared.h"
	"${SRCDIR}/public/UtlCachedFileData.h"
	"${SRCDIR}/public/tier1/utldict.h"
	"${SRCDIR}/public/tier1/utlfixedmemory.h"
	"${SRCDIR}/public/tier1/utlhash.h"
	"${SRCDIR}/public/tier1/utllinkedlist.h"
	"${SRCDIR}/public/tier1/utlmap.h"
	"${SRCDIR}/public/tier1/utlmemory.h"
	"${SRCDIR}/public/tier1/utlmultilist.h"
	"${SRCDIR}/public/tier1/utlpriorityqueue.h"
	"${SRCDIR}/public/tier1/utlrbtree.h"
	"${SRCDIR}/public/tier1/UtlSortVector.h"
	"${SRCDIR}/public/tier1/utlvector.h"
	"${SRCDIR}/public/vallocator.h"
	"${SERVER_BASE_DIR}/variant_t.h"
	"${SRCDIR}/public/vcollide.h"
	"${SRCDIR}/public/vcollide_parse.h"
	"${SRCDIR}/public/tier0/vcr_shared.h"
	"${SRCDIR}/public/tier0/vcrmode.h"
	"${SRCDIR}/public/mathlib/vector.h"
	"${SRCDIR}/public/mathlib/vector2d.h"
	"${SRCDIR}/public/mathlib/vector4d.h"
	"${SERVER_BASE_DIR}/vehicle_base.h"
	"${SERVER_BASE_DIR}/vehicle_baseserver.h"
	"${SRCDIR}/game/shared/vehicle_viewblend_shared.h"
	"${SRCDIR}/public/vphysics/vehicles.h"
	"${SRCDIR}/public/vgui/VGUI.h"
	"${SRCDIR}/public/vphysics_interface.h"
	"${SRCDIR}/game/shared/vphysics_sound.h"
	"${SRCDIR}/public/mathlib/vplane.h"
	"${SRCDIR}/public/tier0/vprof.h"
	"${SRCDIR}/public/vstdlib/vstdlib.h"
	"${SRCDIR}/public/winlite.h"
	"${SRCDIR}/public/worldsize.h"
	"${SRCDIR}/public/zip_uncompressed.h"
	"${SRCDIR}/game/shared/mp_shareddefs.h"
	"${SRCDIR}/game/shared/econ/ihasowner.h"

	# Haptics
	"$<${IS_WINDOWS}:${SRCDIR}/public/haptics/haptic_utils.h>"

	# Tools Framework
	"${SERVER_BASE_DIR}/entity_tools_server.cpp"
	"${SERVER_BASE_DIR}/toolframework_server.cpp"
	"${SERVER_BASE_DIR}/toolframework_server.h"
)

set_source_files_properties(
	"${SRCDIR}/public/bone_setup.cpp"
	"${SRCDIR}/public/collisionutils.cpp"
	"${SRCDIR}/public/dt_send.cpp"
	"${SRCDIR}/public/dt_utlvector_common.cpp"
	"${SRCDIR}/public/dt_utlvector_send.cpp"
	"${SRCDIR}/public/editor_sendcommand.cpp"
	"${SRCDIR}/public/filesystem_helpers.cpp"
	"${SERVER_BASE_DIR}/gamehandle.cpp"
	"${SERVER_BASE_DIR}/h_export.cpp"
	"${SERVER_BASE_DIR}/init_factory.cpp"
	"${SRCDIR}/public/interpolatortypes.cpp"
	"${SRCDIR}/game/shared/interval.cpp"
	"${SRCDIR}/public/keyframe/keyframe.cpp"
	"${SRCDIR}/common/language.cpp"
	"${SRCDIR}/public/map_utils.cpp"
	"${SRCDIR}/public/networkvar.cpp"
	"${SRCDIR}/common/randoverride.cpp"
	"${SRCDIR}/public/registry.cpp"
	"${SRCDIR}/public/rope_physics.cpp"
	"${SRCDIR}/public/scratchpad3d.cpp"
	"${SRCDIR}/public/ScratchPadUtils.cpp"
	"${SRCDIR}/public/server_class.cpp"
	"${SRCDIR}/game/shared/sheetsimulator.cpp"
	"${SRCDIR}/public/simple_physics.cpp"
	"${SRCDIR}/public/stringregistry.cpp"
	"${SRCDIR}/public/studio.cpp"
	"${SERVER_BASE_DIR}/GameStats_BasicStatsFunctions.cpp"
	PROPERTIES SKIP_PRECOMPILE_HEADERS ON
)

function(target_use_server_base target EXCLUDE_SOURCES)
	set(USED_SOURCES ${SERVER_BASE_SOURCE_FILES})

	if (${EXCLUDE_SOURCES})
		list(REMOVE_ITEM USED_SOURCES ${${EXCLUDE_SOURCES}})
	endif()


	target_sources(
		${target} PRIVATE
		${USED_SOURCES}
	)

	target_include_directories(
		${target} PRIVATE
		"${SERVER_BASE_DIR}"
		"${SRCDIR}/game/shared"
		"${SRCDIR}/utils/common"
		"${SRCDIR}/game/shared/econ"
		"${SRCDIR}/game/server/NextBot"
	)

	target_compile_definitions(
		${target} PRIVATE
		GAME_DLL
		VECTOR
		VERSION_SAFE_STEAM_API_INTERFACES
		PROTECTED_THINGS_ENABLE
		sprintf=use_Q_snprintf_instead_of_sprintf
		strncpy=use_Q_strncpy_instead
		_snprintf=use_Q_snprintf_instead
		$<${IS_POSIX}:SWDS>
		$<${IS_WINDOWS}:fopen=dont_use_fopen>
	)

	target_precompile_headers(
		${target} PRIVATE
		"${SERVER_BASE_DIR}/cbase.h"
	)

	target_link_libraries(
		${target} PRIVATE
		$<${IS_WINDOWS}:winmm>
		$<${IS_OSX}:iconv>

		"${LIBPUBLIC}/choreoobjects${STATIC_LIB_EXT}"
		"${LIBPUBLIC}/dmxloader${STATIC_LIB_EXT}"
		mathlib
		"${LIBPUBLIC}/particles${STATIC_LIB_EXT}"
		"${LIBPUBLIC}/tier2${STATIC_LIB_EXT}"
		"${LIBPUBLIC}/tier3${STATIC_LIB_EXT}"
		steam_api
	)

endfunction()