include(ExternalProject)
include(ProcessorCount)
ProcessorCount(ncpus)

ExternalProject_add(
    ctags
    URL https://sourceforge.net/projects/ctags/files/ctags/5.8/ctags-5.8.tar.gz/download
    PREFIX ctags
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./configure --prefix=${CMAKE_INSTALL_PREFIX}
    INSTALL_COMMAND make install && ${JG_COPY_LIBS_SH} ${CMAKE_INSTALL_PREFIX} ${CMAKE_INSTALL_PREFIX}/bin/ctags
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make -j ${ncpus}
)
