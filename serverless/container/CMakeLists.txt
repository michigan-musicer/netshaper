cmake_minimum_required(VERSION 3.10)
project(BoostExample)

find_package(Boost REQUIRED)

# add_executable(my_app networking_tutorial.cpp)
add_executable(server websockets_server.cpp)
target_include_directories(server PRIVATE ${Boost_INCLUDE_DIRS})
