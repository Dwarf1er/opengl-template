# Build GLM

include(FetchContent)
FetchContent_Declare(thirdparty-glm
    URL ${CMAKE_SOURCE_DIR}/thirdparty/glm-0.9.9.8.zip
)

set(BUILD_STATIC_LIBS OFF)
set(BUILD_SHARED_LIBS OFF)
set(BUILD_TESTING OFF)

FetchContent_GetProperties(thirdparty-glm)

if(NOT thirdparty-glm_POPULATED)
    FetchContent_Populate(thirdparty-glm)

    add_subdirectory(
        ${thirdparty-glm_SOURCE_DIR}
        ${thirdparty-glm_BINARY_DIR}
        EXCLUDE_FROM_ALL
    )

endif()

