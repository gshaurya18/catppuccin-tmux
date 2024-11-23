#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"

case $SELECTED_THEME in
"latte")
  declare -A THEME=(
    ["background"]="#24283b" # Base
    ["foreground"]="#8c8fa1" # Overlay 2
    ["black"]="#4c4f69" # Text
    ["blue"]="#1e66f5" # Blue
    ["cyan"]="#04a5e5" # Sky
    ["green"]="#40a02b" # Green
    ["magenta"]="#ea76cb" # Pink
    ["red"]="#d20f39" # Red
    ["white"]="#dce0e8" # Crust
    ["yellow"]="#df8e1d" # Yellow

    ["bblack"]="#414868"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#f7768e"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;

"frappe")
  declare -A THEME=(
    ["background"]="#303446" # Base
    ["foreground"]="#949cbb" # Overlay 2
    ["black"]="#c6d0f5" # Text
    ["blue"]="#8caaee" # Blue
    ["cyan"]="#99d1db" # Sky
    ["green"]="#a6d189" # Green
    ["magenta"]="#f4b8e4" # Pink
    ["red"]="#e78284" # Red
    ["white"]="#232634" # Crust
    ["yellow"]="#e5c890" # Yellow

    ["bblack"]="#9699a3"
    ["bblue"]="#34548a"
    ["bcyan"]="#0f4b6e"
    ["bgreen"]="#33635c"
    ["bmagenta"]="#5a4a78"
    ["bred"]="#8c4351"
    ["bwhite"]="#343b58"
    ["byellow"]="#8f5815"
  )
  ;;


"Macchiato")
  declare -A THEME=(
    ["background"]="#24273a" # Base
    ["foreground"]="#939ab7" # Overlay 2
    ["black"]="#cad3f5" # Text
    ["blue"]="#8aadf4" # Blue
    ["cyan"]="#91d7e3" # Sky
    ["green"]="#a6da95" # Green
    ["magenta"]="#f5bde6" # Pink
    ["red"]="#ed8796" # Red
    ["white"]="#181926" # Crust
    ["yellow"]="#eed49f" # Yellow

    ["bblack"]="#9699a3"
    ["bblue"]="#34548a"
    ["bcyan"]="#0f4b6e"
    ["bgreen"]="#33635c"
    ["bmagenta"]="#5a4a78"
    ["bred"]="#8c4351"
    ["bwhite"]="#343b58"
    ["byellow"]="#8f5815"
  )
  ;;

*)
  # Default to mocha theme
  declare -A THEME=(
    ["base"]="#1e1e2e"
    ["overlay2"]="#9399b2"
    ["text"]="#cdd6f4"
    ["blue"]="#89b4fa"
    ["sky"]="#89dceb"
    ["green"]="#a6e3a1"
    ["pink"]="#f5c2e7"
    ["rosewater"]="#f5e0dc"
    ["lavender"]="#b4befe"
    ["red"]="#f38ba8"
    ["subtext1"]="#11111b"
    ["surface0"]="#313244"
    ["yellow"]="#f9e2af"

    ["bblack"]="#313244"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#ff9e64"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;
esac

THEME['ghgreen']="#a6e3a1" # Mocha Green
THEME['ghmagenta']="#eba0ac" # Mocha Maroon
THEME['ghred']="#f38ba8" # Mocha Red
THEME['ghyellow']="#f9e2af" # Mocha Yellow

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
