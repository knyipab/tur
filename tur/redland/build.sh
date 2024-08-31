TERMUX_PKG_HOMEPAGE=http://librdf.org/
TERMUX_PKG_DESCRIPTION="library for REVerses ENGineered formats filters"
TERMUX_PKG_LICENSE="LGPL-2.1, Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.0.5
TERMUX_PKG_SRCURL=http://download.librdf.org/source/redland-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=de1847f7b59021c16bdc72abb4d8e2d9187cd6124d69156f3326dd34ee043681
TERMUX_PKG_DEPENDS="librasqal, libraptor, mariadb, postgresql, sqlite, unixodbc"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-release
--disable-static
--with-raptor=system
--with-rasqal=system
--with-sqlite=3
--with-bdb=no
"

# TODO: detect Archlinux update
