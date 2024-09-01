TERMUX_PKG_HOMEPAGE="https://wiki.documentfoundation.org/DLP/Libraries/libfreehand"
TERMUX_PKG_DESCRIPTION="a library for import of Aldus/Macromedia/Adobe FreeHand documents"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.2
TERMUX_PKG_SRCURL="https://dev-www.libreoffice.org/src/libfreehand/libfreehand-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=0e422d1564a6dbf22a9af598535425271e583514c0f7ba7d9091676420de34ac
TERMUX_PKG_DEPENDS="littlecms, librevenge, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit, gperf"
# TODO: detect Archlinux update
