#!/bin/bash
for n in y*.htm; do vim -e $n -c ':so maozh.vim' -c ':q!'; done
