#!/bin/bash

for f in Demo/amd*.dat; do
    mv ${f} ${f/.dat/.out}
done
