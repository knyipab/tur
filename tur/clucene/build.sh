TERMUX_PKG_HOMEPAGE="http://clucene.sourceforge.net/"
TERMUX_PKG_DESCRIPTION="C++ port of the high-performance text search engine Lucene"
TERMUX_PKG_LICENSE="Apache-2.0, LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=2.3.3.4
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/clucene/clucene-core-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=ddfdc433dd8ad31b5c5819cc4404a8d2127472a3b720d3e744e8c51d79732eab
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cmake"

# TODO: detect Archlinux update

termux_step_post_get_source() {
	# these patch files are designed for `patch -Np0`
	sed -i 's/^+++ /+++ a\//' $TERMUX_PKG_SRCDIR/000{4,5,6,7,8}*.patch
	sed -i 's/^--- /--- b\//' $TERMUX_PKG_SRCDIR/000{4,5,6,7,8}*.patch
}
