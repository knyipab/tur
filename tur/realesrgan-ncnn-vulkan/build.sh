TERMUX_PKG_HOMEPAGE=https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan
TERMUX_PKG_DESCRIPTION="NCNN implementation of Real-ESRGAN for General Image Restoration."
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.2.0
TERMUX_PKG_SRCURL=git+https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan
TERMUX_PKG_DEPENDS="glslang, libwebp, vulkan-loader"
TERMUX_PKG_ANTI_BUILD_DEPENDS="vulkan-loader"
TERMUX_PKG_BUILD_DEPENDS="vulkan-loader-generic"
TERMUX_PKG_GIT_BRANCH="v$TERMUX_PKG_VERSION"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DUSE_SYSTEM_WEBP=ON"

termux_step_get_source () {
	local TMP_CHECKOUT=$TERMUX_PKG_CACHEDIR/tmp-checkout
	local TMP_CHECKOUT_VERSION=$TERMUX_PKG_CACHEDIR/tmp-checkout-version

	if [ ! -f $TMP_CHECKOUT_VERSION ] || [ "$(cat $TMP_CHECKOUT_VERSION)" != "$TERMUX_PKG_VERSION" ]; then
		if [ "$TERMUX_PKG_GIT_BRANCH" == "" ]; then
			TERMUX_PKG_GIT_BRANCH=v${TERMUX_PKG_VERSION#*:}
		fi

		rm -rf $TMP_CHECKOUT
		git clone --depth 1 \
			--branch $TERMUX_PKG_GIT_BRANCH \
			${TERMUX_PKG_SRCURL:4} \
			$TMP_CHECKOUT

		pushd $TMP_CHECKOUT
		# >>>>> git submoudle patch here: url to https patch rather than ssh
		sed -i -e 's/git@github.com:/http:\/\/github.com\//g' "./.gitmodules"
		# <<<<<
		git submodule update --init --recursive --depth=1
		popd

		echo "$TERMUX_PKG_VERSION" > $TMP_CHECKOUT_VERSION
	fi

	rm -rf $TERMUX_PKG_SRCDIR
	cp -Rf $TMP_CHECKOUT $TERMUX_PKG_SRCDIR
}

termux_step_pre_configure () {
	mv "$TERMUX_PKG_SRCDIR/src/"* "$TERMUX_PKG_SRCDIR/"
	LDFLAGS+=" -lc++_shared -llog -landroid"
}

termux_step_make_install () {
	mkdir -p "$TERMUX_PREFIX/opt/realesrgan-ncnn-vulkan"
	
	# install binary
	install -Dm700 realesrgan-ncnn-vulkan "$TERMUX_PREFIX/opt/realesrgan-ncnn-vulkan/realesrgan-ncnn-vulkan"
	local system_lib="/system/lib"
	[[ "${TERMUX_ARCH_BITS}" == "64" ]] && system_lib+="64"
	system_lib+="/libvulkan.so"
	local prefix_lib="${TERMUX_PREFIX}/lib/libvulkan.so"
	
	cat <<- EOF > "$TERMUX_PREFIX/bin/realesrgan-ncnn-vulkan"
	#!${TERMUX_PREFIX}/bin/sh
	if [ -e "${system_lib}" ]; then
	export LD_PRELOAD="${system_lib}:\$LD_PRELOAD"
	fi
	"$TERMUX_PREFIX/opt/realesrgan-ncnn-vulkan/realesrgan-ncnn-vulkan" "\$@"
	EOF
	chmod 700 "$TERMUX_PREFIX/bin/realesrgan-ncnn-vulkan"
	
	# install models
	URL="https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.5.0/realesrgan-ncnn-vulkan-20220424-ubuntu.zip"
	TMP_FILE="$(mktemp)"
	mkdir -p "$TERMUX_PREFIX/opt/realesrgan-ncnn-vulkan/models"
	curl -s -L -o "$TMP_FILE" "$URL" && \
	unzip -q -d "$TERMUX_PREFIX/opt/realesrgan-ncnn-vulkan/models" "$TMP_FILE" "models/*"
	rm "$TMP_FILE"
}
