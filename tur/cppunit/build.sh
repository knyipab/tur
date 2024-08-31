TERMUX_PKG_HOMEPAGE=https://www.freedesktop.org/wiki/Software/cppunit
TERMUX_PKG_DESCRIPTION="A C++ unit testing framework"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=1.15.1
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/cppunit-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=89c5c6665337f56fd2db36bc3805a5619709d51fb136e51937072f63fcc717a7

# TODO: detect Archlinux update

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
