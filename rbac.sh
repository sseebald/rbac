#!/bin/bash

host=$1 #https://localhost:4433/rbac-api/v1
cacert="$(/opt/puppet/bin/puppet config print localcacert)"
cert="$(/opt/puppet/bin/puppet config print hostcert)"
key="$(/opt/puppet/bin/puppet config print hostprivkey)"

json="$(curl -s -k -X PUT -H 'Content-Type: application/json' -d {} ${host}/ds --cacert ${cacert} --cert ${cert} --key ${key})"

echo $json
