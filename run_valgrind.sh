#!/bin/sh

docker run -it -v $PWD:/tmp -w /tmp valgrind:1.0
