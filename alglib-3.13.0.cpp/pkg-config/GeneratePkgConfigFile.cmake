option(BUILD_PKGCONFIG "Build in PKGCONFIG mode" ON)

if(BUILD_PKGCONFIG)
		find_file(PKGCONFIGFILE_IN "pkg-config.pc.in"
				PATHS "${CMAKE_CURRENT_SOURCE_DIR}/pkg-config/"
				NO_DEFAULT_PATH)
		set(PKGCONFIGFILE "${CMAKE_CURRENT_BINARY_DIR}/pkg-config/${TARGET_NAME}.pc")
		configure_file(${PKGCONFIGFILE_IN} ${PKGCONFIGFILE} @ONLY)
endif()

