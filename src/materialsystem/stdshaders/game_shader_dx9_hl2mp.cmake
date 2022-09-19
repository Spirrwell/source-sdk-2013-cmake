# game_shader_dx9_hl2mp.cmake

include( "${CMAKE_CURRENT_LIST_DIR}/game_shader_dx9_base.cmake")

add_library(game_shader_dx9_hl2mp MODULE)
target_use_game_shader_dx9_base(game_shader_dx9_hl2mp)