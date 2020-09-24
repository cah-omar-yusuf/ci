#!/bin/bash

set -e -x # fail fast
export TERM=${TERM:-dumb}
# ensure that Gradle uses root location for caching
export ROOT_FOLDER=$( pwd )
export GRADLE_USER_HOME="${ROOT_FOLDER}/project-source/.gradle"
echo "GRADLE_USER_HOME: ${GRADLE_USER_HOME}"
resource_dir=$(dirname $0)

echo ${resource_dir}
echo "current environemnt : "$CURRENT_ENV

echo "HI!"
