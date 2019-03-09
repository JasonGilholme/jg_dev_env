configure_file(./.bash_profile ${CMAKE_INSTALL_PREFIX}/scripts/.bash_profile COPYONLY)
configure_file(./.bashrc ${CMAKE_INSTALL_PREFIX}/scripts/.bashrc COPYONLY)

configure_file(./hlcat ${CMAKE_INSTALL_PREFIX}/scripts/hlcat COPYONLY)
