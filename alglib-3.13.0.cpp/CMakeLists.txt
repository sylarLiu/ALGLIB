cmake_minimum_required(VERSION 2.8.0)

project(alglib)

aux_source_directory(src/ SOURCES_LIST)

add_library(alg SHARED ${SOURCES_LIST})
set_target_properties(alg PROPERTIES VERSION 3.13.0)

