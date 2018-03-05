#!/bin/sh
set -e
# Sleep to let the db server come up
sleep 5
cd orderapi
mix deps.get
mix ecto.create
mix ecto.migrate
mix phx.server