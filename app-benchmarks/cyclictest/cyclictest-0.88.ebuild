# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Kernel RT benchmarks"
HOMEPAGE="http://kernel.org"
EGIT_REPO_URI="git://git.kernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git"
SRC_URI="http://ftp.de.debian.org/debian/pool/main/r/rt-tests/rt-tests_0.88.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

S="${WORKDIR}/rt-tests"


src_compile() {
	emake NUMA=0
}

src_install() {
	dodir /usr/bin	
	dobin cyclictest
}
