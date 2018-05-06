#!/bin/sh
echo Downloading english...
wget -c 'https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-all-titles-in-ns0.gz'
echo Transforming english...
zcat enwiki-latest-all-titles-in-ns0.gz | \
 sed 's!_\+! !g;s![^a-z ]!!ig;s!^\s\+!!;s!\s\+$!!;/^\s*$/d' | \
 tr '[:upper:]' '[:lower:]' | tr ' ' '\n' | sort -u > enwiki-latest-all-titles-in-ns0-transform

