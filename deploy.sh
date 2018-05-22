#!/bin/bash
tag=`cat dockerhubtag.txt`
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag andrewkress/ruby-postgresql-nodejs:"$tag"
docker tag andrewkress/ruby-postgresql-nodejs:latest
docker push andrewkress/ruby-postgresql-nodejs:"$tag"
docker push andrewkress/ruby-postgresql-nodejs:latest
