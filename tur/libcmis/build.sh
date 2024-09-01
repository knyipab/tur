TERMUX_PKG_HOMEPAGE="https://github.com/tdf/libcmis"
TERMUX_PKG_DESCRIPTION="a C/C++ client library for the CMIS protocol"
TERMUX_PKG_LICENSE="GPL-2.0, LGPL-2.1, MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.6.2
TERMUX_PKG_SRCURL="https://github.com/tdf/libcmis/releases/download/v${TERMUX_PKG_VERSION}/libcmis-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=1b5c2d7258ff93eb5f9958ff0e4dfd7332dc75a071bb717dde2217a26602a644
TERMUX_PKG_DEPENDS="boost, curl, libxml2"
TERMUX_PKG_BUILD_DEPENDS="boost-headers, cppunit"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-man"

termux_step_pre_configure() {
	LDFLAGS+=" -lboost_date_time"
}