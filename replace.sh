#!/bin/sh

files=$(find .)

for file in $files; do
  if [ "$file" != "$0" ]; then
    sed -i 's/litecoin/testcoin/g' $file
    sed -i 's/LITECOIN/LITECOIN/g' $file
    sed -i 's/Litecoin/Testcoin/g' $file
    sed -i 's/LTC/TSC/g' $file
  fi
done

for file in $files; do
  replace=$( sed 's/litecoin/testcoin/g' <<<$file )
  if [ "$file" != "$replace" ]; then
    mv $file $replace
  fi
done
#
