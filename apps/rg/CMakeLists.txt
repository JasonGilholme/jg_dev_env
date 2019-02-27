include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    rg
    URL https://github.com/BurntSushi/ripgrep/archive/0.10.0.tar.gz
    PREFIX rg
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/rg
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ${CMAKE_CURRENT_LIST_DIR}/build ${CMAKE_INSTALL_PREFIX}
)
