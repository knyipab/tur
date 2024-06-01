TERMUX_PKG_HOMEPAGE=https://www.libreoffice.org/
TERMUX_PKG_DESCRIPTION="LXTask is a GUI application for the Lightweight X11 Desktop Environment (LXDE)"
TERMUX_PKG_LICENSE="MPL-2.0, LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=24.2.3
_LIBREOFFICE_VERSION=24.2.3.2
TERMUX_PKG_SRCURL=https://download.documentfoundation.org/libreoffice/src/$TERMUX_PKG_VERSION/libreoffice-$_LIBREOFFICE_VERSION.tar.xz
TERMUX_PKG_SHA256=f6e2059cd85d07793e8d95828b2412906bdba8bf61a5f76b8c51907898481e64
# TODO: matches Archlinux deps:
# TERMUX_PKG_DEPENDS="curl, hunspell, python, libwpd, libwps, neon, pango, nspr, libjpeg, libxrandr, libgl, redland, hyphen, lpsolve, gcc-libs, sh, graphite, icu, libxslt, lcms2, poppler, libvisio, libetonyek, libodfgen, libcdr, libmspub, harfbuzz-icu, nss, clucene, hicolor-icon-theme, desktop-file-utils, shared-mime-info, libpagemaker, libxinerama, libabw, libmwaw, libe-book, libcups, liblangtag, libexttextcat, liborcus, libwebp, libcmis, libtommath, libzmf, libatomic_ops, xmlsec, libnumbertext, gpgme, libfreehand, libstaroffice, libepubgen, libqxp, libepoxy, box2d, zxing-cpp, xdg-utils, libldap, fontconfig, zlib, libpng, freetype2, raptor, libxml2, cairo, libx11, expat, glib2, boost-libs, libtiff, dbus, glibc, librevenge, libxext, openjpeg2"
# TODO: to be added
TERMUX_PKG_DEPENDS="cups, openjdk-17, python, which"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-java"

termux_step_pre_configure() {
	sed -i -e 's/linux-gnu\*|k\*bsd\*-gnu\*|linux-musl\*)/linux-*|k*bsd*-gnu*)/' configure.ac
	sed -i -e 's/linux-gnu\*|k\*bsd\*-gnu\*|linux-musl\*)/linux-*|k*bsd*-gnu*)/' configure
}
