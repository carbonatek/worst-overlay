# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit linux-mod-r1 udev

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/johnfanv2/LenovoLegionLinux"
	EGIT_MIN_CLONE_TYPE="single"
else
	SRC_URI="https://github.com/johnfanv2/LenovoLegionLinux/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="Additional drivers and tools for Lenovo Legion series' laptops"
HOMEPAGE="https://github.com/johnfanv2/LenovoLegionLinux"

LICENSE="GPL-2"
SLOT="0"

src_compile() {
	local modlist=( legion-laptop=kernel/drivers/platform/x86:kernel_module: )
	local modargs=( KERNEL_SOURCE_DIR="${KV_OUT_DIR}" )

	linux-mod-r1_src_compile
}

src_install() {
	linux-mod-r1_src_install
}

pkg_postinst() {
	linux-mod-r1_pkg_postinst
}

