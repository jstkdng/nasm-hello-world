cmake_minimum_required(VERSION 3.18)

set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_ASM_NASM_OBJECT_FORMAT elf64)
set(CMAKE_ASM_NASM_FLAGS_DEBUG "-g")

project(hello ASM_NASM)

# avoid using nasm as linker
set(CMAKE_ASM_NASM_LINK_EXECUTABLE "ld <CMAKE_ASM_NASM_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")

# source files
set(ASM_SRC hello.s)

set_source_files_properties(${ASM_SRC} PROPERTIES LANGUAGE ASM_NASM)

add_executable(hello ${ASM_SRC})

