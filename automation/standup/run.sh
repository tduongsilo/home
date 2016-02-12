#!/bin/bash

# This script file executes other script files in the same folder
# to prepare a VM as a controller of other VMs

bash ../platform/centos5/gcc/yum_install_gcc.sh  && \
bash ../platform/centos5/git/install_git.sh