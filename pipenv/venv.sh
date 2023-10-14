#!/bin/bash

# Check if Pipenv is installed
if ! command -v pipenv &>/dev/null; then
    echo "Pipenv is not installed. Please install it first. See https://pipenv.pypa.io/en/latest/install/ for installation instructions."
    exit 1
fi

# Check if a Pipfile exists in the project directory
if [ ! -f Pipfile ]; then
    echo "No Pipfile found in the current directory. Please make sure you are in the project directory."
    exit 1
fi

# Create the virtual environment in the project directory
PIPENV_VENV_IN_PROJECT=1 pipenv sync -d
