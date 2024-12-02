FROM antora/antora

# "#################################################"
# "Get the latest APT packages"
# "apt-get update"
RUN apk update
COPY --chmod=755 ContainerSupport/customentrypoint.sh /usr/local/bin/

# "#################################################"
# "Install asciidoctor-kroki dependencies.
RUN yarn global add asciidoctor-kroki

# "#################################################"
# "Install node.
RUN apk add --update nodejs npm


# Create working folders
RUN mkdir -p /usr/Working
RUN mkdir -p /usr/Working/Antora
#RUN mkdir -p /usr/app/antora

#Set custom entry file:
#WORKDIR "/"
WORKDIR /usr/Working
#ENTRYPOINT ["customentrypoint.sh"]
CMD [""]