#!/bin/sh
#
# oh-my-zsh
#
# This installs oh-my-zsh.
# A cool collection of plugins on top of zsh
# See
#   * http://ohmyz.sh/
#   * https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

# Check for Homebrew
if [ ! -d "$HOME/.oh-my-zsh" ];
then
  echo "  Installing oh-my-zsh for you."
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

exit 0
