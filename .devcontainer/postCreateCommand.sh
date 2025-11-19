#!/usr/bin/env bash

set -euxo pipefail

if [ -f .gitmodules ]; then
	git submodule update --init --recursive || true
fi
