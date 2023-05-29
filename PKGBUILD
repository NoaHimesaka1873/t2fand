# Maintainer: Noa Himesaka <himesaka@noa.codes>
pkgname=t2fand
pkgver=1.2.0
pkgrel=1
pkgdesc="A simple daemon to control fan speed on Macs with T2 chip"
arch=('x86_64')
license=('GPL3')
depends=('linux-t2' 'python')
makedepends=('git')
source=("src::git+https://github.com/NoaHimesaka1873/t2fand.git")
sha256sums=('SKIP')

build() {
 echo "No build needed"
}

package() {
    cd "$srcdir/src"
    install -Dm700 t2fand "$pkgdir/usr/bin/t2fand"
    install -Dm644 t2fand.service "$pkgdir/usr/lib/systemd/system/t2fand.service"
}
