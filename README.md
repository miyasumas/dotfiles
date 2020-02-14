# dotfiles

## Install Homebrew

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Setup and install applications

```bash
$ git clone git@github.com:miyasumas/dotfiles.git
$ cd dotfiles
$ ./setup.sh
$ brew bundle
```

## Reinstall applications

```bash
$ cd dotfiles
$ brew bundle
$ brew bundle cleanup
```

