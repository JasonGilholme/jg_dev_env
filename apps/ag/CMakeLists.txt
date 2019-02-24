include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    ag
    URL https://github.com/ggreer/the_silver_searcher/archive/2.2.0.tar.gz
    PREFIX ag
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./autogen.sh && ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ag
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
