TERMUX_PKG_HOMEPAGE=https://www.libreoffice.org/
TERMUX_PKG_DESCRIPTION="LXTask is a GUI application for the Lightweight X11 Desktop Environment (LXDE)"
TERMUX_PKG_LICENSE="MPL-2.0, LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=24.2.3
_LIBREOFFICE_VERSION=24.2.3.2
TERMUX_PKG_SRCURL=https://download.documentfoundation.org/libreoffice/src/$TERMUX_PKG_VERSION/libreoffice-$_LIBREOFFICE_VERSION.tar.xz
TERMUX_PKG_SHA256=f6e2059cd85d07793e8d95828b2412906bdba8bf61a5f76b8c51907898481e64
# Ref: https://gitlab.archlinux.org/archlinux/packaging/packages/libreoffice-fresh/-/blob/main/PKGBUILD?ref_type=heads
# TODO: to be added compared to Archlinux deps="libwpd, libwps, neon, nspr, redland, lpsolve, gcc-libs, sh, libvisio, libetonyek, libodfgen, libcdr, libmspub, nss, clucene, libpagemaker, libabw, libmwaw, libe-book, liblangtag, libexttextcat, liborcus, libcmis, libzmf, libnumbertext, libfreehand, libstaroffice, libepubgen, libqxp, box2d, libldap, expat, glib2, glibc, librevenge"
# TODO/FIXME: xdg-utils is unsafe for on device build
TERMUX_PKG_DEPENDS="which, bison, hunspell, python, pango, libjpeg-turbo, libxrandr, libhyphen, libgraphite, libicu, libxslt, libglvnd, poppler, harfbuzz-icu, hicolor-icon-theme, desktop-file-utils, shared-mime-info, libxinerama, cups, lcms2, libwebp, libtommath, libatomic-ops, xmlsec, gpgme, libepoxy, libzxing-cpp, fontconfig, zlib, libpng, freetype, libraptor2, libxml2, libcairo, libx11, boost, libtiff, libxext, openjpeg, dbus"
TERMUX_PKG_BUILD_DEPENDS="gtk4, gtk3, qt5-qtbase, qt6-qtbase"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--without-java
--disable-nss
--disable-curl
--disable-libcmis
--without-system-clucene
--without-system-xmlsec

--without-system-librevenge
--without-system-libodfgen
--without-system-libepubgen
--without-system-libvisio
--without-system-libwpd
--without-system-libwpg
--without-system-libwps
--without-system-libcdr
--without-system-libmspub
--without-system-libmwaw
--without-system-libetonyek
--without-system-libfreehand
--without-system-libebook
--without-system-libabw
--without-system-libpagemaker
--without-system-libqxp
--without-system-libzmf
--without-system-libstaroffice

--without-system-cppunit

--disable-lpsolve
--disable-coinmp
--disable-ldap
--enable-dbus
--enable-gtk3
--enable-gtk4
--enable-qt5
--enable-qt6
--enable-python=system
--without-fonts
--with-system-libxml
--without-myspell-dicts
--without-system-firebird
--with-system-zxing
--with-system-dicts
--with-external-dict-dir=$TERMUX_PREFIX/share/hunspell
--with-external-hyph-dir=$TERMUX_PREFIX/share/hyphen
--with-system-graphite
--with-system-boost
--with-system-icu
--with-system-cairo
--with-system-libs
--with-system-headers
"

termux_step_pre_configure() {
	sed -i -e 's/linux-gnu\*|k\*bsd\*-gnu\*|linux-musl\*)/linux-*|k*bsd*-gnu*)/' configure.ac
	sed -i -e 's/linux-gnu\*|k\*bsd\*-gnu\*|linux-musl\*)/linux-*|k*bsd*-gnu*)/' configure
}
