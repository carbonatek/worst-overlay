# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A clone of Transport Tycoon Deluxe (JGR Patch Pack)"
HOMEPAGE="https://github.com/JGRennison/OpenTTD-patches"
SRC_URI="https://github.com/JGRennison/OpenTTD-patches/releases/download/jgrpp-${PV}/${P}-linux-generic-amd64.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}/${P}-linux-generic-amd64"
RESTRICT="strip"
src_unpack() {
	unpack ${P}-linux-generic-amd64.tar.xz
}

src_install() {
	insinto /opt/openttd-jgrpp
	into /opt/openttd-jgrpp
	doins -r ${S}/*
	fperms +x /opt/openttd-jgrpp/openttd
}
