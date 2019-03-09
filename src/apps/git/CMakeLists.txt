include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

configure_file(.gitconfig ${CMAKE_INSTALL_PREFIX}/apps/git/.gitconfig COPYONLY)

ExternalProject_add(
    git
    URL https://github.com/git/git/archive/v2.21.0.tar.gz
    PREFIX git
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND autoconf && ./configure --prefix=${CMAKE_INSTALL_PREFIX}/apps/git
    INSTALL_COMMAND make install &&
        cp contrib/completion/git-completion.bash ${CMAKE_INSTALL_PREFIX}/apps/git/share/git-completion.sh &&
        ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX}/apps/git
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)


