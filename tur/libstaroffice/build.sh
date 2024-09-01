TERMUX_PKG_HOMEPAGE="https://github.com/fosnola/libstaroffice"
TERMUX_PKG_DESCRIPTION="filter for old StarOffice documents(.sdc, .sdw, ...) based on librevenge"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.0.7
TERMUX_PKG_SRCURL=https://github.com/fosnola/libstaroffice/releases/download/${TERMUX_PKG_VERSION}/libstaroffice-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=f94fb0ad8216f97127bedef163a45886b43c62deac5e5b0f5e628e234220c8db
TERMUX_PKG_DEPENDS="librevenge, zlib"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}