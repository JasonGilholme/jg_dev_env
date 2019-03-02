CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

project(dev_env)

set(JG_COPY_LIBS_SH ${CMAKE_CURRENT_LIST_DIR}/utils/copy_libs.sh)

add_subdirectory(bin)
add_subdirectory(dot_files)

add_subdirectory(apps)

add_subdirectory(lib)
