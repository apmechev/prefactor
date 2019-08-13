#!/bin/bash

wget -O lofar.sif https://lofar-webdav.grid.sara.nl/software/shub_mirror/tikk3r/lofar-grid-hpccloud/lofar.sif
singularity inspect lofar.sif
singularity inspect -d lofar.sif
singularity inspect -t lofar.sif
