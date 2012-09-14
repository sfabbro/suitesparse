#!/bin/bash

for f in Demo/*.dat; do
    mv ${f} ${f/.dat/.out}
done
