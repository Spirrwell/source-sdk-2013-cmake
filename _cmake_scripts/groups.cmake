# groups.cmake

if (${BUILD_GROUP} STREQUAL "game")
	include("${SRCDIR}/game/client/client_hl2mp.cmake")
	include("${SRCDIR}/mathlib/mathlib.cmake")
	include("${SRCDIR}/raytrace/raytrace.cmake")
	include("${SRCDIR}/game/server/server_hl2mp.cmake")
	include("${SRCDIR}/tier1/tier1.cmake")
	include("${SRCDIR}/vgui2/vgui_controls/vgui_controls.cmake")
endif()