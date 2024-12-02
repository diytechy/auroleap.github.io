FROM antora/antora

# "#################################################"
# "Get the latest APT packages"
# "apt-get update"
RUN apt-get update

# "#################################################"
# "Install asciidoctor-kroki dependencies.
RUN yarn global add asciidoctor-kroki

# "#################################################"
# "Install node.
RUN apt-get install -y \
    software-properties-common \
    npm
RUN npm install npm@latest -g && \
    npm install n -g && \
    n latest