TERMUX_PKG_HOMEPAGE=https://shotcut.org/
TERMUX_PKG_DESCRIPTION="Cross-platform Qt based Video Editor"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=24.04.28
TERMUX_PKG_SRCURL=https://github.com/mltframework/shotcut/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=cc40aeb8b7f50fb8e102f45e1accbc4b4153f14b565154a4f4a6ec446f5591e4
TERMUX_PKG_DEPENDS="mlt, qt6-qtbase, qt6-qtcharts, qt6-qtdeclarative, qt6-qtimageformats, qt6-qtmultimedia, qt6-qttranslations, fftw, frei0r-plugins, sdl, sdl2"
TERMUX_PKG_BUILD_DEPENDS="qt6-qttools"
TERMUX_PKG_SUGGESTS="ffmpeg, libexif, libsoxr, sox, rubberband, libsamplerate"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_BUILD_TYPE=Debug
"
# #if defined(Q_OS_UNIX) && !defined(Q_OS_MAC)
#     QLibrary libJack("libjack.so.0");
#     if (!libJack.load()) {
#         QMessageBox::critical(this, qApp->applicationName(),
#                               tr("Error: This program requires the JACK 1 library.\n\nPlease install it using your package manager. It may be named libjack0, jack-audio-connection-kit, jack, or similar."));
#         ::exit(EXIT_FAILURE);
#     } else {
#         libJack.unload();
#     }
#     QLibrary libSDL("libSDL2-2.0.so.0");
#     if (!libSDL.load()) {
#         QMessageBox::critical(this, qApp->applicationName(),
#                               tr("Error: This program requires the SDL 2 library.\n\nPlease install it using your package manager. It may be named libsdl2-2.0-0, SDL2, or similar."));
#         ::exit(EXIT_FAILURE);
#     } else {
#         libSDL.unload();
#     }
# #endif