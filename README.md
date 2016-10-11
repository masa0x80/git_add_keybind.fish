# git_add_keybind.fish

[![MIT LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)

## Overview

This is a `git-add` keybinding plugin for fish-shell.

## Installation

With [fresco]
```
fresco masa0x80/git_add_keybind.fish
```

With [fisherman]
```
fisher masa0x80/git_add_keybind.fish
```

## Dependencies

- [fzf], [peco] or [percol]

## Usage

To `git-add` files, type ctrl-g ctrl-a (`\cg\ca`).

## Setup

### `GIT_ADD_KEYBIND`

`GIT_ADD_KEYBIND` is the key binding to add selected files by an interactive filter tool.
It is defaulted to `\cg\ca` (ctrl-g ctrl-a).

[fzf]: https://github.com/junegunn/fzf
[peco]: https://github.com/peco/peco
[percol]: https://github.com/mooz/percol
[fresco]: https://github.com/masa0x80/fresco
[fisherman]: https://github.com/fisherman/fisherman
