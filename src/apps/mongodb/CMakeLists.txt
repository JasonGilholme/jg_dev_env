include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    mongodb
    URL https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-4.0.6.tgz
    PREFIX mongodb
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND cp -rv ./ ${CMAKE_INSTALL_PREFIX} && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/mongo
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ""
)
