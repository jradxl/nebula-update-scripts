#!/bin/bash

lighthouses[1]="lighthouse1"
lighthouses[2]="lighthouse2"

nodes[1]="node1#192.168.100.70/24"
nodes[2]="node2#192.168.100.50/24"
nodes[3]="node3#192.168.100.90/24"
nodes[4]="node4#192.168.100.76/24"
nodes[5]="node5#192.168.100.191/24"
nodes[6]="node6#192.168.100.128/24"
nodes[7]="node7#192.168.100.20/24"

echo "Creating CA, Lighthouses and Nodes if not already created..."

networkname="My Nebula Network"

echo "Creating CA"
if [[ -f ca.key ]]; then
  echo "   CA already exists. Skipping..."
else
  echo "   Creating CA with 10 years duration..."
  nebula-cert ca -encrypt -duration 87600h0m0s -name "$networkname" 
fi

for lighthouse in ${lighthouses[@]};
do
  echo "Processing Lighthouse: $lighthouse"
  echo "TODO. really only a config difference..."
done

for node in "${nodes[@]}"
do
  echo "Processing Node: ${node}"
  readarray -d# -t DATA < <( printf "%s" "${node}" ) 
  if [[ -f "${DATA[0]}.key" ]]; then
    echo "    Already exists, skipping ${DATA[0]}"
  else
    nebula-cert sign -name "${DATA[0]}" -ip "${DATA[1]}"
  fi
done

echo ""
for f in *.crt
do
  echo "==============================="
  echo "Printing $f"
  nebula-cert print -path $f
  echo ""
done
echo "Finished."

exit 0

