#!/bin/zsh
set -euo pipefail

if (( $# != 2 )); then
  print -u2 "Usage: normalize_photo.sh INPUT OUTPUT.jpeg"
  exit 2
fi

if ! command -v magick >/dev/null 2>&1; then
  print -u2 "ImageMagick is required (missing: magick)."
  exit 127
fi

input_path="$1"
output_path="$2"

if [[ ! -f "$input_path" ]]; then
  print -u2 "Input file not found: $input_path"
  exit 2
fi

if [[ -e "$output_path" ]]; then
  print -u2 "Refusing to overwrite existing output: $output_path"
  exit 3
fi

mkdir -p "${output_path:h}"
magick "${input_path}[0]" -auto-orient -colorspace sRGB -strip -quality 95 "$output_path"
print "$output_path"
