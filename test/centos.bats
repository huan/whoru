#!/usr/bin/env bats

load test-helper

@test "5" {
    whoru centos 5
}

@test "6" {
    whoru centos 6
}

@test "7" {
    skip 'not support yet'
    whoru centos 7
}
