TERMUX_PKG_HOMEPAGE=https://wiki.documentfoundation.org/DLP/Libraries/libvisio
TERMUX_PKG_DESCRIPTION="Library providing ability to interpret and import visio diagrams"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.7
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libvisio/libvisio-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=8faf8df870cb27b09a787a1959d6c646faa44d0d8ab151883df408b7166bea4c
TERMUX_PKG_DEPENDS="libxml2, libicu, librevenge"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit"


# TODO: detect Archlinux update
