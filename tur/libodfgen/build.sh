TERMUX_PKG_HOMEPAGE=https://sourceforge.net/p/libwpd/wiki/libodfgen/
TERMUX_PKG_DESCRIPTION="Library for generating documents in Open Document Format"
TERMUX_PKG_LICENSE="LGPL-2.1, MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.8
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/libwpd/files/libodfgen/libodfgen-${TERMUX_PKG_VERSION}/libodfgen-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=55200027fd46623b9bdddd38d275e7452d1b0ff8aeddcad6f9ae6dc25f610625
TERMUX_PKG_DEPENDS="libxml2, librevenge, liblangtag, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, libwpg, libetonyek"

# TODO: detect Archlinux update
