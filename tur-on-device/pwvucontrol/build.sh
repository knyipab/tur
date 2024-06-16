TERMUX_PKG_HOMEPAGE=https://github.com/saivert/pwvucontrol
TERMUX_PKG_DESCRIPTION="Pipewire Volume Control"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=0.4.3
TERMUX_PKG_SRCURL=https://github.com/saivert/pwvucontrol/releases/download/$TERMUX_PKG_VERSION/pwvucontrol-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=33af20bdda94a61f10efa0f74fa48ec8f4f94fb7ac3e3b83e23a63efa7fc6705
TERMUX_PKG_DEPENDS="pipewire"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	if [ "${TERMUX_ON_DEVICE_BUILD}" = false ]; then
		termux_error_exit "This package doesn't support cross-compiling."
	fi
}

termux_step_configure() {
	termux_setup_meson
	termux_setup_rust

	TERMUX_MESON_CROSSFILE=$TERMUX_PKG_TMPDIR/meson-crossfile-$TERMUX_ARCH.txt
	sed -i "s/cmake = 'cmake'/cmake = 'cmake'\nrust = 'rustc'/" "$TERMUX_MESON_CROSSFILE"

	local _meson_buildtype="minsize"
	local _meson_stripflag="--strip"
	if [ "$TERMUX_DEBUG_BUILD" = "true" ]; then
		_meson_buildtype="debug"
		_meson_stripflag=
	fi

	CC=gcc CXX=g++ CFLAGS= CXXFLAGS= CPPFLAGS= LDFLAGS= $TERMUX_MESON \
		setup \
		$TERMUX_PKG_SRCDIR \
		$TERMUX_PKG_BUILDDIR \
		--$(test "${TERMUX_PKG_MESON_NATIVE}" = "true" && echo "native-file" || echo "cross-file") $TERMUX_MESON_CROSSFILE \
		--prefix $TERMUX_PREFIX \
		--libdir lib \
		--buildtype ${_meson_buildtype} \
		${_meson_stripflag} \
		$TERMUX_PKG_EXTRA_CONFIGURE_ARGS \
		|| (termux_step_configure_meson_failure_hook && false)
}
