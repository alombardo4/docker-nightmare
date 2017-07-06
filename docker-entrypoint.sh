#!/bin/bash
set -e

. ~/.profile

OPT=${ROOT}
COMMAND=(xvfb-run --server-args "-screen 0 1280x800x24" node --harmony)
ARGUMENTS=${ARGUMENTS} #(--fail-fast --no-colors)

if [ -z $1 ] || [ "${1:0:1}" = '-' ]; then
  set -- "${COMMAND[@]}" "${OPT}/index.js" "${ARGUMENTS[@]}" "$@"

  echo "$@"
  #TODO: exec "$@" not working, doing nothing
  "$@"
  exit
fi

exec "$@"
