#!/bin/bash

echo "<config>" > $1

for x in `clinfo -l | grep -oP "Device #\K[0-9]+"`; do

  echo "<slot id='$x' type='GPU'>" >> $1
  echo "  <cuda-index v='$x' />" >> $1
  echo "  <gpu-index v='$x' />" >> $1
  echo "  <opencl-index v='$x' />" >> $1
  echo "</slot>" >> $1

done

echo "</config>" >> $1

echo "Built config at: $1"
