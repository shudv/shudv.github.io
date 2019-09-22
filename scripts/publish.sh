#!/bin/bash    

# Do not allow publishing if there are uncommitted changes
if [[ -n $(git status -s -uall)  ]]; then
  echo "Please commit all your changes before publishing!"
  exit 1
fi

# Record branch name so that we can switch back to it later
BRANCH=`git rev-parse --abbrev-ref HEAD`

# Build resources
hugo

# Create a temp directory to stage built files
TEMP_DIR=`mktemp -d`
function cleanup_temp_directory {      
  rm -rf "$TEMP_DIR"
}
# Register cleanup function to be called on the EXIT
trap cleanup_temp_directory EXIT

# Stage currently built files in the temp directory
cp -rf public/ $TEMP_DIR

git checkout master

# Copy staged built files to root
cp -rf $TEMP_DIR/ .

# Push files to remote
git add .
git commit -a -m "publish"
echo "Latest content published to local master."

# Checkout initial branch and cd to main directory
git checkout $BRANCH