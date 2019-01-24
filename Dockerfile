FROM busybox
LABEL maintainer=Carlos Giraldo <carlitosgiraldo@gmail.com>
LABEL version=0.1
ENV WS_VERSION 0.1
ENV REGION=North
RUN echo 'echo $@ is King in the $REGION !!!' > /usr/sbin/winterfell_says \
          && chmod +x /usr/sbin/winterfell_says
ENTRYPOINT [“/usr/sbin/winterfell_says”]
CMD [“Jon Snow”]
