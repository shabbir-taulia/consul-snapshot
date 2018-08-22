#!/bin/sh

run_app() {
  consul-snapshot "${@}"
}

case "${1}" in
  'backup')
    run_app "${1}" "${2}"
    exit 0
    ;;

  'restore')
    run_app "${1}" `cat "${2}"`
    exit 0
    ;;

  *)
    exec "${@}"
    ;;

esac
