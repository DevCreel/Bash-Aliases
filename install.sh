#!/bin/bash

SCRIPTS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $SCRIPTS_PATH/scripts/2.functions.sh

if grep -q "$SCRIPTS_PATH/autoload.sh" ~/$(get_rc_path);
then
    echo "Scripts already installed."
    exit 0;
fi;

tee -a ~/$(get_rc_path) >/dev/null <<EOF
# BashScripts autoload
source $SCRIPTS_PATH/autoload.sh
EOF

exec $SHELL -l
