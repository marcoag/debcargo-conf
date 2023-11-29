#!/bin/bash
# Gives a wild try to auto fix FIXMES left by update.sh.
# This file is only part of the ROS Rust related toolchain.
#
# Usage: [REALVER=<EXACTVER>] ./autofixes.sh <CRATE> [<SEMVER>]
#
# Envvars:
# See also ./vars.sh.frag for its envvars, which we pass through.

. ./vars.sh.frag

cp "$PKGDIR/debian/copyright.debcargo.hint" "$PKGDIR/debian/copyright"

sed '/Debian Rust Maintainers/d' "$PKGDIR/debian/copyright" > "$PKGDIR/debian/copyright"



