#!/bin/sh

python -m venv ./env

source ./env/bin/activate

pip install -r requirements.txt

python process/python/repositories_visualizer.py
