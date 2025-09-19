#!/usr/bin/env bash

USER="$(whoami)"
SEARCH_DIR="/home/$USER/.vscode-server/extensions"
FILE_NAME="matlab_formatter.py"

while true; do
    find "$SEARCH_DIR" -type f -name "$FILE_NAME" -exec chmod +x {} \; &> /dev/null

    if [ -n "$(find "$SEARCH_DIR" -type f -name "$FILE_NAME" -executable 2> /dev/null)" ]; then
        break
    fi

    sleep 0.1
done
