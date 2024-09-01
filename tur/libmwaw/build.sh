TERMUX_PKG_HOMEPAGE="https://sourceforge.net/projects/libmwaw/"
TERMUX_PKG_DESCRIPTION="Import library for some old mac text documents."
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.3.22
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/(libmwaw libmwaw-docs)/files/(libmwaw libmwaw-docs)/(libmwaw libmwaw-docs)-${TERMUX_PKG_VERSION}/(libmwaw libmwaw-docs)-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=a1a39ffcea3ff2a7a7aae0c23877ddf4918b554bf82b0de5d7ce8e7f61ea8e32
TERMUX_PKG_DEPENDS="doxygen, librevenge"
TERMUX_PKG_BUILD_DEPENDS="librevenge"
# TODO: detect Archlinux update
