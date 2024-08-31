TERMUX_PKG_HOMEPAGE=https://sf.net/p/libwpd/librevenge/
TERMUX_PKG_DESCRIPTION="library for REVerses ENGineered formats filters"
TERMUX_PKG_LICENSE="LGPL-2.1, MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.0.5
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/libwpd/files/librevenge/librevenge-${TERMUX_PKG_VERSION}/librevenge-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=106d0c44bb6408b1348b9e0465666fa83b816177665a22cd017e886c1aaeeb34
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit"

# TODO: detect Archlinux update

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
