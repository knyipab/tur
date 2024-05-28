TERMUX_PKG_HOMEPAGE=https://www.mltframework.org/
TERMUX_PKG_DESCRIPTION="Multimedia Framework. Author, manage, and run multitrack audio/video compositions."
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_VERSION=7.24.0
TERMUX_PKG_SRCURL=https://github.com/mltframework/mlt/releases/download/v${TERMUX_PKG_VERSION}/mlt-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=8cde7c22a1a5395abe913976c2edafb498f81ed81a5f49dd0e6e2d86d68bcec0
TERMUX_PKG_DEPENDS="ffmpeg, frei0r-plugins, jack, qt6-qtbase, qt6-qtsvg, sdl, sdl2, swig"
TERMUX_PKG_SUGGESTS="ffmpeg, fftw, libexif, libsoxr, sox, rubberband, libsamplerate"
# TODO: jack2, movit
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_FORCE_CMAKE=true

## patch on src/modules/frei0r/factory.c