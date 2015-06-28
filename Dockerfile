FROM ubuntu:trusty-20150612

# install Haskell, LaTeX, and Node
RUN apt-get update && apt-get install -y \
    haskell-platform \
    libghc-pandoc-dev \
    nodejs \
    pandoc \
    qpdf \
    texlive-fonts-recommended \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-xetex
    
# install pandoc
RUN cabal update && cabal install pandoc-1.14.0.4

# example command: docker run danielak/pandoc --version
WORKDIR /src
ENTRYPOINT ["/.cabal/bin/pandoc"]