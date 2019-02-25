include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    kitty
    URL ""
    DOWNLOAD_COMMAND wget https://github.com/kovidgoyal/kitty/releases/download/v0.13.3/kitty-0.13.3-x86_64.txz
    PREFIX kitty
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND cp -rv ./ ${CMAKE_INSTALL_PREFIX}/kitty
    BUILD_IN_SOURCE 1
    BUILD_COMMAND tar Jxvf ../kitty-0.13.3-x86_64.txz
)
