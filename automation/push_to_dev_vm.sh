#!/bin/bash

source exports.sh

function ssh_ {
  ssh $root@$dev_vm $1
}

function push {
  local copy_to=$remote_src/automation
  echo "Watching and pushing current folder's content to '$root@$dev_vm:$copy_to'"
  ssh_ "rm -rf $copy_to"  && \
  ssh_ "mkdir -p $copy_to"  && \
  scp -r ./* $root@$dev_vm:$copy_to

  if [[ $1 == remote_run ]]; then
  echo "Remote run..."
  ssh_ "source $copy_to/dev_vm/run.sh"
  fi
}

push $1