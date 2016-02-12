#!/bin/bash

cd /usr/local/src && \
wget https://www.kernel.org/pub/software/scm/git/git-2.7.1.tar.gz && \
tar xvzf git-2.7.1.tar.gz && \
cd git-2.7.1 && \
./configure && \
make && \
make install && \