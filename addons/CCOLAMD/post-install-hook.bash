#!/bin/bash

for f in Demo/ccolamd*.dat; do
    mv ${f} ${f/.dat/.out}
done
