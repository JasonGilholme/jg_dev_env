include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    highlight
    URL http://www.andre-simon.de/zip/highlight-3.49.tar.bz2
    PREFIX highlight
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND make PREFIX=${CMAKE_INSTALL_PREFIX} data_dir=${CMAKE_INSTALL_PREFIX}/.highlight conf_dir=${CMAKE_INSTALL_PREFIX}/.highlight install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/highlight
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make PREFIX=${CMAKE_INSTALL_PREFIX} data_dir=${CMAKE_INSTALL_PREFIX}/.highlight conf_dir=${CMAKE_INSTALL_PREFIX}/.highlight -j ${ncpus}
)
