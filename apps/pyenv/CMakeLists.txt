include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    pyenv
    URL https://github.com/pyenv/pyenv/archive/v1.2.9.tar.gz
    PREFIX pyenv
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND "" 
    INSTALL_COMMAND ${CMAKE_CURRENT_LIST_DIR}/install ${CMAKE_INSTALL_PREFIX} && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/pyenv/bin/pyenv
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ""
)
