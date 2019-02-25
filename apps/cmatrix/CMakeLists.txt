include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    cmatrix
    URL https://github.com/abishekvashok/cmatrix/archive/1.2.tar.gz
    PREFIX cmatrix
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/cmatrix
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
