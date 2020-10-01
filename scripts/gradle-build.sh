#!/bin/bash

set -e -x # fail fast
export TERM=xterm-color
# ensure that Gradle uses root location for caching
export ROOT_FOLDER=$( pwd )
export GRADLE_USER_HOME="${ROOT_FOLDER}/project-source/.gradle"
echo "GRADLE_USER_HOME: ${GRADLE_USER_HOME}"
cd project-source

#build 
chmod 755 gradlew
./gradlew clean build