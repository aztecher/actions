#!/bin/sh

ls -lat
git --help
env
cat /entrypoint.sh

EXEC=$1
if [ "$EXEC" = "test" ]; then
  echo "test"
  exit 0
fi

INPUT_USER=${INPUT_USER:-$GITHUB_ACTOR}
INPUT_EMAIL=${INPUT_EMAIL}
INPUT_DIRECTORY=${INPUT_DIRECTORY:-'.'}
INPUT_BRANCH=${INPUT_BRANCH:-master}

if [ -z "$INPUT_USER" ]; then
  echo 'Missing input: "user"'
  exit 0
fi

if [ -z "$INPUT_EMAIL" ]; then
  echo 'Missing input: "email"'
  exit 0
fi

echo "Specify branch $INPUT_BRANCH"
cd ${INPUT_DIRECTORY}

git config --global user.name "${INPUT_USER}"
git config --global user.email "${INPUT_EMAIL}"

git add .
git commit -m "[auto] Automatically commit by github action from ${GITHUB_REPOSITORY}"
