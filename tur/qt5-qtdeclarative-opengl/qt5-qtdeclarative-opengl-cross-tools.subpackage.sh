TERMUX_SUBPKG_DESCRIPTION="Qt declarative module for cross build (NOT for Termux)"
TERMUX_SUBPKG_DEPENDS="qt5-qtdeclarative-opengl"
TERMUX_SUBPKG_INCLUDE="
opt/qt/cross/*
"
TERMUX_SUBPKG_CONFLICTS="qt5-qtdeclarative-cross-tools"
TERMUX_SUBPKG_REPLACES="qt5-qtdeclarative-cross-tools"
