FROM rocker/ml-verse:4.0.2

RUN mkdir /home/rstudio/.cache \
  && chown -R rstudio:rstudio /home/rstudio/.cache \
  && mkdir -p /home/rstudio/Documents/jorge3a/itam
ENV RSTUDIO_SPARK_HOME /home/rstudio/.cache/spark/spark-2.0.2-bin-hadoop2.7

RUN apt-get update \ 
    && apt-get install -y libudunits2-dev jags libc6-i386 libgdal-dev libmpfr-dev \
    && wget http://pj.freefaculty.org/Ubuntu/15.04/amd64/openbugs/openbugs_3.2.3-1_amd64.deb \
    && dpkg -i openbugs_3.2.3-1_amd64.deb \
    && pip install --upgrade keras scipy h5py pyyaml requests Pillow \
    && r -e 'devtools::install_github("rstudio/r2d3")' \
    && r -e "devtools::install_github('diegovalle/mxmaps')" \
    && r -e "webshot::install_phantomjs()" \
    && r -e 'devtools::install_github("easystats/insight")' \
    && r -e 'devtools::install_github("easystats/bayestestR")' \
    && install2.r --error \
	--deps TRUE \
	bayesm \
	R2jags \
	R2OpenBUGS \
	sparklyr \
    && r -e 'sparklyr::spark_install()' \
    && r -e 'devtools::install_github("bmschmidt/wordVectors")' \
    && r -e 'install.packages("rstan", repos = "https://cloud.r-project.org/")' \
    && mv /root/spark/ /home/rstudio/.cache \
    #&& apt-get upgrade -y \
    && apt-get clean all
#&& r -e 'devtools::install_github("rstudio/sparklyr")' \
