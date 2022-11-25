FROM alpine:edge

RUN apk update \
    && apk add git gcc g++ zlib font-hack-nerd ripgrep neovim=0.8.1-r0 nodejs npm

# Install language servers
RUN npm install -g \
  typescript typescript-language-server \
  vscode-langservers-extracted \
  graphql-language-service-cli

RUN adduser --disabled-password mvim

WORKDIR /home/mvim
RUN mkdir .config
COPY /nvim .config/nvim
RUN chown -R mvim .config/nvim
USER mvim

# Install Packer
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# Install neovim packages
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Directory to mount volume
RUN mkdir tmp
WORKDIR /home/mvim/tmp

CMD ["nvim"]
