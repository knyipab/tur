TERMUX_PKG_HOMEPAGE="https://wiki.documentfoundation.org/DLP/Libraries/libzmf"
TERMUX_PKG_DESCRIPTION="a library for import of Zoner drawing and bitmap files"
TERMUX_PKG_LICENSE="MPL"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.0.2
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libzmf/libzmf-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=27051a30cb057fdb5d5de65a1f165c7153dc76e27fe62251cbb86639eb2caf22
TERMUX_PKG_DEPENDS="icu, libpng, librevenge, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit"
# TODO: detect Archlinux update
