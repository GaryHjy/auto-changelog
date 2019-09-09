#!/bin/sh

yarn stdver

git remote add github https://$GITHUB_TOKEN@github.com/GaryHjy/auto-changelog.git > /dev/null 2>&1
git push github HEAD:master --follow-tags

GREN_GITHUB_TOKEN=$GITHUB_TOKEN yarn release
