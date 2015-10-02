function whoru {
    DIST=$1
    VERSION=$2

    OPTS=''
    OPTS="$OPTS --rm"
    OPTS="$OPTS --name whoru"

    [ "" != "$CIRCLECI" ] && {
        # if inside CircleCI docker enviroment, --rm container would cause fatal error like
        # "Error response from daemon: Cannot destroy container ..."
        OPTS=''
    }
    
    output=$(docker run $OPTS -v `pwd`:/whoru -w /whoru $DIST:$VERSION ./whoru)
    [ "$?" = 0 ]

    eval "$output"

    [ "$WHORU_DIST" = "$DIST" ]
    [ "$WHORU_VER" = "${VERSION%.*}" ]
}

