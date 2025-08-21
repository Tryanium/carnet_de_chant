FROM ubuntu:18.04
COPY patch/ /patch/
RUN apt update && apt -y upgrade && \
    DEBIAN_FRONTEND=noninteractive apt install -y  --no-install-recommends --no-install-suggests \
    texlive texlive-latex-base texlive-latex-recommended texlive-latex-extra  \
    python3 python3-dev python3-pip texlive-luatex texlive-xetex wget \
    texlive-lang-english texlive-lang-french texlive-lang-portuguese texlive-lang-spanish  \
    lmodern texlive-lang-italian texlive-fonts-extra rsync && \
    pip3 install setuptools && \
    pip3 install patacrep && \
    wget -O lilypond.sh 'https://lilypond.org/download/binaries/linux-64/lilypond-2.22.2-1.linux-64.sh' && \
    bash ./lilypond.sh && \
    rsync -av /patch/patacrep/ /usr/local/lib/python3.6/dist-packages/patacrep/ && \
    songbook --version && \
    apt autoremove -y && rm -rf /var/cache/apt/archives /var/lib/apt/lists/* && rm -rf /patch ./lilypond.sh
RUN useradd -s /bin/bash -d /scout sgdf
RUN mkdir -p /scout/carnet
RUN chown -R sgdf:sgdf /scout
USER sgdf
ENV LANG='C.UTF-8'
ENV LC_ALL='C.UTF-8'
ENV PYTHONIOENCODING='utf-8'

CMD ["/scout/carnet/utils/rendu.sh"]
