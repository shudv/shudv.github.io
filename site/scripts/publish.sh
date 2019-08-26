#!/bin/bash    

CURRENT_DIR=`pwd`

if [[ ! $CURRENT_DIR == *site  ]]; then
  echo "Publish command must be executed from the \"site\" directory"
  exit 1
fi

# Do not allow publishing if there are uncommitted changes
if [[ -n $(git status -s -uall)  ]]; then
  echo "Please commit all your changes before publishing"
  exit 1
fi

if [[ ! -d "public"  ]]; then
  echo "Sources not built. Please build using \"hugo\" command."
  exit 1
fi

# Record branch name so that we can switch back to it later
BRANCH=`git rev-parse --abbrev-ref HEAD`

# Create a temp directory to stage built files
TEMP_DIR=`mktemp -d`
function cleanup_temp_directory {      
  rm -rf "$TEMP_DIR"
}
# Register cleanup function to be called on the EXIT
trap cleanup_temp_directory EXIT

# Stage currently built files in the temp directory
cp -rf public/ $TEMP_DIR

# Go to repository root and checkout master branch
cd ..
git checkout master

# Copy staged built files to root
rm -r !(".gitignore")
cp -rf $TEMP_DIR/ .

# Push files to remote
git add .
git commit -a -m "publish"
git push

# Checkout initial branch and cd to main directory
git checkout $BRANCH
cd site