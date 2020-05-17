#!/usr/bin/env bash
#Requirements: imagemagick

set -e -E

if [[ $# == 0 || $1 == "-h" || $1 == "--help" ]]; then
    echo "Usage: ./create_cover_art.sh <music directory>"
    exit 0
fi

if [[ $1 == "--convert" && $# == 2 ]]; then
    shift
    if [[ -f "${1%.*}_ympd.jpg" ]]; then
        exit 0
    fi
    max_width=400
    width=$(identify -format "%w\n" "$1")
    convert_option=
    if (( width > max_width )); then
        convert_option="-resize ${max_width}x${max_width} -repage ${max_width}x${max_width}"
    fi
    set -x
    convert "$1" ${convert_option} "${1%.*}_ympd.jpg"
else
    find "$1" \( -name "cover.jpg" -or -name "cover.png" \) \( -exec ./create_cover_art.sh --convert {} \; -or -quit \)
fi

