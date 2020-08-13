FROM python:3.8.5-slim-buster
LABEL maintainer="AlphaCodingHub <AlphaCodingHub@outlook.com>"

WORKDIR /docs
RUN apt-get update \
     && apt-get install -y \
     graphviz \
     imagemagick \
     make \
     \
     latexmk \
     lmodern \
     xindy \
     texlive-latex-recommended \
     texlive-latex-extra \
     texlive-fonts-recommended \
     texlive-fonts-extra \
     texlive-lang-cjk \
     texlive-lang-japanese \
     texlive-luatex \
     texlive-xetex \
     \
     && python3 -m pip install -U pip \
     && python3 -m pip install Sphinx==3.2.0 \
     Pillow \
     guzzle_sphinx_theme   \
     livereload   \
     recommonmark   \
     rinohtype    \
     sphinx-autobuild   \
     sphinx_bootstrap_theme   \
     sphinx-prompt   \
     sphinx_rtd_theme    \
     sphinxcontrib-actdiag  \
     sphinxcontrib-blockdiag   \
     sphinxcontrib-excel-table   \
     sphinxcontrib-fulltoc   \
     sphinxcontrib-git-context   \
     sphinxcontrib-nwdiag    \
     sphinxcontrib-plantuml   \
     sphinxcontrib-seqdiag  \
     \
     && apt-get autoremove -y \
     && rm -rf /var/cache/* \
     && apt-get clean \
     && rm -rf /var/lib/apt/lists/*

CMD ["make", "latexpdf"]
