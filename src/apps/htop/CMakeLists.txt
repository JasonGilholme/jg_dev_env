include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    htop
    URL https://github.com/hishamhm/htop/archive/2.2.0.tar.gz
    PREFIX htop
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./autogen.sh && ./configure --prefix=${CMAKE_INSTALL_PREFIX}/apps/htop
    INSTALL_COMMAND make install && ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} htop
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
