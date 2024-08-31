TERMUX_PKG_HOMEPAGE=https://notroj.github.io/neon/
TERMUX_PKG_DESCRIPTION="HTTP/1.1 and WebDAV client library"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.33.0
TERMUX_PKG_SRCURL=git+https://github.com/notroj/neon.git
TERMUX_PKG_DEPENDS="libexpat"
TERMUX_PKG_GIT_BRANCH="$TERMUX_PKG_VERSION"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-W no-dev"

termux_step_pre_configure() {
	echo "$TERMUX_PKG_VERSION" > .version
	autoreconf -fi
}
