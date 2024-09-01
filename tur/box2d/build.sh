TERMUX_PKG_HOMEPAGE="http://www.box2d.org/"
TERMUX_PKG_DESCRIPTION="2D rigid body simulation library for games"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=3.0.0
TERMUX_PKG_SRCURL="https://github.com/erincatto/Box2D/archive/v${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=64ad759006cd2377c99367f51fb36942b57f0e9ad690ed41548dd620e6f6c8b1
TERMUX_PKG_BUILD_DEPENDS="git, glfw, libxcursor, libxinerama, libxkbcommon, libxt, xorg-xrandr"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	LDFLAGS+=" -lglfw -lGL"
}
