FROM rocker/verse:3.5.1

RUN mkdir /home/rstudio/.cache \
  && chown -R rstudio:rstudio /home/rstudio/.cache \
  && mkdir -p /home/rstudio/Documents/jorge3a/itam
ENV RSTUDIO_SPARK_HOME /home/rstudio/.cache/spark/spark-2.0.2-bin-hadoop2.7

RUN echo 'deb http://ftp.de.debian.org/debian stretch main'>> /etc/apt/sources.list \
    && apt-get update \ 
    && apt-get install -y libudunits2-dev python python-dev python-pip jags libc6-i386 libgdal-dev \
    && wget http://pj.freefaculty.org/Ubuntu/15.04/amd64/openbugs/openbugs_3.2.3-1_amd64.deb \
    && dpkg -i openbugs_3.2.3-1_amd64.deb \
    && pip install --upgrade tensorflow \
    && pip install --upgrade keras scipy h5py pyyaml requests Pillow \
    && install2.r --error \
	arules \
	arulesViz \
	tidygraph \
	tidytext \
	textreuse \
	hash \
	text2vec \
	ggraph \
	itertools \
	RcppRoll \
	expm \
	igraphdata \
        igraph \
        expm \
        igraphdata \
        visNetwork \
        tidygraph \
        tidyverse \
        tidytext \
        ggrepel \
        tsne \
        keras \
        devtools \
	fastDummies \
	GGally \
	ggridges \
	rjags \
	webshot \
	loo \
    && r -e 'devtools::install_github("rstudio/r2d3")' \
    && r -e "devtools::install_github('diegovalle/mxmaps')" \
    && install2.r --error \
	--deps TRUE \
	bayesm \
	R2jags \
	R2OpenBUGS \
	sparklyr \
    && r -e 'sparklyr::spark_install()' \
    && r -e 'devtools::install_github("bmschmidt/wordVectors")' \
    && mv /root/spark/ /home/rstudio/.cache 
#&& r -e 'devtools::install_github("rstudio/sparklyr")' \
