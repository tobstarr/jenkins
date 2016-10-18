#!/bin/bash
set -e

name=$(grep "FROM jenkinsci/jenkins:" Dockerfile | cut -d '/' -f 2)

tag=quay.io/tobstarr/$name
docker build -t ${tag} .

docker push ${tag}
