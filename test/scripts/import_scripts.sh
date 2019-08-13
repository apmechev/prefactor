#!/bin/bash

export RET_DIR=$PWD
cd scripts 
for  mod in *.py; do export module=${mod%.py}; echo "testing $module"; singularity exec $RET_DIR/lofar.sif python -c "from $module import *"; done
cd $RET_DIR
