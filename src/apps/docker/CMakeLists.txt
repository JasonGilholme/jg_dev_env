include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    docker
    URL https://download.docker.com/linux/static/stable/x86_64/docker-18.09.3.tgz
    PREFIX docker
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX}/apps/docker
    BUILD_IN_SOURCE 1
    BUILD_COMMAND mkdir -p ${CMAKE_INSTALL_PREFIX}/apps/docker/bin && cp -rv ./ ${CMAKE_INSTALL_PREFIX}/apps/docker/bin
)
