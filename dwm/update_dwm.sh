#!/usr/bin/env bash

set -e

updpkgsums
makepkg -efi
