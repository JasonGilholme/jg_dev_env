include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    rez
    URL https://github.com/nerdvegas/rez/archive/2.27.0.tar.gz
    PREFIX rez
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ""
    BUILD_IN_SOURCE 1
    BUILD_COMMAND python ./install.py -v ${CMAKE_INSTALL_PREFIX}/rez 
)
