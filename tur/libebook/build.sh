TERMUX_PKG_HOMEPAGE="https://sourceforge.net/projects/libebook/"
TERMUX_PKG_DESCRIPTION="Library for import of reflowable e-book formats."
TERMUX_PKG_LICENSE="LGPL-2.1, MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.3
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/libebook/files//libe-book-${TERMUX_PKG_VERSION}/libe-book-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=7e8d8ff34f27831aca3bc6f9cc532c2f90d2057c778963b884ff3d1e34dfe1f9
TERMUX_PKG_DEPENDS="libicu, liblangtag, librevenge, libxml2, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit, gperf"
# TODO: detect Archlinux update
