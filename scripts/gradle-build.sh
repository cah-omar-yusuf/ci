#!/bin/bash

set -e -x # fail fast
export TERM=xterm-color
# ensure that Gradle uses root location for caching
export ROOT_FOLDER=$( pwd )
export GRADLE_USER_HOME="${ROOT_FOLDER}/project-source/.gradle"
echo "GRADLE_USER_HOME: ${GRADLE_USER_HOME}"
resource_dir=$(dirname $0)

echo ${resource_dir}
echo "current environemnt : "$CURRENT_ENV
mkdir sonarqube-analysis-input/build
mkdir build-out/version
# mkdir sonarqube-analysis-input/build/jacoco
mkdir project-source/server/build
mkdir project-source/server/build/libs
cd project-source

#build 
chmod 755 gradlew
./gradlew clean build