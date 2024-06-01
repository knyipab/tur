TERMUX_PKG_HOMEPAGE=https://wiki.documentfoundation.org/DLP/Libraries/libabw
TERMUX_PKG_DESCRIPTION="a library that parses the file format of AbiWord documents"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.1.3"
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/libabw/libabw-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=e763a9dc21c3d2667402d66e202e3f8ef4db51b34b79ef41f56cacb86dcd6eed
TERMUX_PKG_DEPENDS="librevenge, libxml2"
TERMUX_PKG_BUILD_DEPENDS="boost, doxygen, gperf"

termux_step_pre_configure() {
	## fix other archs hidden bugs
	## aarch64
	# SKIP: ./lib/libabw-0.1.a
	# ERROR: ./lib/libabw-0.1.so contains undefined symbols:
	#     46: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __umoddi3
	## arm
	# SKIP: ./lib/libabw-0.1.a
	# ERROR: ./lib/libabw-0.1.so contains undefined symbols:
	#     45: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __aeabi_idiv
	#     50: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __aeabi_ul2d
	#     51: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __aeabi_uldivmod
	#     97: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __aeabi_uidiv
	# ERROR: Refer above
	## i686
	# SKIP: ./lib/libabw`-0.1.a
	# ERROR: ./lib/libabw-0.1.so contains undefined symbols:
	#     46: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __umoddi3
	# INFO: Done ... 1s
	# ERROR: Refer above
	## x86_64
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
	autoreconf -fi
}
