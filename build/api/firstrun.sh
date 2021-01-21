#!/bin/sh
/usr/local/bin/wait
if [ ! -e /install_done ]; then
    echo KasumiOJ API: First Run Preparation
    mc alias set minio http://minio:9000 "$MINIO_ACCESS_KEY" "$MINIO_SECRET_KEY"
    mc mb -p minio/syzoj-ng-files
    touch /install_done
fi
yarn start
