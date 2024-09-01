TERMUX_PKG_HOMEPAGE=https://libwpg.sourceforge.net/
TERMUX_PKG_DESCRIPTION="Library for importing and converting Corel WordPerfect(tm) Graphics images."
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.3.4
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/libwpg/libwpg-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=b55fda9440d1e070630eb2487d8b8697cf412c214a27caee9df69cec7c004de3
TERMUX_PKG_DEPENDS="libwpd, perl, librevenge"
TERMUX_PKG_BUILD_DEPENDS="boost"

# TODO: detect Archlinux update

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
