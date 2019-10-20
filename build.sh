#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

XPI_NAME=search_jackett.xpi

if [[ -f "$XPI_NAME" ]] ; then
	rm "$XPI_NAME"
fi
#7z a "$XPI_NAME" manifest.json background.js icons
7z a "$XPI_NAME" manifest.json icons
