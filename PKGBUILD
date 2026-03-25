# Maintainer: Shashoto Nur shashoto.nur@proton.me
pkgname=fahplay
pkgver=1.0.0
pkgrel=1
pkgdesc="Plays 'fahhhhh' when a shell command fails (Bash/Zsh)"
arch=('any')
url="https://github.com/shashotoNur/${pkgname}"
license=('GPL3')
depends=('alsa-utils')
install=${pkgname}.install
source=("$pkgname-$pkgver.tar.gz::https://github.com/shashotoNur/${pkgname}/archive/refs/tags/v${pkgver}.tar.gz")
sha256sums=('530c0ccb899c5af204fb54b7f29a9c7b0dc8af6975964d99dbc4fbfb6ea4a63a'
            '4ce91679848632c77dc265fabb19a057ee812ca97bab54691936ef4eb160388d')

package() {
    cd "$pkgname-$pkgver"

    install -Dm644 ${pkgname}.wav "${pkgdir}/usr/share/${pkgname}/${pkgname}.wav"
    install -Dm755 ${pkgname}.sh "${pkgdir}/usr/share/${pkgname}/${pkgname}.sh"
}