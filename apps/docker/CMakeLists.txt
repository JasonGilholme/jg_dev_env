include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    docker
    URL https://download.docker.com/linux/static/stable/x86_64/docker-18.09.3.tgz
    PREFIX docker
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/docker
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ls -la && cp -rv ./ ${CMAKE_INSTALL_PREFIX}/bin
)
