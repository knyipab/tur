TERMUX_PKG_HOMEPAGE=https://www.qt.io/
TERMUX_PKG_DESCRIPTION="Qt Quick Controls module"
TERMUX_PKG_LICENSE="LGPL-3.0"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION=5.15.10
TERMUX_PKG_SRCURL="https://download.qt.io/official_releases/qt/${TERMUX_PKG_VERSION%.*}/${TERMUX_PKG_VERSION}/submodules/qtquickcontrols-everywhere-opensource-src-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=a06a6e73109857f0fce7e4d6a75fbe6b8ce4e27bc4f99802a6948a86daa9efeb
TERMUX_PKG_DEPENDS="libc++, qt5-qtbase-opengl, qt5-qtdeclarative-opengl"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-opengl-cross-tools"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_CONFLICTS="qt5-qtquickcontrols"
TERMUX_PKG_REPLACES="qt5-qtquickcontrols"
TERMUX_PKG_PROVIDES="qt5-qtquickcontrols"

termux_step_configure () {
    "${TERMUX_PREFIX}/opt/qt/cross/bin/qmake" \
        -spec "${TERMUX_PREFIX}/lib/qt/mkspecs/termux-cross"
}

termux_step_post_make_install() {
    #######################################################
    ##
    ##  Fixes & cleanup.
    ##
    #######################################################

    ## Remove *.la files.
    find "${TERMUX_PREFIX}/lib" -iname \*.la -delete
}

