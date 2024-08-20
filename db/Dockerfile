FROM postgres:15

RUN apt update && apt install -y tzdata

ENV TZ="Europe/Warsaw"

ENV POSTGIS_VERSION 3.3.0+dfsg-1~exp1.pgdg110+1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-15-postgis-3 postgresql-15-postgis-3-scripts \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=cTdw465G
ENV POSTGRES_DB=postgres

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

CMD ["postgres"]
