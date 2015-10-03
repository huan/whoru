#!/usr/bin/env bats

load test-helper

@test "Fedora 20" {
    whoru fedora 20
}

@test "Fedora 21" {
    whoru fedora 21
}

@test "Fedora 22" {
    whoru fedora 22
}
