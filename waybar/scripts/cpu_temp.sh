#!/usr/bin/env bash

temp=$(sensors | grep Tctl)

echo ${temp:5}
