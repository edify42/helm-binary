# helm-binary

Install helm via yarn/npm. This is a wrapper around the projects here:
[helm-binary-darwin](https://github.com/edify42/helm-binary-darwin)
[helm-binary-linux](https://github.com/edify42/helm-binary-linux)

## Global install

Taking the latest helm 3 binary at the time of writing (3.6.2) as an example:

```bash
yarn global add helm-binary@latest
```

npm _should_ also work but I have seen places it can fail more ofter (like when
running as the root user on a linux box).

```bash
npm install --global helm-binary@latest
```

## Installation dependencies

Whatever linux/mac machine you run this on, make sure it has `bash` available
as the postinstall script depends on that (`#!/bin/sh` isn't enough)

## Package specific install

Add this package as a dependency and you can run `helm` from within your node
runtime when using the `scripts` block of the package.json file.

Alternatively, appending the `node_modules/.bin` location when calling this
from within your source code (through say, the `exec` package), e.g.

```javascript
const helm = Path.resolve(__dirname, '../../node_modules/.bin/helm');
```

You are able to directly call `helm` within your source code without needing it
to be installed on the running system.

## Requirements

You've setup your `$PATH` correctly to have node binaries executable.
e.g. My Ubuntu machine has: `/home/edify42/.nvm/versions/node/v10.16.0/bin`
in my `$PATH`

## How it works

It installs the optionalDependency based on your `platform` (darwin/linux) and
then the postInstall script simply creates a hard link to the binary.

## Automation

Github Actions support scheduled builds. Lets run one periodically to check
the github releases API and package new versions of helm automagically for
future use.

## Hack innit

Is this a hack? Yes. I need to have `helm` available and this is a nice way of
achieving it for some of the Javascript/Node tooling I currently work with.
