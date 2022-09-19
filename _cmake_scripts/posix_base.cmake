# posix_base.cmake

find_package(Threads REQUIRED)

add_compile_options(
	-m32
	$<${IS_LINUX}:-U_FORTIFY_SOURCE>
)

add_link_options(-m32)

add_compile_definitions(
	_POSIX
	POSIX
	GNUC
	COMPILER_GCC
	NO_HOOK_MALLOC
	$<${IS_LINUX}:_LINUX>
	$<${IS_LINUX}:LINUX>
	$<${IS_OSX}:_OSX>
	$<${IS_OSX}:OSX>
	$<${IS_OSX}:_DARWIN_UNLIMITED_SELECT>
	$<${IS_OSX}:FD_SETSIZE=10240>
	$<${IS_OSX}:OVERRIDE_V_DEFINES>
)

if (${IS_LINUX} AND NOT ${DEDICATED})
	list(
		APPEND ADDITIONAL_LINK_OPTIONS_EXE
		-Wl,--no-as-needed -ltcmalloc_minimal -Wl,--as-needed
	)
endif()

link_libraries(
	Threads::Threads
	${CMAKE_DL_LIBS}
	$<${IS_LINUX}:m>
)

if (${IS_LINUX})
	add_link_options(
		-static-libgcc
		-static-libstdc++
	)
endif()

add_compile_options(
	$<${IS_LINUX}:-march=pentium4>
	-msse2 -mfpmath=sse -mtune=core2
)

list(
	APPEND ADDITIONAL_LINK_LIBRARIES_DLL
	"${LIBPUBLIC}/tier0${IMPLIB_EXT}"
	tier1
	"${LIBPUBLIC}/vstdlib${IMPLIB_EXT}"
)