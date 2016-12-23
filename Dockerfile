FROM cheggwpt/php7:latest

MAINTAINER WT-Ops <wt-ops@chegg.com>

RUN apk --update --no-cache add \
        --virtual git=2.11.0-r0 nodejs=6.9.2-r0 groff less python py-pip && \
        pip install awscli==1.11.33 && \
        apk --purge -v del py-pip && \
        rm -rf /var/cache/apk/*
