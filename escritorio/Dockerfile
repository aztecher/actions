FROM python:alpine3.6

RUN apk add --update && \
    apk add zlib-dev libjpeg-turbo-dev alpine-sdk && \
    pip3.6 install sphinx sphinx_rtd_theme && \
    pip3.6 install sphinxcontrib-seqdiag && \
    pip3.6 install sphinxcontrib-blockdiag && \
    pip3.6 install sphinxcontrib-actdiag && \
    pip3.6 install sphinxcontrib-nwdiag && \
    pip3.6 install -e "git+git://github.com/proycon/sphinx-to-github.git#egg=sphinx-to-github"

ENTRYPOINT ["/bin/sh"]

