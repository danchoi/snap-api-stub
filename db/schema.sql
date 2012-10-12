-- stub psql schema here

create table notes (
  note_id serial primary key,
  title varchar not null,
  created timestamp with time zone default now()
);
