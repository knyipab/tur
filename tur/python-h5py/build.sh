# From: https://github.com/termux/termux-packages/blob/c4db683e0c337c1c9246c1c4b43252554e28b72d/disabled-packages/python-pandas/build.sh
TERMUX_PKG_HOMEPAGE=https://www.h5py.org/
TERMUX_PKG_DESCRIPTION="General-purpose Python bindings for the HDF5 library"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION="3.10.0"
TERMUX_PKG_GIT_BRANCH="$TERMUX_PKG_VERSION"
TERMUX_PKG_SRCURL=git+https://github.com/h5py/h5py
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++, python, python-numpy, libhdf5"
TERMUX_PKG_PYTHON_COMMON_DEPS="Cython, numpy, pkgconfig, wheel, setuptools"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_UPDATE_TAG_TYPE="latest-release-tag"

termux_step_pre_configure() {
	CFLAGS="-I$TERMUX_PYTHON_HOME/site-packages/numpy/core/include $CFLAGS"
	CPPFLAGS="-I$TERMUX_PYTHON_HOME/site-packages/numpy/core/include $CPPFLAGS"
	CXXFLAGS="-I$TERMUX_PYTHON_HOME/site-packages/numpy/core/include $CXXFLAGS"
	LDFLAGS+=" -lm"
}
