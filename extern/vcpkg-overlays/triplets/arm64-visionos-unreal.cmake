include("${CMAKE_CURRENT_LIST_DIR}/shared/common.cmake")

set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)
set(VCPKG_CMAKE_SYSTEM_NAME visionOS)
set(VCPKG_OSX_SYSROOT xros)
set(VCPKG_OSX_DEPLOYMENT_TARGET 2.0)

# Match Unreal's visibility behavior for Apple mobile builds.
set(VCPKG_CXX_FLAGS "-fvisibility=hidden")
set(VCPKG_C_FLAGS "${VCPKG_CXX_FLAGS}")
