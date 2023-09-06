#!/bin/bash

# How to Programmatically Determine if there are Uncommitted Changes in Git
# https://www.w3docs.com/snippets/git/how-to-programmatically-determine-if-there-are-uncommitted-changes.html#:~:text=You%20can%20get%20your%20uncommitted%20changes%20with%20the,without%20commits%20such%20as%20a%20newly%20created%20repository.

set -e
echo -n "Checking if there are uncommited changes... "
trap 'echo -e "\033[0;31mCHANGED\033[0m"' ERR
git diff-index --quiet HEAD --
trap - ERR
echo -e "\033[0;32mUNCHANGED\033[0m"
