#!/bin/bash
unset LANG
sort -u data.toml | grep -ve \\[ -e \\] > tmpdata || exit 1
{
  echo data = [
  cat tmpdata
  echo ]
} > data.toml
rm tmpdata
