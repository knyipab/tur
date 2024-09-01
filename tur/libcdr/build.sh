TERMUX_PKG_HOMEPAGE=https://wiki.documentfoundation.org/DLP/Libraries/libcdr
TERMUX_PKG_DESCRIPTION="CorelDraw file format importer library for LibreOffice"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.7
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libcdr/libcdr-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=5666249d613466b9aa1e987ea4109c04365866e9277d80f6cd9663e86b8ecdd4
TERMUX_PKG_DEPENDS="libicu, librevenge, littlecms, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, libwpg"

# TODO: detect Archlinux update
