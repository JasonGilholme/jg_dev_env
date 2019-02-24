include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    cmake
    URL ${url_cmake}
    PREFIX cmake
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND cmake -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} cmake
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
