#!/bin/bash

cat README_template.md > README.md
git tag -n | xargs -n1 -i{} echo "1. {}" >> README.md

