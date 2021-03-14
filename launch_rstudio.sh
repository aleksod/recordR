#!/bin/bash
WORKDIR=$(pwd)/..

docker run --rm -e PASSWORD=password \
	-p 8787:8787 \
    -v "$WORKDIR:/home/rstudio" \
	rocker/verse
