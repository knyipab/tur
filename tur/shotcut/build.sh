TERMUX_PKG_HOMEPAGE=https://shotcut.org/
TERMUX_PKG_DESCRIPTION="Cross-platform Qt based Video Editor"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=24.04.28
TERMUX_PKG_SRCURL=https://github.com/mltframework/shotcut/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=cc40aeb8b7f50fb8e102f45e1accbc4b4153f14b565154a4f4a6ec446f5591e4
TERMUX_PKG_DEPENDS="mlt, qt6-qtbase, qt6-qtmultimedia, qt6-imageformats, qt5-qttools-opengl, qt6-qtwebsockets-opengl, fftw, frei0r-plugins, sdl, sdl2"
# 'qt6-declarative' 'qt6-imageformats' 'qt6-multimedia' 'qt6-translations' 'qt6-charts'
TERMUX_PKG_SUGGESTS="ffmpeg, libexif, libsoxr, sox, rubberband, libsamplerate"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_BUILD_TYPE=Debug
"