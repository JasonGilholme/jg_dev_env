include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

configure_file(.eslintrc.js ${CMAKE_INSTALL_PREFIX}/apps/nvm/.eslintrc.js COPYONLY)

ExternalProject_add(
    nvm
    URL https://github.com/creationix/nvm/archive/v0.34.0.tar.gz
    PREFIX nvm
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND "" 
    INSTALL_COMMAND ${CMAKE_CURRENT_LIST_DIR}/install ${CMAKE_INSTALL_PREFIX} && ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX}/apps/nvm/
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ${CMAKE_CURRENT_LIST_DIR}/build ${CMAKE_INSTALL_PREFIX}
)
