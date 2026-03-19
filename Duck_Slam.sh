#!/bin/sh
printf '\033c\033]0;%s\a' Duck_Slam
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Duck_Slam.x86_64" "$@"
