include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    screen
    URL https://ftp.gnu.org/gnu/screen/screen-4.6.2.tar.gz
    PREFIX screen
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND make configure && ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/screen
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)


