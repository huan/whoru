# whoru
[ ![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/zixia/whoru/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
[ ![Travis Status](https://travis-ci.org/zixia/whoru.svg)](https://travis-ci.org/zixia/whoru)
[ ![CircleCI Status](https://circleci.com/gh/zixia/whoru.svg?&style=shield)](https://circleci.com/gh/zixia/whoru)
[ ![Codeship Status for zixia/whoru](https://codeship.com/projects/686a3af0-4b10-0133-532e-7236a2d50232/status?branch=master)](https://codeship.com/projects/106106)
[![Code Climate](https://codeclimate.com/github/zixia/whoru/badges/gpa.svg)](https://codeclimate.com/github/zixia/whoru)

# What is _whoru_?
**whoru** is a command line tool that query name/version/arch of a linux distribution. it's like whoami, which query the uid/name/group of a user.

whoru github - https://github.com/zixia/whoru

 - WHORU\_DIST   = distribution name
 - WHORU\_VER    = version
 - WHORU\_ARCH   = architecture

## Usage

```bash
$ eval $(curl -s https://raw.githubusercontent.com/zixia/whoru/master/whoru | bash -)
$ echo $WHORU_{DIST,VER,ARCH}
```
will output (in this case we ran inside ubuntu)

 > ubuntu 14 x86_64

## Example

![whoru on debian](https://raw.githubusercontent.com/zixia/whoru/master/whoru-debian.png)
![whoru on fedora](https://raw.githubusercontent.com/zixia/whoru/master/whoru-fedora.png)
![whoru on macos](https://raw.githubusercontent.com/zixia/whoru/master/whoru-mac_os.png)
 
## Installation

Copy `whoru` file to /usr/local/bin, or anywhere that PATH could find.

## Test

whoru use bats and docker to test itself.

```bash
$ bats test
```
will run a full test on every distributions and versions defined in the test directory.

```bash
 $ bats test/
 ✓ CentOS 5
 ✓ CentOS 6
 - CentOS 7 (skipped: not support yet)
 - Debian 6 (skipped: not support yet)
 ✓ Debian 7
 ✓ Debian 8
 ✓ Fedora 20
 ✓ Fedora 21
 ✓ Fedora 22
 ✓ Ubuntu 12.04
 ✓ Ubuntu 13.04
 ✓ Ubuntu 14.04
 ✓ Ubuntu 15.04
 ✓ Ubuntu 15.10

14 tests, 0 failures, 2 skipped
```

### What is BATS?
[BATS(Bash Automated Testing System)](https://github.com/sstephenson/bats) is a bash implementation of [TAP(Test Anything Protol)]( http://testanything.org)

### Install BATS
```bash
$ BATS_VERSION=0.4.0 \
    curl -s -L "https://github.com/sstephenson/bats/archive/v${BATS_VERSION}.tar.gz" 
    | tar zxv 
    && bats-${BATS_VERSION}/install.sh /usr/local
```
## Bug

From now, whoru is very simple and only support very limited linux distribution, for example: redhat, fedora, centos, debian, mac os . 

contribution is very welcome.

## Author
LI Zhuohuan <zixia@zixia.net> (https://github.com/zixia)

## Copyright & License
 - Code & Documentation 2015© zixia
 - Code released under the Apache 2.0 license
 - Docs released under Creative Commons.

