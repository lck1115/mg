#!/bin/sh
if [ ! -f UUID ]; then
  UUID="46368256-e141-4b26-b911-eba45ccee6d0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

