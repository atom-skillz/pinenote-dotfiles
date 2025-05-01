# Maintainer: Doug Newgard <scimmia at archlinux dot info>

_reponame=pinenote-dotfiles
pkgname=pinenote-as-hyprland-theme-git
pkgver=0.1.r4.g2e0db02
pkgrel=1
pkgdesc="Archlinux Theme for SDDM"
arch=('any')
url="https://github.com/atom-skillz/$_reponame"
license=('GPLv3')
depends=('hyprland' 'waybar')
makedepends=('git')
source=("git+https://github.com/atom-skillz/$_reponame.git")
sha256sums=('SKIP')

pkgver() {
  cd $_reponame
  printf '0.1.r%s.g%s' "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  install -Dm644 $_reponame/.config/hypr/*.conf -t "$pkgdir/usr/share/hypr/themes/pinenote-as/hypr/"
  install -Dm644 $_reponame/.config/kitty/*.conf -t "$pkgdir/usr/share/hypr/themes/pinenote-as/kitty/"
  install -Dm644 $_reponame/.config/waybar/*.{jsonc,css} -t "$pkgdir/usr/share/hypr/themes/pinenote-as/waybar/"
  install -Dm644 $_reponame/.bin/* -t "$pkgdir/usr/share/hypr/themes/pinenote-as/scripts/"
}
