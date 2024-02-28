TERMUX_PKG_HOMEPAGE=https://www.mltframework.org/
TERMUX_PKG_DESCRIPTION="Multimedia Framework. Author, manage, and run multitrack audio/video compositions."
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_VERSION=7.22.0
TERMUX_PKG_SRCURL=https://github.com/mltframework/mlt/releases/download/v${TERMUX_PKG_VERSION}/mlt-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=7cf4d9573a061d76902c6e12a2f09f5f461e7c697635233df82a63a3fe4d6da6
TERMUX_PKG_DEPENDS="ffmpeg, frei0r-plugins, qt5-qtbase-opengl, qt5-qtsvg, sdl, sdl2, swig"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-opengl-cross-tools"
TERMUX_PKG_ANTI_BUILD_DEPENDS="qt5-qtbase, qt5-qtbase-cross-tools"
TERMUX_PKG_SUGGESTS="ffmpeg, fftw, libexif, libsoxr, sox, rubberband, libsamplerate"
# TODO: jack2, movit
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_FORCE_CMAKE=true
