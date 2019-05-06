include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    rust
    URL https://static.rust-lang.org/dist/rust-1.32.0-x86_64-unknown-linux-gnu.tar.gz
    PREFIX rust
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ${JG_INSTALL_APP_SH} ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_INSTALL_PREFIX} rust
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ./install.sh --prefix=${CMAKE_INSTALL_PREFIX}/apps/rust
)


