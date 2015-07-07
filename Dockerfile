FROM alpine

RUN apk --update add bash gcc git graphviz libffi-dev libvirt-dev libxml2-dev \
                     libxslt-dev linux-headers mariadb-dev musl-dev \
                     openssl-dev pkgconfig postgresql-dev py-pip python-dev \
                     sqlite-dev
RUN pip install tox

WORKDIR $HOME

ENTRYPOINT ["/bin/sh"]
