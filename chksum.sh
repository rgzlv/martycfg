#!/bin/sh
set -e

for i in $(find . -type f -name MD5SUMS -exec dirname {} \;); do
	cd $i
	md5sum -c --quiet MD5SUMS
	cd - >/dev/null
done
