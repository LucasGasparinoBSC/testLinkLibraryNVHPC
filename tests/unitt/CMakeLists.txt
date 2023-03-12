project(test_gpuGeometry)

file(GLOB_RECURSE SRC_FILES ${CMAKE_CURRENT_LIST_DIR}/*.F90)
set(SOURCES_DIR ${CMAKE_CURRENT_LIST_DIR})
include_directories(${gpuGeometry_INCLUDE_DIRS})

add_executable(${PROJECT_NAME} ${SRC_FILES})

target_link_libraries(${PROJECT_NAME} gpuGeometry)

add_test(NAME ${PROJECT_NAME} COMMAND ${PROJECT_NAME})
install(TARGETS ${PROJECT_NAME} DESTINATION tests)