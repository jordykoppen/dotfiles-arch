#! /bin/sh
log () {
  dirpath=$(dirname $0)
  module="${dirpath##*/}"
  date +"[%H:%M:%S][${module}]: $*"
}
