include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    ctags
    URL https://sourceforge.net/projects/ctags/files/ctags/5.8/ctags-5.8.tar.gz/download
    PREFIX ctags
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./configure --prefix=${CMAKE_INSTALL_PREFIX}/apps/ctags
    INSTALL_COMMAND make install && ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX}/apps/ctags
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
