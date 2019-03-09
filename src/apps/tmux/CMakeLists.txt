include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    tmux
    URL https://github.com/tmux/tmux/archive/2.8.tar.gz
    PREFIX tmux
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./autogen.sh && ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/tmux
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
