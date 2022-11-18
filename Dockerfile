FROM ubuntu

RUN apt-get update \
    && apt-get install \
            git \
            luajit \
            neovim \
            python3-neovim \
            -y

RUN useradd -rm -d /home/mvim -s /bin/bash -g root -G sudo -u 1001 mvim

WORKDIR /home/mvim
RUN mkdir .config
COPY /nvim .config/nvim
RUN chown -R mvim .config/nvim
USER mvim

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# CMD ["nvim"]
