dotfiles
========

[Bork](https://github.com/mattly/bork)-based dotfile setup for Mac and Linux systems.

* Dotfile wrapper based on [Bork](https://github.com/mattly/bork)
* Commented configuration options, so you know what is actually going on
* Theme support for your prompts based on [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
* Lightweight Atom package installer which uses a bundle [Atomfile](opt/Atomfile) (and `apm` of course)
* [Powerline](https://github.com/Lokaltog/powerline) in Vim and Tmux

### Installation

1. `git clone https://github.com/frdmn/dotfiles $HOME/.dotfiles`
2. `cd $HOME/.dotfiles`
3. `./dotfiles`

### Available commands

```sh
# Install/update the dotfiles
$ dotfiles

# Install/update one specific borkfile, located in borkfiles/
$ dotfiles <borkfile>
```

### Informations

Explanation of the directories:

```
./bork
└── This folder includes the bork git repository which gets updated as
    soon as you update the the dotfiles
./borkfiles
└── Includes the actual bork files, seperated to allow a condition based
    installation (system architecture, OS type)
./borkfiles/bootstrap.bork
└── This is the bootstrapping one, which applies the other Borkfiles in
    the same folder
./configs
└── Contains all of your configuration files which gets symlinked into $HOME
    as ".$FILE". So basically, your actual dotfiles (zshrc, vimrc, gitconfig)
./opt
└── Specific files which gets symlinked into non-$HOME folders. Used by
    atom.bork
./zsh
└── ZSH dependencies and plugins like the prompt, the zsh-syntax-highlighting.
    This folder gets symlinked into $HOME/.zsh and is used in ./configs/zshrc
```

### Credits

* [Kasperisager](https://github.com/kasperisager), for the idea with Bork
* [Robby Russell](https://github.com/robbyrussell), for oh-my-zsh's theme support
