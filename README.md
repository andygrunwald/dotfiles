# dotfiles

My .files.

This is a fork of [holman/dotfiles](https://github.com/holman/dotfiles) with several adjustments
and ideas from other dotfiles.
The structure is they same, because @holman did a good job here. Thank you, man!

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

## Not automated (yet)

Here is a list of things i need to do if i set up a new machine (aka my .files TODO list):

* OSX: Set apps in Dock
* Chrome: Install Plugins
* Atom: Settings + Plugins
* Zsh
* Subversion: Settings
* Tunnelblick: Configuration
* Apple Mail: Configuration
* Oh-My-Zsh
* Install software:
    * Adobe Acrobat Reader
    * Microsoft Office
    * Keynote
    * PHPStorm
    * PyCharm
    * IntelliJ IDEA
    * Remember The Milk

## Inspired by ...

The content of this repository was heavily inspired by

* [holman/dotfiles](https://github.com/holman/dotfiles)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
* [awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
* [dotfiles.github.io](https://dotfiles.github.io/)
