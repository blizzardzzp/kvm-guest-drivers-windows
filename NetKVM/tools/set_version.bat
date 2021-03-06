:: Param 1 - Current WinNT version (Macro $(CURRENT_WIN32_WINNT_VERSION) from Visual Studio)

if "%_BUILD_MAJOR_VERSION_%"=="" set _BUILD_MAJOR_VERSION_=101
if "%_BUILD_MINOR_VERSION_%"=="" set _BUILD_MINOR_VERSION_=58000
if "%_RHEL_RELEASE_VERSION_%"=="" set _RHEL_RELEASE_VERSION_=65

set /a DRIVER_NT_TARGET_VERSION="(%1 >> 8) * 10 + ((%1 & 255) >> 4)"

echo Setting nt version to: %DRIVER_NT_TARGET_VERSION%
set STAMPINF_VERSION=%DRIVER_NT_TARGET_VERSION%.%_RHEL_RELEASE_VERSION_%.%_BUILD_MAJOR_VERSION_%.%_BUILD_MINOR_VERSION_% 
