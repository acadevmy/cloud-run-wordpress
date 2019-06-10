#!/usr/bin/env bash

# Start the sql proxy
cloud_sql_proxy -instances=$CLOUDSQL_INSTANCE=tcp:3306 &

# Execute the rest of your ENTRYPOINT and CMD as expected.
exec "$@"