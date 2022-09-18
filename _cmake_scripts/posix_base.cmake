# posix_base.cmake

add_compile_options(-m32)
add_link_options(-m32)

add_compile_options(
	$<${IS_LINUX}:-march=pentium4>
	-msse2 -mfpmath=sse -mtune=core2
)