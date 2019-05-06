include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    less
    URL https://ftp.gnu.org/gnu/less/less-530.tar.gz
    PREFIX less
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./configure --prefix=${CMAKE_INSTALL_PREFIX}/apps/less
    INSTALL_COMMAND make install && ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} less
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
