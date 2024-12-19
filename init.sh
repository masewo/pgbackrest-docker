#!/bin/bash
service ssh start

docker-entrypoint.sh postgres -c archive_mode=on -c archive_command='pgbackrest --stanza=demo archive-push %p' -c max_wal_senders=3 -c wal_level=replica
