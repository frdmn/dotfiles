dotfiles
========

[Ansible](https://www.ansible.com/)-based dotfile setup for macOS systems that is really simple and easy to understand.

iTerm | Visual Studio Code
--- | ---
[![](https://asciinema.org/a/cPPgWS3Ju2twoyl7U5UfFYOYI.svg)](https://asciinema.org/a/cPPgWS3Ju2twoyl7U5UfFYOYI) <center><sub><sup>(click screenshot for a demo execution)</sup></sub></center> | ![](https://i.imgur.com/abpdBUY.png)

### Features

* Dotfile wrapper based on [Ansible](https://www.ansible.com/), that takes care of...
    * bash/zsh configuration files
    * Homebrew and Cask packages
    * Mac App Store apps
    * Node `npm` packages
    * Ruby `gem` packages
    * Python `pip` packages
    * macOS `defaults` (plist settings)
* Docker host cleanup/prune
* [Vundle](https://github.com/gmarik/Vundle.vim) VIm plugin manager
* Fish-like auto autosuggestions in ZSH ([zsh-autosuggestions](https://github.com/tarruda/zsh-autosuggestions) plugin)
* Several additional, preconfigured ZSH plugins (using [zplug](https://github.com/zplug/zplug)):
    * [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search) plugin
    * [zsh-notify](https://github.com/marzocchi/zsh-notify) plugin
    * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-notify) plugin
    * [zsh-autosuggestions](https://github.com/tarruda/zsh-autosuggestions) plugin
* Configured GnuPG including `gpg-agent` and enabled commit signatures in git
* [One Dark Pro](https://github.com/Binaryify/OneDark-Pro) themes for iTerm and VSCode (even though VSCode is _currently_ controlled by the [built-in sync](https://code.visualstudio.com/docs/editor/settings-sync))
* ~~Commented code, so you know what is actually going on~~ (Not anymore, to be honest...)

### Installation

1. Make sure to uprade Pip Homebrew before installing Ansible:

    ```bash
    sudo pip3 install --upgrade pip
    pip3 install ansible
    ```

2. Fork this repository:

    ```bash
    git clone https://github.com/frdmn/dotfiles ~/.dotfiles
    ```

3. Run the bootstrap script to initially install and setup the dotfiles and its components:

    ```bash
    ~/.dotfiles/bootstrap
    ```

### Available commands

```bash
# (Re-)apply dotfile related tasks
$ dotfiles

# (Re-)apply dotfile and bootstrap related tasks (by default only "dotfiles" will be execated when not specifying --botstrap)
$ dotfiles --bootstrap

# Apply a specific tag/task
$ dotfiles <tag>
```

### Information

Explanation of the directories:

```
./files/
└── This directory contains all optional files that are not related to
    Ansible roles in specific. For example: dotfile source files, iTerm
    configuration files, etc.

./files/dotfiles/
└── This folder contains all the source dotfiles.

./files/iterm2/
└── This folder contains the iTerm 2 plist configuration.

./roles/
└── In this directory you will find all available Ansible roles that I
    currently use within this project.

./roles/{rolename}/defaults/main.yml
└── This file contains variables and lists to work with in the actual
    Ansible tasks, like package names/lists.

./roles/{rolename}/tasks/main.yml
└── This is the actual Ansible tasks that uses the variable (defaults)
    file and proceeds with the role specific function.

./bootstrap
└── Basically the base wrapper that I use to install and update the
    dotfiles as well as interact with the `ansible-playbook` command.

./group_vars/all
└── This file contains variables that apply to all groups available.

./hosts
└── The inventory file for Ansible, for now it only contains the
    localhost machine
```

### License

[MIT](LICENSE)

### Version

2.0
