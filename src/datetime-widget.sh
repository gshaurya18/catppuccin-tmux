#!/usr/bin/env bash

# Imports
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/.."
. "${ROOT_DIR}/lib/coreutils-compat.sh"

# Grab global variable for showing datetime widget, only hide if explicitly disabled
SHOW_DATETIME=$(tmux show-option -gv @catppuccin-tmux_show_datetime 2>/dev/null)
if [[ $SHOW_DATETIME == "0" ]]; then
  exit 0
fi

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $CURRENT_DIR/themes.sh

# Assign values based on user config
time_format=$(tmux show-option -gv @catppuccin-tmux_time_format 2>/dev/null)

time_string=""


if [[ $time_format == "12H" ]]; then
  # 12-hour format with AM/PM
  time_string="%I:%M %p "
elif [[ $time_format == "hide" ]]; then
  # 24-hour format
  time_string=""
else
  # Default to 24-hour format if not specified
  time_string="%H:%M "
fi

echo "$RESET#[fg=${THEME[yellow]},bg=${THEME[base]}]$date_string $separator$time_string"
