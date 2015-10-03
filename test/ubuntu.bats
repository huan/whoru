#!/usr/bin/env bats

load test-helper

@test "Ubuntu 12.04" {
    whoru ubuntu 12.04
}

@test "Ubuntu 13.04" {
    whoru ubuntu 13.04
}

@test "Ubuntu 14.04" {
    whoru ubuntu 14.04
}

@test "Ubuntu 15.04" {
    whoru ubuntu 15.04
}

@test "Ubuntu 15.10" {
    whoru ubuntu 15.10
}
