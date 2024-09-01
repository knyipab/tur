TERMUX_PKG_HOMEPAGE="https://wiki.documentfoundation.org/DLP/Libraries/libabw"
TERMUX_PKG_DESCRIPTION="a library that parses the file format of AbiWord documents"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.3
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libabw/libabw-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=e763a9dc21c3d2667402d66e202e3f8ef4db51b34b79ef41f56cacb86dcd6eed
TERMUX_PKG_DEPENDS="librevenge, libxml2, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, gperf"
# TODO: detect Archlinux update
