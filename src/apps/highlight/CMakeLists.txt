include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    highlight
    URL http://www.andre-simon.de/zip/highlight-3.49.tar.bz2
    PREFIX highlight
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND make PREFIX=${CMAKE_INSTALL_PREFIX}/apps/highlight data_dir=${CMAKE_INSTALL_PREFIX}/apps/highlight/ conf_dir=${CMAKE_INSTALL_PREFIX}/apps/highlight/ install && ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} highlight
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make PREFIX=${CMAKE_INSTALL_PREFIX}/apps/highlight data_dir=${CMAKE_INSTALL_PREFIX}/apps/highlight/ conf_dir=${CMAKE_INSTALL_PREFIX}/apps/highlight/ -j ${ncpus}
)
