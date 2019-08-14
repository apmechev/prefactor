#!/bin/bash

export RET_DIR=$PWD
cd plugins
for  mod in *.py; do export module=${mod%.py}; echo "testing $module"; singularity exec $RET_DIR/lofar.sif python -c "from $module import *" || exit -1 ; done
cd $RET_DIR
