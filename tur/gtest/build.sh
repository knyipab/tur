TERMUX_PKG_HOMEPAGE=https://github.com/google/googletest
TERMUX_PKG_DESCRIPTION="Google C++ testing framework"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.14.0
TERMUX_PKG_SRCURL=https://github.com/google/googletest/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=8ad598c73ad796e0d8280b082cebd82a630d73e73cd3c70057938a6501bba5d7
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_CONFLICTS="libgtest"
TERMUX_PKG_REPLACES="libgtest"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DBUILD_SHARED_LIBS=ON"

termux_step_post_get_source() {
	# Do not forget to bump revision of reverse dependencies and rebuild them
	# after SOVERSION is changed.
	local _SOVERSION=1.14.0

	local v=$(sed -En 's/^set\(GOOGLETEST_VERSION\s+([0-9.]+).*/\1/p' \
			CMakeLists.txt)
	if [ "${v}" != "${_SOVERSION}" ]; then
		termux_error_exit "SOVERSION guard check failed."
	fi
}

termux_step_post_make_install() {
    cd "$TERMUX_PKG_SRCIDR"

    cd googletest
    install -Dm 644 cmake/* -t "${TERMUX_PREFIX}/src/googletest/cmake"
    install -Dm 644 src/* -t "${TERMUX_PREFIX}/src/googletest/src"
    install -Dm 644 CMakeLists.txt -t "${TERMUX_PREFIX}/src/googletest"

    cd ../googlemock
    install -Dm 644 cmake/* -t "${TERMUX_PREFIX}/src/gmock/cmake"
    install -Dm 644 src/* -t "${TERMUX_PREFIX}/src/gmock/src"
    install -Dm 644 CMakeLists.txt -t "${TERMUX_PREFIX}/src/gmock"

    sed -i 's|src/||' "${TERMUX_PREFIX}/src/gmock/src/gmock-all.cc"
}
