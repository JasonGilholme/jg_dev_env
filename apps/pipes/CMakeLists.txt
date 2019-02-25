include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    pipes
    URL https://github.com/pipeseroni/pipes.sh/archive/v1.3.0.tar.gz
    PREFIX pipes
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND make PREFIX=${CMAKE_INSTALL_PREFIX} install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/pipes.sh
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ""
)


