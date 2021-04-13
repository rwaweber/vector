---
title: Install Vector using APT
short: APT
weight: 1
---

[Advanced Package Tool][apt], or **APT**, is a free package manager that handles the installation and removal of software on [Debian], [Ubuntu], and other [Linux] distributions.

Our APT repositories are provided by [Cloudsmith] and you can find [instructions][repos] for manually adding the repositories. This page covers installing and managing Vector through the [APT package repository][apt].

## Supported architectures

* x86_64
* ARM64
* ARMv7

## Installation

Add the Vector repo:

```shell
curl -1sLf \
  'https://repositories.timber.io/public/vector/cfg/setup/bash.deb.sh' \
| sudo -E bash
```

Install the `vector` package:

```shell
sudo apt-get install vector
```

## Deployment

Vector is an end-to-end observability data pipeline designed to deploy under various roles. You mix and match these roles to create topologies. The intent is to make Vector as flexible as possible, allowing you to fluidly integrate Vector into your infrastructure over time. The deployment section demonstrates common Vector pipelines:

{{< jump "/docs/setup/deployment/topologies" >}}

## Other actions

### Uninstall Vector

```shell
sudo apt remove vector
```

### Upgrade Vector

```shell
sudo apt-get upgrade vector
```

[apt]: https://en.wikipedia.org/wiki/APT_(software)
[cloudsmith]: https://cloudsmith.io/~timber/repos/vector/packages
[debian]: https://debian.org
[linux]: https://linux.org
[repos]: https://cloudsmith.io/~timber/repos/vector/setup/#formats-deb
[ubuntu]: https://ubuntu.com