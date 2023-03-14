# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

ECM_HANDBOOK="optional"
KFMIN=5.102.0
PVCUT=$(ver_cut 1-3)
QTMIN=5.15.7
inherit ecm plasma.kde.org optfeature

DESCRIPTION="Flatpak permission management KCM"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-qt/qtquickcontrols-${QTMIN}:5
	>=dev-qt/qtsvg-${QTMIN}:5
	>=kde-frameworks/kcmutils-${KFMIN}:5
	>=kde-frameworks/kconfig-${KFMIN}:5
	>=kde-frameworks/kdeclarative-${KFMIN}:5
	>=kde-frameworks/ki18n-${KFMIN}:5
	sys-apps/flatpak
"
RDEPEND="${DEPEND}
	>=dev-qt/qtquickcontrols2-${QTMIN}:5
"
pkg_postinst() {
	ecm_pkg_postinst
}
