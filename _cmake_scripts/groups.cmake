# groups.cmake

if (${BUILD_GROUP} STREQUAL "game")
	include("${SRCDIR}/game/client/client_hl2mp.cmake")
	include("${SRCDIR}/mathlib/mathlib.cmake")
	include("${SRCDIR}/raytrace/raytrace.cmake")
	include("${SRCDIR}/game/server/server_hl2mp.cmake")
	include("${SRCDIR}/tier1/tier1.cmake")
	include("${SRCDIR}/vgui2/vgui_controls/vgui_controls.cmake")
elseif (${BUILD_GROUP} STREQUAL "everything")

	if (${IS_WINDOWS})
		include("${SRCDIR}/utils/captioncompiler/captioncompiler.cmake")
	endif()

	include("${SRCDIR}/game/client/client_hl2mp.cmake")
	
	if (${IS_WINDOWS})
		include("${SRCDIR}/fgdlib/fgdlib.cmake")
	endif()

	include("${SRCDIR}/materialsystem/stdshaders/game_shader_dx9_hl2mp.cmake")

	if (${IS_WINDOWS})
		include("${SRCDIR}/utils/glview/glview.cmake")
		include("${SRCDIR}/utils/height2normal/height2normal.cmake")
	endif()

	include("${SRCDIR}/mathlib/mathlib.cmake")

	if (${IS_WINDOWS})
		include("${SRCDIR}/utils/motionmapper/motionmapper.cmake")
		include("${SRCDIR}/utils/qc_eyes/qc_eyes.cmake")
	endif()

	include("${SRCDIR}/raytrace/raytrace.cmake")
	include("${SRCDIR}/game/server/server_hl2mp.cmake")
	include("${SRCDIR}/utils/serverplugin_sample/serverplugin_empty.cmake")
	include("${SRCDIR}/tier1/tier1.cmake")

	if (${IS_WINDOWS})
		include("${SRCDIR}/utils/tgadiff/tgadiff.cmake")
		include("${SRCDIR}/utils/vbsp/vbsp.cmake")
	endif()

	include("${SRCDIR}/vgui2/vgui_controls/vgui_controls.cmake")

	if (${IS_WINDOWS})
		include("${SRCDIR}/utils/vice/vice.cmake")
		include("${SRCDIR}/utils/vrad/vrad_dll.cmake")
		include("${SRCDIR}/utils/vrad_launcher/vrad_launcher.cmake")
		include("${SRCDIR}/utils/vtf2tga/vtf2tga.cmake")
		include("${SRCDIR}/utils/vtfdiff/vtfdiff.cmake")
	endif()
elseif (${BUILD_GROUP} STREQUAL "shaders")
	include("${SRCDIR}/materialsystem/stdshaders/game_shader_dx9_hl2mp.cmake")
	include("${SRCDIR}/mathlib/mathlib.cmake")
	include("${SRCDIR}/tier1/tier1.cmake")
endif()