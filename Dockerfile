FROM danielak/latex-trusty:latest

# Get the cabal installer
#   for installing Haskell packages from source
RUN apt-get update && \
        apt-get install --assume-yes cabal-install

# Install Pandoc
RUN cabal update && cabal install pandoc
RUN cabal update && cabal install pandoc-citeproc

# Link Pandoc Binaries
RUN ln -s /root/.cabal/bin/pandoc /usr/local/bin/pandoc
RUN ln -s /root/.cabal/bin/pandoc-citeproc /usr/local/bin/pandoc-citeproc
