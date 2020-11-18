FROM sentinelhub/eolearn
MAINTAINER Matej Batic <matej.batic@sinergise.com>

USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    r-base r-base-dev r-base-core r-base-html \
    libcurl4-gnutls-dev software-properties-common && \
    apt-get install -y libmagick++-dev libnetcdf-dev r-cran-ncdf4 r-cran-igraph && \
    rm -rf /var/lib/apt/lists/*
RUN wget https://cran.r-project.org/src/contrib/Archive/Rcpp/Rcpp_0.12.16.tar.gz && R CMD INSTALL Rcpp_0.12.16.tar.gz
RUN wget https://cloud.r-project.org/src/contrib/Archive/RcppArmadillo/RcppArmadillo_0.8.400.0.0.tar.gz && R CMD INSTALL RcppArmadillo_0.8.400.0.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/sp/sp_1.2-7.tar.gz && R CMD INSTALL sp_1.2-7.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/raster/raster_2.6-7.tar.gz && R CMD INSTALL raster_2.6-7.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/quadprog/quadprog_1.5-5.tar.gz && R CMD INSTALL quadprog_1.5-5.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/zoo/zoo_1.8-2.tar.gz && R CMD INSTALL zoo_1.8-2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/xts/xts_0.10-2.tar.gz && R CMD INSTALL xts_0.10-2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/curl/curl_3.2.tar.gz && R CMD INSTALL curl_3.2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/TTR/TTR_0.23-3.tar.gz && R CMD INSTALL TTR_0.23-3.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/quantmod/quantmod_0.4-13.tar.gz && R CMD INSTALL quantmod_0.4-13.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/fracdiff/fracdiff_1.4-2.tar.gz && R CMD INSTALL fracdiff_1.4-2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/tseries/tseries_0.10-44.tar.gz && R CMD INSTALL tseries_0.10-44.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/colorspace/colorspace_1.3-2.tar.gz && R CMD INSTALL colorspace_1.3-2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/timeDate_3043.102.tar.gz && R CMD INSTALL timeDate_3043.102.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/lmtest/lmtest_0.9-36.tar.gz && R CMD INSTALL lmtest_0.9-36.tar.gz
RUN wget https://cran.r-project.org/src/contrib/magrittr_1.5.tar.gz && R CMD INSTALL magrittr_1.5.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/digest/digest_0.6.15.tar.gz && R CMD INSTALL digest_0.6.15.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/gtable/gtable_0.2.0.tar.gz && R CMD INSTALL gtable_0.2.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/plyr/plyr_1.8.4.tar.gz && R CMD INSTALL plyr_1.8.4.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/glue/glue_1.2.0.tar.gz && R CMD INSTALL glue_1.2.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/stringi/stringi_1.2.3.tar.gz && R CMD INSTALL stringi_1.2.3.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/stringr/stringr_1.3.1.tar.gz && R CMD INSTALL stringr_1.3.1.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/reshape2/reshape2_1.4.3.tar.gz && R CMD INSTALL reshape2_1.4.3.tar.gz
RUN wget https://cran.r-project.org/src/contrib/RColorBrewer_1.1-2.tar.gz && R CMD INSTALL RColorBrewer_1.1-2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/dichromat_2.0-0.tar.gz && R CMD INSTALL dichromat_2.0-0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/munsell_0.5.0.tar.gz && R CMD INSTALL munsell_0.5.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/labeling/labeling_0.3.tar.gz && R CMD INSTALL labeling_0.3.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/R6/R6_2.2.2.tar.gz && R CMD INSTALL R6_2.2.2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/viridisLite_0.3.0.tar.gz && R CMD INSTALL viridisLite_0.3.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/scales/scales_0.5.0.tar.gz && R CMD INSTALL scales_0.5.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/crayon_1.3.4.tar.gz && R CMD INSTALL crayon_1.3.4.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/assertthat/assertthat_0.2.0.tar.gz && R CMD INSTALL assertthat_0.2.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/cli/cli_1.0.0.tar.gz && R CMD INSTALL cli_1.0.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/utf8_1.1.4.tar.gz && R CMD INSTALL utf8_1.1.4.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/rlang/rlang_0.2.1.tar.gz && R CMD INSTALL rlang_0.2.1.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/pillar/pillar_1.2.3.tar.gz && R CMD INSTALL pillar_1.2.3.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/tibble/tibble_1.4.2.tar.gz && R CMD INSTALL tibble_1.4.2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/lazyeval/lazyeval_0.2.1.tar.gz && R CMD INSTALL lazyeval_0.2.1.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_2.2.1.tar.gz && R CMD INSTALL ggplot2_2.2.1.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/forecast/forecast_8.2.tar.gz && R CMD INSTALL forecast_8.2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/sandwich/sandwich_2.4-0.tar.gz && R CMD INSTALL sandwich_2.4-0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Archive/strucchange/strucchange_1.5-1.tar.gz && R CMD INSTALL strucchange_1.5-1.tar.gz
RUN wget https://cran.r-project.org/src/contrib/bfast_1.5.7.tar.gz && R CMD INSTALL bfast_1.5.7.tar.gz

ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

USER $NB_USER
RUN pip install notebook
RUN pip install contextily
RUN pip install rpy2==2.8

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.disable_check_xsrf=True", "--notebook-dir=/home/eolearner" ]
