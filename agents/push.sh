#!/bin/bash
SITE_ROOT=$(dirname $(realpath $0))
export URL=http://103.160.88.235
export CHECK_MK_AGENT=$SITE_ROOT/check_mk_agent.linux
export TOKEN=$(echo -n ${HOSTNAME} | sha1sum | cut -d' ' -f1)
export PUSH_URL=push
python3 $SITE_ROOT/push.py 
