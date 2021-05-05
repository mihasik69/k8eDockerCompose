psql --variable=ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
    CREATE ROLE app42paas WITH LOGIN PASSWORD 'app42paas';
    CREATE DATABASE "app42paas-api" OWNER = app42paas;
    GRANT ALL PRIVILEGES ON DATABASE "app42paas-api" TO events;
EOSQL