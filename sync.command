#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"

git add -A && git commit -m "Bada bing! Wit a pipe!." && git push github master
