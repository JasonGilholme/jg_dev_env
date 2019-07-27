include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    clang
    DOWNLOAD_COMMAND wget http://releases.llvm.org/7.0.1/cfe-7.0.1.src.tar.xz
    PREFIX clang
    UPDATE_COMMAND tar Jxvf ../cfe-7.0.1.src.tar.xz
    CONFIGURE_COMMAND ${CMAKE_INSTALL_PREFIX}/apps/cmake/bin/cmake
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/apps/clang 
        ../clang/cfe-7.0.1.src/
    INSTALL_COMMAND make install &&
        ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} llvm
    BUILD_IN_SOURCE 0
    BUILD_COMMAND make -j ${ncpus}
)


