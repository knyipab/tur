TERMUX_PKG_HOMEPAGE=https://libwpd.sourceforge.net/
TERMUX_PKG_DESCRIPTION="Library for importing WordPerfect (tm) documents"
TERMUX_PKG_LICENSE="LGPL-2.1, MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.10.3
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/sourceforge/libwpd/libwpd-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=2465b0b662fdc5d4e3bebcdc9a79027713fb629ca2bff04a3c9251fdec42dd09
TERMUX_PKG_DEPENDS="librevenge"
TERMUX_PKG_BUILD_DEPENDS="boost"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-static"

# TODO: detect Archlinux update

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
