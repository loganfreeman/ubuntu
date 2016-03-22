drop schema public cascade;
create schema public;
grant all on schema public to attendize;
SET search_path TO public;
ALTER database "attendize" SET search_path TO public;
ALTER SCHEMA public OWNER to postgres;
