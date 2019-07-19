#!/bin/sh
CURRENTDIR=$(dirname $0)
PARENT=$(realpath $CURRENTDIR/..)
NAME=$(basename $PARENT)
<<<<<<< HEAD
ORGANIZATION=$(basename $(dirname $PARENT))

=======
>>>>>>> 4606ea606613bdee2573d3e2fe66b6826cb3843b
. $PARENT/.env-template

echo "Running $NAME"
docker run -it \
    --rm \
    -v $PARENT:/src \
    --name $NAME \
    $ORGANIZATION/$NAME \
    $*
