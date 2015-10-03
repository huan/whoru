#!/usr/bin/env bats

load test-helper

@test "CentOS 5" {
    whoru centos 5
}

@test "CentOS 6" {
    whoru centos 6
}

@test "CentOS 7" {
    skip 'not support yet'
    whoru centos 7
}
