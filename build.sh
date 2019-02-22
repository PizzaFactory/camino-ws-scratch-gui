#!/bin/sh
set -e
set -u

npm install -g yaml-lint
yamllint etc/che-plugin.yaml

if [ -f che-editor-plugin.tar.gz ]; then
    rm che-editor-plugin.tar.gz
fi

cd etc
tar zcvf ../che-editor-plugin.tar.gz .
