FROM alpine

LABEL maintainer="Alex Druzenko <alex@druzenko.com>"

COPY dist/toros /opt/bin/toros

ENTRYPOINT ["/opt/bin/toros"]