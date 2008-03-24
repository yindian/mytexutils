#!/bin/bash
for n in o*.html; do vim -e $n -c ':so maoen.vim' -c ':q!'; done
