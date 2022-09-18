# groups.cmake

if (${BUILD_GROUP} STREQUAL "game")
	include("${SRCDIR}/mathlib/mathlib.cmake")
	include("${SRCDIR}/raytrace/raytrace.cmake")
	include("${SRCDIR}/tier1/tier1.cmake")
endif()