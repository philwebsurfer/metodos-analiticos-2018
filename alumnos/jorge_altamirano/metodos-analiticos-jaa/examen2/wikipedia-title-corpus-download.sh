#!/bin/sh
#english español Deutsch portugués francais tagalog italiano vietnamese
source ~/.bash_profile
for lang in en es de pt fr lt it vi; 
do
	echo "Downloading $lang"
	wget -c "https://dumps.wikimedia.org/${lang}wiki/latest/${lang}wiki-latest-all-titles-in-ns0.gz"
	echo -n Transforming $lang...
	zcat ${lang}wiki-latest-all-titles-in-ns0.gz | \
		 sed 's!_\+! !g;s![^a-z ]!!ig;s!^\s\+!!;s!\s\+$!!;/^\s*$/d' | \
		 tr '[:upper:]' '[:lower:]' | tr ' ' '\n' | sort -u > "${lang}wiki-latest-all-titles-in-ns0-transform"
	echo " done!"
done
cat *-transform > wiki-titles.txt
hdfs dfs -copyFromLocal wiki-titles.txt hdfs://jupyter.corp.penoles.mx:9000/ma2018-examen2/
