include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    libs
    DOWNLOAD_COMMAND ""
    PREFIX libs
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ${CMAKE_CURRENT_LIST_DIR}/copy_all_libs.sh ${CMAKE_INSTALL_PREFIX} 
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ""
)
