#!/bin/bash

set -e
set -v

export KEYNAME=D8B43586CB8D91C056C65C7A228C604376A07D70

(
    set -e
    set -v

    cd ./debian/

    # Packages & Packages.gz
    dpkg-scanpackages --multiversion . > Packages
    gzip -k -f Packages

    # Release, Release.gpg & InRelease
    apt-ftparchive release . > Release
    gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
    gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease
cp InRelease ../
)
