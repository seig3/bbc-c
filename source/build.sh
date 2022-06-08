#!/usr/bin/env bash

zcc +msx -subtype=msxdos2 -create-app -DAMALLOC chunk.c compiler.c debug.c main.c memory.c object.c scanner.c value.c vm.c -o pyz8n.com
mv pyz8n.img pyz8n.dsk
