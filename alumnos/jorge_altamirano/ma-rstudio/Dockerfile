FROM philwebsurfer/ma-rstudio-base:latest

#RUN mkdir /home/rstudio/.cache \
#  && chown -R rstudio:rstudio /home/rstudio/.cache \
#  && mkdir -p /home/rstudio/Documents/jorge3a/itam
#ENV RSTUDIO_SPARK_HOME /home/rstudio/.cache/spark/spark-2.0.2-bin-hadoop2.7

RUN pip install --upgrade keras scipy h5py pyyaml requests Pillow 
RUN install2.r --error \
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
	CVXR \
	ggridges \
	rjags \
	webshot \
	gridExtra \
	patchwork \
	loo \
	mcmcplots \
	car \
	nullabor \
	rpivotTable \
	openxlsx \
	gridExtra \
	kableExtra \
	writexl \
	LaplacesDemon \
	pryr \
	rsample \
	survey \
	srvyr \
	nortest \
	httr \
	rvest && \
	rm -rf /tmp/downloaded_packages/
RUN r -e 'devtools::install_github("tereom/estcomp")' 
#RUN apt-get update 
#RUN apt-get upgrade -y 
RUN apt-get update &&  \
	apt-get install -y texlive-fonts-recommended  \
	texlive-fonts-extra \
	texlive-latex-extra \
	texlive-plain-generic && \
	apt-get clean all

