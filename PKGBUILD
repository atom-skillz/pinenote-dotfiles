# Maintainer: Doug Newgard <scimmia at archlinux dot info>

_reponame=pinenote-dotfiles
pkgname=pinenote-as-hyprland-theme-git
pkgver=0.1.r6.g77304a8
pkgrel=1
pkgdesc="Archlinux Theme for SDDM"
arch=('any')
url="https://github.com/atom-skillz/$_reponame"
license=('GPLv3')
depends=(
    'sway' 'swaybg' 'swayidle'
    'waybar'
    'foot'
    'wvkbd'
    'iio-sensor-proxy' # Currently not working
    'neovim'
    'git'
)
makedepends=('git')
source=("git+https://github.com/atom-skillz/$_reponame.git")
sha256sums=('SKIP')

pkgver() {
  cd $_reponame
  printf '0.1.r%s.g%s' "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  install -Dm644 $_reponame/.config/sway/*.conf -t "$pkgdir/usr/share/sway/themes/pinenote-as/sway/"
  install -Dm644 $_reponame/.config/foot/*.conf -t "$pkgdir/usr/share/foot/themes/pinenote-as/foot/"
  install -Dm644 $_reponame/.config/waybar/*.{jsonc,css} -t "$pkgdir/usr/share/hypr/themes/pinenote-as/waybar/"
  install -Dm644 $_reponame/.bin/* -t "$pkgdir/usr/share/hypr/themes/pinenote-as/scripts/"
}
