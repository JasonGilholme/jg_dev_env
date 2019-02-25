include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    neovim
    URL https://github.com/neovim/neovim/archive/v0.3.4.tar.gz
    PREFIX neovim
    UPDATE_COMMAND ""
    INSTALL_COMMAND ${CMAKE_CURRENT_LIST_DIR}/install ${CMAKE_INSTALL_PREFIX}
    BUILD_IN_SOURCE 1
    CONFIGURE_COMMAND make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}" -j ${ncpus}
    BUILD_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/nvim
)
