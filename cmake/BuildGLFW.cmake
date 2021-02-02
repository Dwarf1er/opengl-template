# Build GLFW

include(FetchContent)
FetchContent_Declare(thirdparty-glfw
    URL ${CMAKE_SOURCE_DIR}/thirdparty/glfw-3.3.2.zip
)

set(BUILD_SHARED_LIBS OFF)
set(GLFW_BUILD_EXAMPLES OFF)
set(GLFW_BUILD_TESTS OFF)
set(GLFW_BUILD_DOCS OFF)
set(GLFW_INSTALL OFF)

FetchContent_GetProperties(thirdparty-glfw)

if(NOT thirdparty-glfw_POPULATED)
    FetchContent_Populate(thirdparty-glfw)

    add_subdirectory(
        ${thirdparty-glfw_SOURCE_DIR}
        ${thirdparty-glfw_BINARY_DIR}
        EXCLUDE_FROM_ALL
    )

endif()

