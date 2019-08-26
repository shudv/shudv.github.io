#!/bin/bash    
TEMP_DIR=`mktemp -d`
CURRENT_DIR=`pwd`

if [[ ! $CURRENT_DIR == *site  ]]; then
  echo "Publish command must be executed from the \"site\" directory"
  exit 1
fi

if [[ -z $(git status -s)  ]]; then
  echo "Please commit all your changes before publishing"
  exit 1
fi

BRANCH=`git rev-parse --abbrev-ref HEAD`
cp -rf public/ $TEMP_DIR
cd ..
git checkout master
cp -rf $TEMP_DIR/ .
git add .
git commit -a -m "publish"
git push
git checkout $BRANCH
cd site

function cleanup_temp_directory {      
  rm -rf "$TEMP_DIR"
}

# Register cleanup function to be called on the EXIT
trap cleanup_temp_directory EXIT