#!/usr/bin/env bash

city=Halle-Saale

temp=$(curl -s wttr.in/$city?format="%t")

echo $city: $temp


