include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    llvm
    URL https://github.com/llvm/llvm-project/archive/llvmorg-7.0.1.tar.gz
    PREFIX llvm
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ${CMAKE_INSTALL_PREFIX}/apps/cmake/bin/cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/apps/llvm ../llvm/llvm
    INSTALL_COMMAND make install &&
        ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX}/apps/llvm
    BUILD_IN_SOURCE 0
    BUILD_COMMAND make -j ${ncpus}
)


