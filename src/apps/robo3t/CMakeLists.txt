include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    robo3t
    URL https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz
    PREFIX robo3t
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND cp -rv ./ ${CMAKE_INSTALL_PREFIX}/apps/robo3t && ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} robo3t
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ""
)
