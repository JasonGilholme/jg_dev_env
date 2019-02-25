include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    cmake
    URL https://github.com/Kitware/CMake/archive/v3.13.4.tar.gz
    PREFIX cmake
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/cmake
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
