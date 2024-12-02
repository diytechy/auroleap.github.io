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

# Create working folders
# RUN mkdir -p /usr/local/Working

# Set working directory:
# WORKDIR /usr/local/Working

#Setup entrypoint script:
# COPY --chmod=755 customep.sh /usr/local/bin/customep.sh
# ENTRYPOINT ["customep.sh"]

#ENTRYPOINT ["docker-entrypoint.sh"]
#CMD ["sh", "StartCmd.sh"]
#CMD [".\StartCmd.sh"]
#CMD ["Antora"]

WORKDIR /antora

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["antora"]