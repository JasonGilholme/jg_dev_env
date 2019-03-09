CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

project(dev_env)

set(JG_INSTALL_APP_SH ${CMAKE_CURRENT_LIST_DIR}/utils/install_app.sh)

add_subdirectory(src)
