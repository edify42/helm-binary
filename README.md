# helm-binary

Install helm via npm/yarn.

## Global install

Taking the latest helm 3 binary at the time of writing (3.2.4) as an example:

```bash

npm install -g helm-binary@3.2.4

yarn global add helm-binary@3.2.4
```

## Package specific install

Add this package as a dependency and you can run `helm` from within your node
runtime (through say, the `exec` package)

## Requirements

You've setup your `$PATH` correctly to have node binaries executable.
e.g. My Ubuntu machine has: `/home/edify42/.nvm/versions/node/v10.16.0/bin`
in my `$PATH`

## Automation

Github Actions support scheduled builds. Lets run one periodically to check
the github releases API and package new versions of helm automagically for
future use.

## Hack innit

Is this a hack? Yes. I need to have `helm` available and this is a nice way of
achieving it for some of the Javascript/Node tooling I currently work with.
