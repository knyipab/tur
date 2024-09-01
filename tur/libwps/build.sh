TERMUX_PKG_HOMEPAGE=https://sourceforge.net/projects/libwps/
TERMUX_PKG_DESCRIPTION="a Microsoft Works file word processor format import filter library"
TERMUX_PKG_LICENSE="LGPL-2.1, MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.4.14
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/project/libwps/libwps/libwps-${TERMUX_PKG_VERSION}/libwps-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=365b968e270e85a8469c6b160aa6af5619a4e6c995dbb04c1ecc1b4dd13e80de
TERMUX_PKG_DEPENDS="libwpd, librevenge"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-static"

# TODO: detect Archlinux update
