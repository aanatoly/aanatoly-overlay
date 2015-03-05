# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-misc/physlock/physlock-0.4.5.ebuild,v 1.1 2015/01/10 07:03:14 radhermit Exp $

EAPI=5

inherit toolchain-funcs eutils

DESCRIPTION="PAM based X11 screen locker that hides desktop content"
HOMEPAGE="https://github.com/aanatoly/xtrlock-pam"
SRC_URI="https://github.com/aanatoly/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}
	x11-proto/xproto"

