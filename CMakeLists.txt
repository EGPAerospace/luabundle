cmake_minimum_required (VERSION 3.16)

# Setting project name
project (
	LUABUNDLE
	VERSION 1.1.0
)

# Building the self bundling script
execute_process ( COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/selfbundle.cmd 
                  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/ )
				  
# Installing the bundling script tool into the build folder
execute_process ( COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/install.cmd 
                  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/ )

				  

