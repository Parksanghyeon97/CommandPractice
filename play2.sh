#!/bin/bash

history | grep "$(date +%Y-%m-%d)" | awk '{print( $2 "  " $4 )}'
