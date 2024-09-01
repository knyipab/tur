TERMUX_PKG_HOMEPAGE=https://wiki.documentfoundation.org/DLP/Libraries/libcdr
TERMUX_PKG_DESCRIPTION="Microsoft Publisher file format parser library (latest snapshot)"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.4
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libmspub/libmspub-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=ef36c1a1aabb2ba3b0bedaaafe717bf4480be2ba8de6f3894be5fd3702b013ba
TERMUX_PKG_DEPENDS="libwpd, libicu, libxml2, librevenge, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, libwpg"


# TODO: detect Archlinux update
