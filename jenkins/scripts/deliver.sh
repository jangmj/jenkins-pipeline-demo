#!/usr/bin/env bash

echo 'The following complex command extracts the value of the <name/> element'
echo 'within <project/> of your Java/Maven project''s "pom.xml" file.'
set -x
NAME=`echo "lms"`
set +x

echo 'The following complex command behaves similarly to the previous one but'
echo 'extracts the value of the <version/> element within <project/> instead.'
set -x
VERSION=`echo "0.0.35"`
set +x

echo "scp -P 22000 target/${NAME}-${VERSION}.war"
set -x
CMD=`scp -P 22000 target/${NAME}-${VERSION}.war webdev@1.242.216.122:~/projects/lotte/`
set +x
bash -c 'echo ${CMD}'
bash -c 'echo ${CMD} > ../../scp.sh'
