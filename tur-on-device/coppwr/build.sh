TERMUX_PKG_HOMEPAGE=https://dimtpap.ovh/coppwr
TERMUX_PKG_DESCRIPTION="Low level control GUI for the PipeWire multimedia server"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=1.6.0
TERMUX_PKG_SRCURL=https://github.com/dimtpap/coppwr/archive/refs/tags/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=b6ed84f3313a0a0a76d0303605d1ed55aa4ea94adb713f810680c7bde0637a8e
TERMUX_PKG_DEPENDS="pipewire"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	termux_setup_rust
	cargo build --jobs $TERMUX_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/coppwr
}
