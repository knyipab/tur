TERMUX_PKG_HOMEPAGE="http://clucene.sourceforge.net/"
TERMUX_PKG_DESCRIPTION="C++ port of the high-performance text search engine Lucene"
TERMUX_PKG_LICENSE="Apache-2.0, LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=2.3.3.4
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/clucene/clucene-core-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cmake"
# TODO: detect Archlinux update
