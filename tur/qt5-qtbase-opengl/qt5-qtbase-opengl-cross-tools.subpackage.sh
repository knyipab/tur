TERMUX_SUBPKG_DESCRIPTION="Tools for cross build on the host (NOT for Termux)"
TERMUX_SUBPKG_DEPENDS="qt5-qtbase-opengl"
TERMUX_SUBPKG_CONFLICTS="qt5-qtbase-cross-tools"
TERMUX_SUBPKG_REPLACES="qt5-qtbase-cross-tools"
TERMUX_SUBPKG_INCLUDE="
opt/qt/cross/bin/*
opt/qt/cross/lib/*
lib/qt/mkspecs/termux-cross/*
lib/qt/mkspecs/termux-host/*
"
