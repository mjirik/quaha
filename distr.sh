#!/bin/bash
rm -rf win-*
rm -rf linux-*
rm -rf osx-*

conda build .


conda convert -p all `conda build --output .`

binstar upload */*.tar.bz2