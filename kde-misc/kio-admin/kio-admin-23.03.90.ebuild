# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

ECM_HANDBOOK="optional"
KFMIN=5.98.0
PVCUT=$(ver_cut 1-3)
QTMIN=5.15.0

inherit ecm gear.kde.org optfeature

DESCRIPTION="KIO plugin for root access via the admin:// protocol"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-qt/qtcore-${QTMIN}:5
	>=kde-frameworks/kio-${KFMIN}:5
	sys-auth/polkit-qt
"
RDEPEND="${DEPEND}
"
pkg_postinst() {
	ecm_pkg_postinst
}

