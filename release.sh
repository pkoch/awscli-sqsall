#!/bin/bash
# Do code, make sure everything is pushed.
rm dist/*
python3 setup.py sdist bdist_wheel
twine upload dist/*
