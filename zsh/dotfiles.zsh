alias bork="${HOME}/.dotfiles/bork/bin/bork"

dotfiles() {
    cd ${HOME}/.dotfiles
    ./dotfiles $1
    cd -
}
