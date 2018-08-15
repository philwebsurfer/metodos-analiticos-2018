FROM rocker/verse:3.4.4


RUN mkdir /home/rstudio/.cache \
  && chown -R rstudio:rstudio /home/rstudio/.cache \
  && mkdir -p /home/rstudio/Documents/jorge3a/itam
ENV RSTUDIO_SPARK_HOME /home/rstudio/.cache/spark/spark-2.0.2-bin-hadoop2.7

RUN apt-get update \ 
    && apt-get install -y libudunits2-dev python python-dev python-pip jags r-cran-rjags \
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
    && r -e 'devtools::install_github("rstudio/r2d3")' \
    && install2.r --error \
	--deps TRUE \
	R2jags \
	sparklyr \
    && r -e 'sparklyr::spark_install()' \
    && r -e 'devtools::install_github("bmschmidt/wordVectors")' \
    && mv /root/spark/ /home/rstudio/.cache 
#&& r -e 'devtools::install_github("rstudio/sparklyr")' \
