#!/bin/bash

export LANG='C.UTF-8'
export LC_ALL='C.UTF-8'
export PYTHONIOENCODING='utf-8'

cd /scout/carnet || exit 1

songbook carnet_de_chant.yaml

