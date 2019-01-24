FROM busybox
ARG version=0.1
LABEL maintainer="Carlos Giraldo <carlitosgiraldo@gmail.com>"
LABEL version=$version

ENV WS_VERSION $version
ENV REGION=North
RUN echo 'echo $@ is King in the $REGION !!!' > /usr/sbin/winterfell_says \
          && chmod +x /usr/sbin/winterfell_says
ENTRYPOINT [“/usr/sbin/winterfell_says”]
CMD [“Jon Snow”]
