-- stub psql schema here

create table notes (
  note_id serial primary key,
  title varchar,
  created timestamp with time zone default now()
);
