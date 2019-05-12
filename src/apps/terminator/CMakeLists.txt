include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    terminator
    URL https://launchpad.net/terminator/gtk3/1.91/+download/terminator-1.91.tar.gz
    PREFIX terminator
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND "" 
    INSTALL_COMMAND ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} terminator
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ${CMAKE_CURRENT_LIST_DIR}/install ${CMAKE_INSTALL_PREFIX}
)


