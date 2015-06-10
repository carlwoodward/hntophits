#!/bin/bash

# Bash script to start a rails runner to begin downloading the Hacker News top stories and updating the database.
#
# Usage
# Optional first arg with the environment name (an environment name that rails understands)


# No harm in seeing what is happening.
set -x
# Fail if a variable hasn't been defined
set -e

LogStdout=log/HNCollect.stdout LogStderr=log/HNCollect.stderr
ENVIRONMENT= Env=
if [[ ! -z $1 ]]
then
    case "$1" in
        p*) Env=production  ;;
        d*) Env=development ;;
        t*) Env=test        ;;
    esac
    ENVIRONMENT="-e $Env"
fi

echo "Using \"$Env\" environment"

while true
do
    bundle exec rails runner $ENVIRONMENT 'HNCollect.run' 2>&1 | tee -a log/HNCollect.log 
    tail $LogStdout $LogStderr | mailx -t bruce.woodward@gmail.com -s 'HNCollect stopped'
    sleep 10
done
