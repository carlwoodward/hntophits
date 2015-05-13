#!/bin/bash

# Bash script to start a rails runner to begin downloading the Hacker News top stories and updating the database.

# Usage
# Optional first arg with the environment name (an environment name that rails understands)

set -e # Fail if a variable hasn't been defined

ENVIRONMENT=
if [[ -z $1 ]]
then
    ENVIRONMENT="-e $1"
fi

bundle exec rails runner $ENVIRONMENT 'HNCollect.run'
