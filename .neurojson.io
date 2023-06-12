#!/bin/sh
## Author: Qianqian Fang, q.fang at neu.edu
## Format: .neurojson.io <https://username:password@couchdbserver:port> <databasename>

ORG="neurojson_jmesh_samples"
if [ ! -z "$1" ]; then
  NIO=$1
fi

if [ ! -z "$2" ]; then
  ORG=$2
fi

[ -f .neurojson.header.json ] && NIO_HEADER=.neurojson.header.json

ff=`find -name "*.jmsh"`
for f in $ff; do
  outfile=`realpath --relative-to=${PWD} "$f" | sed -e 's/\//./g'`
  outputjson="${f%/*}/${outfile%.*}.json"
  (tr -d '\n' < "$f") | jq -s add $NIO_HEADER - | jq 'del(._DataInfo_)' > "$outputjson"
  curl -X PUT -d@"$outputjson"  $NIO/$ORG/${outfile%.*}
done
