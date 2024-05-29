TERMUX_PKG_HOMEPAGE=https://movit.sesse.net/
TERMUX_PKG_DESCRIPTION="The modern video toolkit. "
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.7.1
TERMUX_PKG_SRCURL=https://movit.sesse.net/movit-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=b33073b705f0ccb6ac4942cf51151515407b40bb4e9a2dd0228c1c2cb1fbc11a
TERMUX_PKG_DEPENDS="fftw, libepoxy"
TERMUX_PKG_BUILD_DEPENDS="eigen, googletest, sdl2"
TERMUX_PKG_SUGGESTS="$TERMUX_PKG_BUILD_DEPENDS"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
# build strategy used by Fedora
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-static"
TERMUX_PKG_EXTRA_MAKE_ARGS="TESTS="
