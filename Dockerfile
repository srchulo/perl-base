FROM perl:5.30

RUN mkdir -p /perlconfig
COPY .spellunker.en /root/
COPY .perlcriticrc /perlconfig
COPY .perltidyrc /perlconfig
COPY .tidyallrc /perlconfig
ENV PERLCRITIC /perlconfig/.perlcriticrc
ENV PERLTIDY /perlconfig/.perltidyrc
