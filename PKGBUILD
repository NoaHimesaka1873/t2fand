# Maintainer: Noa Himesaka <himesaka AT noa DOT codes>
pkgname=t2fanrd
pkgrel=1
pkgver=r9.68859ca
pkgdesc="Supercharged T2 fan control daemon, RIIR'd!"
url="https://github.com/GnomedDev/t2fanrd"
arch=('x86_64')
license=('GPL3')
makedepends=('git' 'cargo')
conflicts=('t2fand')
replaces=('t2fand')
source=("git+https://github.com/GnomedDev/t2fanrd"
         t2fanrd.service
       )
sha256sums=('SKIP'
            '47a417f0c532b5538af8237caa81d071e9861b5669676512e3a8a30df192001e')

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short=7 HEAD)"
}

prepare() {
    cd "$pkgname"
    export RUSTUP_TOOLCHAIN=stable
    cargo fetch --locked --target "$CARCH-unknown-linux-gnu"
}

build() {
    cd "$pkgname"
    export RUSTUP_TOOLCHAIN=stable
    export CARGO_TARGET_DIR=target
    cargo build --frozen --release --all-features
}

package() {
	# Install binary
	install -Dm755 "$pkgname/target/release/t2fanrd" "$pkgdir/usr/bin/t2fanrd"
	install -Dm644 t2fanrd.service "$pkgdir/usr/lib/systemd/system/t2fanrd.service"
}
