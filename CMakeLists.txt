cmake_minimum_required (VERSION 3.16)

# Setting project name
project (
	LUABUNDLE
	VERSION 1.1.0
)

execute_process ( COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/selfbundle.cmd 
                  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/ ) 
