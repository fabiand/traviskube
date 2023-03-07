
*DEPRECATED* and not maintained anymore

---

[![Build Status](https://travis-ci.com/fabiand/traviskube.svg?branch=master)](https://travis-ci.com/fabiand/traviskube)

Skeletton to run Kubernetes and OpenShift Origin clusters on Travis CI.

# Usage

In your repo:

```
# Write a test script
vi test.sh

# Add the module
git submodule add --name ci https://github.com/fabiand/traviskube ci/
pushd ci ; git pull ; popd
git commit -asm "Add traviskube CI submodule"

# Copy .travis.yml
cp ci/.travis.yml .
git commit -asm "Add .travis.yml"
```

Go to github and enable travisci.

# Workarounds

This repo tries to establish the convention that any workaround that is needed
to a stock platform deployment is placed in a separate file (`workaround`).

This shall help users to understand if it's a straight deployment - or not.
