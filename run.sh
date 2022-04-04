#!/bin/bash

acc=0
until mix ecto.setup
do
  >&2 echo "Waiting for postgres can recieve TCP connections..."
  let acc++
  if [[ $acc -lt 3 ]]
  then
    sleep 0.01
  else
    break
  fi
done

if [ !$MIX_ENV ] || [ $MIX_ENV == "dev" ]
then
  if [ "$1" == "iex" ]
  then
    iex -S mix phx.server
  else
    mix phx.server
  fi
else
  mix phx.server
fi
