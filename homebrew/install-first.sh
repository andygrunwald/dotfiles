#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# It is a bit special than the other install.sh files, because
# it is the foundation of mac package management.
# Thats why it is not named install.sh.
# We trigger this script before all other.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install homebrew for macOS
  if test "$(uname)" = "Darwin"
  then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

# Run Homebrew through the Brewfile
echo "› brew bundle"
brew bundle --verbose

exit 0
