# Downloads and builds the Boost Compute library from github.com
# Defines the following variables
# * BoostCompute_INCLUDE_DIR     Location of the Boost Compute headers

# Look a directory above for the Boost Compute folder
FIND_PATH(          BoostCompute_SOURCE_DIR
    NAMES           include/boost/compute.hpp
    PATH_SUFFIXES   compute BoostCompute
    DOC             "Location of the Boost Compute source directory"
    PATHS           ${CMAKE_SOURCE_DIR}/..
                    ${CMAKE_SOURCE_DIR}/../..)

FIND_PATH( BoostCompute_INCLUDE_DIR
    NAMES   boost/compute.hpp
    DOC     "Location of the Boost Compute include directory."
    PATHS   ${BoostCompute_SOURCE_DIR}/include)

IF(BoostCompute_INCLUDE_DIR AND BoostCompute_SOURCE_DIR)
    SET( BoostCompute_FOUND ON CACHE BOOL "BoostCompute Found" )
ELSE()
    SET( BoostCompute_FOUND OFF CACHE BOOL "BoostCompute Found" )
ENDIF()


MARK_AS_ADVANCED(
    BoostCompute_FOUND
    BoostCompute_INCLUDE_DIR
	)
