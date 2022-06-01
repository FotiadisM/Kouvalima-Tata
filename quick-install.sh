#! /bin/env bash

set -eu

for d in $(command -p ls); do
	cd ./$d
	helm dependency build
	helm install -n $d $d . --create-namespace
	cd ../
done
