#!/bin/bash
set -e

sedi () {
  if [ "$(uname)" == "Linux" ]; then
    sed -i "$@"
  else
    sed -i "" "$@"
  fi
}

echo "Bumping buildNumber and versionCode (iOS & Android)"

for entry in `awk '/versionCode/ {print $2}' ./app.json`; do
    currentVersionCode=`echo ${entry%?}`
    
    echo "For Android: $currentVersionCode"

    regex='^[0-9]+$'
    if [[ $currentVersionCode =~ $regex ]] ; then
        new_value=`echo "$(($currentVersionCode + 1))"`
        sedi 's/\"versionCode\": [0-9a-zA-Z -_]*/\"versionCode\": '$new_value\,'/' ./app.json
    fi
done

for entry in `awk '/buildNumber/ {print $2}' ./app.json`; do
    currentBuildNumber=`echo ${entry%?} | tr -d \"`

    echo "For iOS: $currentBuildNumber"

    regex='^[0-9]+$'
    if [[ $currentBuildNumber =~ $regex ]] ; then
        new_value=`echo "$(($currentBuildNumber + 1))"`
        sedi 's/\"buildNumber\": [0-9a-zA-Z -_]*/\"buildNumber\": "'$new_value'",/' ./app.json
    fi
done



