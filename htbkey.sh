#/bin/sh

KEYGEN=`curl -v --silent -X POST https://www.hackthebox.eu/api/invite/generate 2>&1 | grep code | cut -d "\"" -f 8 | base64 --decode`

echo "Your inv key: $KEYGEN"
