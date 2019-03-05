CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

project(dev_env)

set(JG_INSTALL_APP_SH ${CMAKE_CURRENT_LIST_DIR}/utils/install_app.sh)

# add_subdirectory(bin)
# add_subdirectory(dot_files)

add_subdirectory(apps)

# add_subdirectory(lib)

configure_file(.bashrc ${CMAKE_INSTALL_PREFIX} COPYONLY)
configure_file(.bash_profile ${CMAKE_INSTALL_PREFIX} COPYONLY)
