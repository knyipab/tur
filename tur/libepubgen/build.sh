TERMUX_PKG_HOMEPAGE="https://sourceforge.net/projects/libepubgen/"
TERMUX_PKG_DESCRIPTION="an EPUB generator for librevenge"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.1
TERMUX_PKG_SRCURL="https://sourceforge.net/projects/libepubgen/files/libepubgen-${TERMUX_PKG_VERSION}/libepubgen-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=03e084b994cbeffc8c3dd13303b2cb805f44d8f2c3b79f7690d7e3fc7f6215ad
TERMUX_PKG_DEPENDS="librevenge"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit, libxml2"
# TODO: detect Archlinux update

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
