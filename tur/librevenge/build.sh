TERMUX_PKG_HOMEPAGE=https://sf.net/p/libwpd/librevenge/
TERMUX_PKG_DESCRIPTION="library for REVerses ENGineered formats filters"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.0.5"
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/libwpd/files/librevenge/librevenge-${TERMUX_PKG_VERSION}/librevenge-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=106d0c44bb6408b1348b9e0465666fa83b816177665a22cd017e886c1aaeeb34
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BUILD_DEPENDS="boost, cppunit, doxygen"

termux_step_pre_configure() {
	## fix other archs hidden bugs
	## aarch64
	# SKIP: ./lib/librevenge-0.0.a
	# ERROR: ./lib/librevenge-0.0.so contains undefined symbols:
	#      5: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __aarch64_ldadd8_relax
	#     27: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __aarch64_ldadd8_acq_rel
	#     46: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __aarch64_ldadd4_acq_rel
	# SKIP: ./lib/librevenge-generators-0.0.a
	# ERROR: ./lib/librevenge-generators-0.0.so contains undefined symbols:
	#    127: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __aarch64_ldadd8_acq_rel
	# SKIP: ./lib/librevenge-stream-0.0.a
	## i686
	# SKIP: ./lib/librevenge-0.0.a
	# ERROR: ./lib/librevenge-0.0.so contains undefined symbols:
	#     44: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __umoddi3
	# SKIP: ./lib/librevenge-generators-0.0.a
	# SKIP: ./lib/librevenge-stream-0.0.a
	# ERROR: Refer above
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
	autoreconf -fi
}
