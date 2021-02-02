# Build GLEW

include(FetchContent)
FetchContent_Declare(thirdparty-glew
    URL ${CMAKE_SOURCE_DIR}/thirdparty/glew-2.1.0.zip
)

set(BUILD_UTILS OFF)
set(BUILD_SHARED_LIBS OFF)

FetchContent_GetProperties(thirdparty-glew)

if(NOT thirdparty-glew_POPULATED)
    FetchContent_Populate(thirdparty-glew)

    add_subdirectory(
        ${thirdparty-glew_SOURCE_DIR}/build/cmake
        ${thirdparty-glew_BINARY_DIR}
        EXCLUDE_FROM_ALL
    )
    include_directories(${thirdparty-glew_SOURCE_DIR}/include)

endif()

