function whoru {
    DIST=$1
    VERSION=$2

    output=$(docker run --rm --name whoru -v `pwd`:/whoru -w /whoru $DIST:$VERSION ./whoru)
    [ "$?" = 0 ]

    eval "$output"

    [ "$WHORU_DIST" = "$DIST" ]
    [ "$WHORU_VER" = "${VERSION%.*}" ]
}

