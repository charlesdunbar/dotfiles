#!/usr/bin/env bash

set -euo pipefail

# Work in progress - needs to work on multiple flavors of Linux, BSD, and OSX

# Install zsh, git, and oh-my-zsh
case "$OSTYPE" in
    "darwin"*)
        brew install git tmux zsh zsh-completions
        chsh -s /bin/zsh
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ;;

    "linux"*)
        : "Linux"
        chsh -s /bin/zsh
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    ;;

    *"bsd"* | "dragonfly" | "bitrig")
        : "BSD"
    ;;

    "cygwin" | "msys" | "win32")
        : "Windows"
    ;;

    *)
        printf '%s\n' "Unknown OS detected, aborting..." >&2
        exit 1
    ;;
esac
