#!/usr/bin/env bats

load test-helper

@test "6" {
    skip 'not support yet'
    whoru debian 6
}

@test "7" {
    whoru debian 7
}

@test "8" {
    whoru debian 8
}
