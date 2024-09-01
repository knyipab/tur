TERMUX_PKG_HOMEPAGE="https://wiki.documentfoundation.org/DLP/Libraries/libqxp"
TERMUX_PKG_DESCRIPTION="a library that parses the file format of QuarkXPress documents"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.0.2
TERMUX_PKG_SRCURL="https://dev-www.libreoffice.org/src/libqxp/libqxp-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=e137b6b110120a52c98edd02ebdc4095ee08d0d5295a94316a981750095a945c
TERMUX_PKG_DEPENDS="libicu, librevenge"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit"
# TODO: detect Archlinux update
