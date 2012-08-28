#!/bin/bash

for f in Demo/colamd*.dat; do
    mv ${f} ${f/.dat/.out}
done
