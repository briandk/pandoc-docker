FROM danielak/ubuntu-trusty

# Install Pandoc
RUN cabal update && cabal install pandoc
RUN cabal update && cabal install pandoc-citeproc

# Link Pandoc Binaries
RUN ln -s /root/.cabal/bin/pandoc /usr/local/bin/pandoc
RUN ln -s /root/.cabal/bin/pandoc-citeproc /usr/local/bin/pandoc-citeproc
