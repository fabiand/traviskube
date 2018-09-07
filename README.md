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
