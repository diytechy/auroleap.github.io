FROM antora/antora

# "#################################################"
# "Get the latest APT packages"
# "apt-get update"
RUN apk update
COPY --chmod=755 ContainerSupport/custom.entrypoint /usr/local/bin/

# "#################################################"
# "Install asciidoctor-kroki dependencies.
RUN yarn global add asciidoctor-kroki

# "#################################################"
# "Install node.
RUN apk add --update nodejs npm

RUN npm i -g @antora/lunr-extension

# Create working folders
RUN mkdir -p /usr/local/Working
RUN mkdir -p /usr/local/Working/antora
#RUN mkdir -p /usr/app/antora

#Set custom entry file:
#WORKDIR "/"
WORKDIR /usr/local/Working
ENTRYPOINT ../bin/custom.entrypoint
#CMD ["Antora"]