#!/usr/bin/env bats

@test "Debian" {
    for version in {7..8}
    do
        output=$( docker run --rm --name whoru -v `pwd`:/whoru -w /whoru debian:$version ./whoru )
        [ "$?" = 0 ]

        eval $output

        [ "$WHORU_DIST" = 'debian' ]
        [ "$WHORU_VER" = "$version" ]
        [ "$WHORU_ARCH" = 'x86_64' ]
    done
}
