FROM danielak/latex-trusty:latest

# Install Pandoc
RUN cabal update && cabal install pandoc
RUN cabal update && cabal install pandoc-citeproc

# Link Pandoc Binaries
RUN ln -s /root/.cabal/bin/pandoc /usr/local/bin/pandoc
RUN ln -s /root/.cabal/bin/pandoc-citeproc /usr/local/bin/pandoc-citeproc

# Get the system ready to build R from source
RUN apt-get update && apt-get build-dep --assume-yes \
    r-base-core \
    r-cran-rgl
