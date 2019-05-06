include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    tree
    URL http://mama.indstate.edu/users/ice/tree/src/tree-1.8.0.tgz
    PREFIX tree
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND make prefix=${CMAKE_INSTALL_PREFIX}/apps/tree install && ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} tree
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make prefix=${CMAKE_INSTALL_PREFIX} -j ${ncpus}
)
