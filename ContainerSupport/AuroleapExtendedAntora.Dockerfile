FROM antora/antora

# "#################################################"
# "Get the latest APT packages"
#RUN apk update

# "#################################################"
# "Install asciidoctor-kroki dependencies.
#RUN yarn global add asciidoctor-kroki

# "#################################################"
# "Install node.
#RUN apk add --update nodejs npm

#RUN npm i -g @antora/lunr-extension

# Set working directory:
WORKDIR /antora

COPY --chmod=755 ContainerSupport/customep.sh /usr/local/bin/
ENTRYPOINT ["customep.sh"]

CMD ["antora"]
