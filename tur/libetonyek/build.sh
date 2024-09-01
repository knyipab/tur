TERMUX_PKG_HOMEPAGE=https://wiki.documentfoundation.org/DLP/Libraries/libetonyek
TERMUX_PKG_DESCRIPTION="CorelDraw file format importer library for LibreOffice"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.1.10
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libetonyek/libetonyek-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=b430435a6e8487888b761dc848b7981626eb814884963ffe25eb26a139301e9a
TERMUX_PKG_DEPENDS="libxml2, libwpd, librevenge, liblangtag, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit, glm, mdds"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-mdds=2.1"

# TODO: detect Archlinux update

termux_step_pre_configure() {
	# FIXME: wiat for the boost patch to be merged
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
