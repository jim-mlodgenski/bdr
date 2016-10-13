--
-- Aliases and helpers to allow tests written using PostgreSQL 9.6 interfaces like
-- replication origins to work with their 9.4bdr predecessors like replication identifiers.
--
-- Not everything can be so mapped. Where possible a common helper is provided instead.
-- Where not possible separate expected files or even separate SQL tests are provided.
--
-- pg_event_trigger_get_creation_commands
-- =>
-- pg_event_trigger_ddl_commands
--
-- Event triggers changed quite a lot. 9.4 has full DDL deparse. 9.6 only has
-- limited event trigger hooks that capture the command type and a pointer to
-- the C struct for the command. There's no simple 1:1 mapping. 9.6 has no
-- deparse_utility_command.
--
-- The latest post of the deparse extension was
--   https://www.postgresql.org/message-id/CACACo5QQuAV+n4Gi+YA1JF_a+QenR6SJuP8CYdPSrXKa+FHS3A@mail.gmail.com
--