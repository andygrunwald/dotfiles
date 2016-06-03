# dotfiles

My .files.

This is a fork of [holman/dotfiles](https://github.com/holman/dotfiles) with several adjustments
and ideas from other dotfiles.
The structure is they same, because [Zach](https://github.com/holman) did a good job here. Thank you, man!

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and stuff.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

Run this:

```sh
git clone https://github.com/andygrunwald/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Before reinstallation

* Backup:
	* SSH-Keys
	* Settings of FileZilla and SequelPro

## Not automated (yet)

Here is a list of things i need to do if i set up a new machine (aka my .files TODO list):

* Atom: Settings + Plugins
    * Autocomplete-Go
    * go-plus
    * pretty-json
* Tunnelblick: Configuration
* Install software:
    * Microsoft Office
    * Pages, Numbers and Keynote
    * Remember The Milk
    * SmartConverter (see [caskroom/homebrew-cask#21660](https://github.com/caskroom/homebrew-cask/issues/21660))

## Known issues

* Homebrew installation is not headless. See [holman/dotfiles #238](https://github.com/holman/dotfiles/issues/238) and [Homebrew/install/ #44](https://github.com/Homebrew/install/issues/44)
* zsh is not set to standard shell. See [holman/dotfiles #239](https://github.com/holman/dotfiles/issues/239)
* Tunnelblick installation fail with `brew cask`. See [caskroom/homebrew-cask #12858](https://github.com/caskroom/homebrew-cask/issues/12858)
* Remember The Milk not available via `brew cask`. Reason: App only downloadable while logged in. Support request to RememberTheMilk was sent.

## Inspired by ...

The content of this repository was heavily inspired by

* [holman/dotfiles](https://github.com/holman/dotfiles)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
* [awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
* [dotfiles.github.io](https://dotfiles.github.io/)
