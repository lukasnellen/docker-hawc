ARG baseimage=lukasnellen/hawcape:c-6
FROM $baseimage as base

COPY pwfile /pwfile

RUN ./ape --pw-file=/pwfile fetch externals \
  && \
    rm /pwfile

RUN ./ape install externals

#############################################
FROM $baseimage

COPY --from=base /hawc/install /hawc/install

ARG ape_version=2.06.00

WORKDIR /hawc

ENV SCL_ENABLE="python27 rh-git29"

RUN scl enable python27 "pip install numpy"

COPY ./entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "bash" ]

