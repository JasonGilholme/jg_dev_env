include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    htop
    URL https://github.com/hishamhm/htop/archive/2.2.0.tar.gz
    PREFIX htop
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./autogen.sh && ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/htop
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
