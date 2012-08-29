#!/bin/bash

for f in Demo/camd*.dat; do
    mv ${f} ${f/.dat/.out}
done
