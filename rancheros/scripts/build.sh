#!/bin/bash

VERSION="${1:-latest}"

echo "${VERSION}"

. ./docker-machine/create.sh "${VERSION}"
. ./docker-machine/stop.sh
. ./virtualbox/create_hd.sh
. ./docker-machine/start.sh
. ./docker-machine/regist_key.sh
. ./docker-machine/stop.sh
. ./virtualbox/create.sh
. ./vagrant/create_box.sh "${VERSION}"
. ./virtualbox/remove.sh
. ./docker-machine/remove.sh