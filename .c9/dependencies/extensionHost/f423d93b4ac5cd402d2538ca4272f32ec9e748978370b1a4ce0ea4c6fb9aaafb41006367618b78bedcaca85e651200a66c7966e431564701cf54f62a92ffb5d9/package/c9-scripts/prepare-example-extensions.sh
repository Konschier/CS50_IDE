#!/bin/sh
set -e

cd example-extensions
rm -rf tmp

for file in *.vsix
do
    [ -f "$file" ] || continue
    destination=${file/.vsix/}
    echo "Unpacking $file into $destination"
    unzip -q $file 'extension/*' -d tmp
	rm -rf $destination
    mv tmp/extension $destination
    rm -rf tmp
done

cd -
