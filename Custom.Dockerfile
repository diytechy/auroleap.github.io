FROM antora/antora

# "#################################################"
# "Get the latest APT packages"
# "apt-get update"
RUN apk update

# "#################################################"
# "Install asciidoctor-kroki dependencies.
RUN yarn global add asciidoctor-kroki

# "#################################################"
# "Install node.
RUN apk add --update nodejs npm