TERMUX_PKG_HOMEPAGE="https://gitlab.com/orcus/orcus/blob/master/README.md"
TERMUX_PKG_DESCRIPTION="File import filter library for spreadsheet documents."
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.19.2
TERMUX_PKG_SRCURL=https://kohei.us/files/orcus/src/liborcus-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=69ed26a00d4aaa7688e62a6e003cbc81928521a45e96605e53365aa499719e39
TERMUX_PKG_DEPENDS="boost-libs, libixion, python, zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, mdds"

# TODO: detect Archlinux update
