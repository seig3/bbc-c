#!/usr/bin/env bash

zcc +msx -subtype=msxdos -create-app -DAMALLOC chunk.c compiler.c debug.c main.c memory.c object.c scanner.c value.c vm.c -o pyz8n.com
