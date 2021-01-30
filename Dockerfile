FROM rstudio/plumber

RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    #libcairo2-dev/unstable \
    libxt-dev \
    libssl-dev \
    r-cran-rstan

#RUN R -e "install.packages('V8')"
#RUN R -e "install.packages('prophet', type='source')"

#RUN R -e "install.packages('V8')"
#RUN R -e "install.packages('rstan')"
#RUN R -e "install.packages('shiny')"
#RUN R -e "install.packages('prophet', repos = 'http://cran.r-project.org')"


CMD ["/app/plumber.R"]