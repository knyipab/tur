TERMUX_PKG_HOMEPAGE=https://helpx.adobe.com/camera-raw/using/adobe-dng-converter.html
TERMUX_PKG_DESCRIPTION="Adobe DNG Converter"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_LICENSE_FILE="COPYRIGHT"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION="16.1"
TERMUX_PKG_SKIP_SRC_EXTRACT=true
# TERMUX_PKG_DEPENDS="$([ "$TERMUX_ARCH" = "aarch64" ] && echo "hangover-wine" || echo "wine-stable")"
if [ "$TERMUX_ARCH" = "aarch64" ]; then
    TERMUX_PKG_DEPENDS="hangover-wine"
else
    TERMUX_PKG_DEPENDS="wine-stable"
fi
TERMUX_PKG_BUILD_DEPENDS="winetricks"
TERMUX_PKG_BLACKLISTED_ARCHES="arm, i686"

termux_step_get_source() {
    wget "http://download.adobe.com/pub/adobe/dng/win/AdobeDNGConverter_x64_${TERMUX_PKG_VERSION/./_}.exe" -P "${TERMUX_PKG_SRCDIR}"
    cp "$TERMUX_PKG_BUILDER_DIR/COPYRIGHT" "$TERMUX_PKG_SRCDIR/"
}

termux_step_configure() {
    if [ "$TERMUX_ON_DEVICE_BUILD" = "false" ]; then
        "$TERMUX_PKG_BUILDER_DIR/ubuntu-setup-wine.sh"
    fi
}

termux_step_make() {
    install -m755 -d "$TERMUX_PKG_SRCDIR"/tmp "$TERMUX_PKG_SRCDIR"/tmp/env "$TERMUX_PKG_SRCDIR"/tmp/local
    export WINEPREFIX="$TERMUX_PKG_SRCDIR"/tmp/env
    export XDG_DATA_HOME="$TERMUX_PKG_SRCDIR"/tmp/local
    export WINEDLLOVERRIDES="mscoree=,mshtml="
    winetricks win10
    # TODO: on-device build alternative to xvfb-run
    local wine_install="$(printf "%q " wine "${TERMUX_PKG_SRCDIR}"/AdobeDNGConverter_x64_${TERMUX_PKG_VERSION/./_}.exe /VERYSILENT)"
    xvfb-run --auto-servernum bash -c "$wine_install ; wineserver --wait"
    rm "${TERMUX_PKG_SRCDIR}"/AdobeDNGConverter_x64_${TERMUX_PKG_VERSION/./_}.exe
}

termux_step_make_install() {
    mkdir -p "${TERMUX_PREFIX}/share/${TERMUX_PKG_NAME}"
    # use `mv` instead of `cp -ra` to save space in compilation
    mv "${TERMUX_PKG_SRCDIR}/tmp/env/drive_c/Program Files/Adobe/"* "${TERMUX_PREFIX}/share/${TERMUX_PKG_NAME}/"
    mv "${TERMUX_PKG_SRCDIR}/tmp/env/drive_c/ProgramData/Adobe/"* "${TERMUX_PREFIX}/share/${TERMUX_PKG_NAME}/"
    # find "${TERMUX_PREFIX}" -type d -exec chmod 755 "{}" \;
    # find "${TERMUX_PREFIX}" -type f -exec chmod 644 "{}" \;
    cp -a "${TERMUX_PKG_BUILDER_DIR}/dngconverter" "${TERMUX_PREFIX}/bin/"
    install -p -D "${TERMUX_PKG_BUILDER_DIR}/dngconverter.desktop" "${TERMUX_PREFIX}/share/applications/"
    install -p -D "${TERMUX_PKG_BUILDER_DIR}/dngconverter.svg" "${TERMUX_PREFIX}/share/icons/hicolor/scalable/apps/"
}
