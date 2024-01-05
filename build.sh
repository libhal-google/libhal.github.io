#!/bin/bash
cd "$(dirname "$0")"

./library_merger.sh

rm -rf doxygen_output

mkdir doxygen_output

doxygen Doxyfile.in

cd sphinx

rm -rf output

mkdir output

sphinx-build -b html -Dbreathe_projects.libhal=../doxygen_output/xml . output

cd ..

rm -rf mkdocs/api 
cp -r sphinx/output mkdocs/api

