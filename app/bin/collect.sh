#!/bin/bash

# Bash script to start a rails runner to begin downloading the Hacker News top stories and updating the database.
#
# Usage
# Optional first arg with the environment name (an environment name that rails understands)


# No harm in seeing what is happening.
set -x
# Fail if a variable hasn't been defined
set -u

trap '' 1

# default to production environment

ENVIRONMENT= Env=${1:-production}
if [[ ! -z $Env ]]
then
    case "$Env" in
        p*) Env=production  ;;
        d*) Env=development ;;
        t*) Env=test        ;;
    esac
    ENVIRONMENT="-e $Env"
fi

echo "Using \"$Env\" environment"

while true
do
    bundle exec rails runner $ENVIRONMENT 'HNCollect.run' >> log/HNCollect.log 2>&1
    tail -100 log/HNCollect.log | mailx -t bruce.woodward@gmail.com -s 'HNCollect stopped'
    sleep 13
done
