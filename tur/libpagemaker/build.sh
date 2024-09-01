TERMUX_PKG_HOMEPAGE="https://wiki.documentfoundation.org/DLP/Libraries/libpagemaker"
TERMUX_PKG_DESCRIPTION="a library that parses the file format of Aldus/Adobe PageMaker documents"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=0.0.4
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libpagemaker/libpagemaker-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=66adacd705a7d19895e08eac46d1e851332adf2e736c566bef1164e7a442519d
TERMUX_PKG_DEPENDS="librevenge"
TERMUX_PKG_BUILD_DEPENDS="boost"
# TODO: detect Archlinux update

termux_step_pre_configure() {
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
}
