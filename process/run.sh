#!/bin/sh

python -m venv ./env

source ./env/bin/activate

pip install -r requirements.txt

mkdir -p data/input
mkdir -p data/output/visualization
printf "repositoryName\\n${1}" > data/output/repositories_collected.csv

mvn clean compile exec:java -Dexec.mainClass="de.uni_koblenz.gorjatschev.applyingapis.Application"

python src/main/python/repositories_analyzer.py

python src/main/python/repositories_visualizer.py $1
