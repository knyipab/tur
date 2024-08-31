TERMUX_PKG_HOMEPAGE=http://lpsolve.sourceforge.net/
TERMUX_PKG_DESCRIPTION="a Mixed Integer Linear Programming (MILP) solver"
TERMUX_PKG_LICENSE="LGPL-2.1, GPL-2.0, BSD"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=5.5.2.11
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/project/lpsolve/lpsolve/${TERMUX_PKG_VERSION}/lp_solve_${TERMUX_PKG_VERSION}_source.tar.gz
TERMUX_PKG_SHA256=6d4abff5cc6aaa933ae8e6c17a226df0fc0b671c438f69715d41d09fe81f902f

# TODO: detect Archlinux update

termux_step_pre_configure() {
	chmod +x configure
}
