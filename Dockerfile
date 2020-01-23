FROM perl:5.30

RUN mkdir -p /perlconfig
COPY .spellunker.en /perlconfig
COPY .perlcriticrc /perlconfig
COPY .perltidyrc /perlconfig
COPY .tidyallrc /perlconfig
ENV PERLCRITIC /perlconfig/.perlcriticrc
ENV PERLTIDY /perlconfig/.perltidyrc
