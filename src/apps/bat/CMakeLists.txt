include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    bat
    URL https://github.com/sharkdp/bat/archive/v0.10.0.tar.gz
    PREFIX bat
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} bat
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ${CMAKE_CURRENT_LIST_DIR}/build ${CMAKE_INSTALL_PREFIX}
)
