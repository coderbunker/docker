#!/bin/sh
CURRENTDIR=$(dirname $0)
PARENT=$(realpath $CURRENTDIR/..)
NAME=$(basename $PARENT)

ORGANIZATION=$(basename $(dirname $PARENT))


. $PARENT/.env-template

echo "Running $NAME"
docker run -it \
    --rm \
    -v $PARENT:/src \
    --name $NAME \
    $ORGANIZATION/$NAME \
    $*
