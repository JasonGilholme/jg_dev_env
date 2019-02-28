include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    base16-shell
    URL ""
    DOWNLOAD_COMMAND git clone https://github.com/chriskempson/base16-shell.git
    PREFIX base16-shell
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ""
    BUILD_IN_SOURCE 1
    BUILD_COMMAND cp -rv ./ ${CMAKE_INSTALL_PREFIX}/base16-shell
)
