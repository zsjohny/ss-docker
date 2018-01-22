#!/usr/bin/env bash
# -*- encoding UTF-8 -*-
# Author: Johny

export PGRDIR=$(cd `dirname $0`; pwd)
export VERSION=$1

source $PGRDIR/../env.sh

# only set VERSION if not set
[ -z "$VERSION" ] && VERSION=latest

# break shell when fail
set -e

cd $PGRDIR && docker-compose -p $DOCKER_INSTANCE_NAME up -d
