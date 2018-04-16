#!/bin/sh
#Script to download and process Berkeley Restaurant Project
wget http://www.icsi.berkeley.edu/ftp/pub/speech/wooters/berp.tgz
tar xfz berp.tgz
sed 's!^[0-9A-Z]\{2\}_[0-9A-Z]_[0-9A-Z]\{4\} !!i;s!<.\+>!!gi;s!\[.\+\]!!' berp_corpus_v1.0/transcript.txt > berp.txt

