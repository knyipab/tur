TERMUX_PKG_HOMEPAGE=https://shotcut.org/
TERMUX_PKG_DESCRIPTION="Cross-platform Qt based Video Editor"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=22.12.21
TERMUX_PKG_SRCURL=https://github.com/mltframework/shotcut/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=1b9a4f87b16a9751f9cb41588f22af4c00f085105d82cf21d095d9f3c280bc86
TERMUX_PKG_DEPENDS="mlt, qt5-qtbase-opengl, qt5-qtgraphicaleffects-opengl, qt5-qtmultimedia-opengl, qt5-qtquickcontrols-opengl, qt5-qtquickcontrols2-opengl, qt5-qttools-opengl, qt5-qtwebsockets-opengl, fftw, frei0r-plugins, sdl, sdl2"

TERMUX_PKG_SUGGESTS="ffmpeg, fftw, libexif, libsoxr, sox, rubberband, libsamplerate"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_BUILD_TYPE=Debug
"