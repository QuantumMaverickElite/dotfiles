#!/bin/sh

h="$(date '+%I')"                 # 01..12
h="${h#0}"                        # remove leading 0 -> 1..12
[ -z "$h" ] && h="0"              # just in case

m="$(date '+%M')"                 # 00..59
ap="$(date '+%p' | tr '[:lower:]' '[:upper:]')"   # AM/PM
mon="$(date '+%b' | tr '[:lower:]' '[:upper:]')"  # JAN/FEB
day="$(date '+%d')"               # 01..31

# Build a single JSON string with explicit \n escapes
# IMPORTANT: use \\n so the JSON contains literal backslash-n sequences
printf '{"text":"%s\\n%s\\n%s\\n%s\\n%s","tooltip":false}\n' \
  "$h" "$m" "$ap" "$mon" "$day"

