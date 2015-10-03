#!/usr/bin/env bats

load test-helper

@test "Debian 6" {
    skip 'not support yet'
    whoru debian 6
}

@test "Debian 7" {
    whoru debian 7
}

@test "Debian 8" {
    whoru debian 8
}
