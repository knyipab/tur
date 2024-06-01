TERMUX_PKG_HOMEPAGE=https://www.freedesktop.org/wiki/Software/cppunit
TERMUX_PKG_DESCRIPTION="A C++ unit testing framework"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.15.1"
TERMUX_PKG_SRCURL=https://dev-www.libreoffice.org/src/cppunit-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=89c5c6665337f56fd2db36bc3805a5619709d51fb136e51937072f63fcc717a7
TERMUX_PKG_BUILD_DEPENDS="doxygen"

termux_step_pre_configure() {
	## fix other archs hidden bugs
	## arm
	# ERROR: ./lib/libcppunit-1.15.so contains undefined symbols:
	#     51: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __aeabi_uidiv
	#     60: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __aeabi_idiv
	# SKIP: ./lib/libcppunit.a
	LDFLAGS+=" $($CC -print-libgcc-file-name)"
	autoreconf -fi
}
