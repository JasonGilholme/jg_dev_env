include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

configure_file(.vimrc ${CMAKE_INSTALL_PREFIX}/apps/nvim/ COPYONLY)
configure_file(custom_snippets/python.snippets ${CMAKE_INSTALL_PREFIX}/apps/nvim/custom_snippets/python.snippets COPYONLY)
configure_file(./vim ${CMAKE_INSTALL_PREFIX}/apps/nvim/bin COPYONLY)

ExternalProject_add(
    nvim
    URL https://github.com/neovim/neovim/archive/v0.3.4.tar.gz
    PREFIX nvim
    UPDATE_COMMAND ""
    INSTALL_COMMAND ${CMAKE_CURRENT_LIST_DIR}/install ${CMAKE_INSTALL_PREFIX}
    BUILD_IN_SOURCE 1
    CONFIGURE_COMMAND make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/apps/nvim/" -j ${ncpus}
    BUILD_COMMAND make install && 
    ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX}/apps/nvim/
)
