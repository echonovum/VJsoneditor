#!/bin/bash

set -e

echo "Please only execute this on a clean working copy on develop branch (no differences to origin/HEAD)"
echo "Are you sure that this is the case? [y/n]"

read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
#	npm version patch --no-git-tag-version

	# as we need a package from node modules to publish ("json"), really install the packages
#	npm install #--package-lock-only

#	npm audit fix

#	./node_modules/.bin/json -I -f package.json -e 'this.private=false'

#	npm publish --scope=@echonovum --registry=https://npm.fury.io/echonovum

#	./node_modules/.bin/json -I -f package.json -e 'this.private=true'

	git add package.json package-lock.json

	git commit -m 'bump version'

	git push
else
	echo "Did nothing. Exit"
fi



