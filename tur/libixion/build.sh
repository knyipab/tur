TERMUX_PKG_HOMEPAGE="https://gitlab.com/ixion/ixion/blob/master/README.md"
TERMUX_PKG_DESCRIPTION="A general purpose formula parser & interpreter"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.19.0
TERMUX_PKG_SRCURL="https://kohei.us/files/ixion/src/libixion-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=b4864d7a55351a09adbe9be44e5c65b1d417e80e946c947951d0e8428b9dcd15
TERMUX_PKG_DEPENDS="boost, python"
TERMUX_PKG_BUILD_DEPENDS="boost, mdds, libspdlog"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-static"
# TODO: detect Archlinux update
