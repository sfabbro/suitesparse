#!/bin/bash

for f in Demo/ldl*.dat; do
    mv ${f} ${f/.dat/.out}
done
