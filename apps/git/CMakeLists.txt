include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    git
    URL https://github.com/git/git/archive/v2.21.0.tar.gz
    PREFIX git
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND autoconf && ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/git
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)


