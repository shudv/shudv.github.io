#!/bin/bash    

if [[ -n $(git status -s -uall)  ]]; then
  echo "Please commit all your changes before publishing!"
  exit 1
fi

echo "Recording branch name so that we can switch back to it later"
BRANCH=`git rev-parse --abbrev-ref HEAD`
echo "Current branch is $BRANCH"

echo "Building website files"
hugo

echo "Creating a temp directory to stage built files"
TEMP_DIR=`mktemp -d`
function cleanup_temp_directory {      
  rm -rf "$TEMP_DIR"
}
# Register cleanup function to be called on the EXIT
trap cleanup_temp_directory EXIT

echo "Staging built files"
cp -rf public/ $TEMP_DIR

echo "Checkout master"
git checkout master

echo "Bringing over staged built files"
cp -rf $TEMP_DIR/ .

echo "Committing changes"
git add .
git commit -a -m "publish"
echo "Latest content committed to local master."

echo "Checkout $BRANCH"
git checkout $BRANCH