#!/usr/bin/bash
#shellcheck disable=SC2115

set -eoux pipefail

# Cleanup /run/ctx
rm -rf /run/ctx

# Make Sure /tmp and /var are in proper state
rm -rf /tmp/*
rm -rf /var/*
mkdir -p /var/tmp
chmod -R 1777 /var/tmp

ostree container commit
