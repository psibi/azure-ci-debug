#!/usr/bin/env bash

rm a.txt b.txt c.txt *tar

touch a.txt
touch b.txt
touch c.txt

tar -cf a.tar a.txt
tar -cf b.tar b.txt

echo "View a.tar"
tar -tvf a.tar
echo "View b.tar"
tar -tvf b.tar

tar --force-local -cvf ~/jackal.tar -T /dev/null
echo "View jackal.tar"
tar -tvf ~/jackal.tar
echo "End view" 

rm -rf temp
mkdir temp
mv a.tar temp
tar -C temp --force-local -xf temp/a.tar
rm temp/a.tar
tar -C temp --force-local -rf ~/jackal.tar .

rm -rf temp
mkdir temp
mv b.tar temp
tar -C temp --force-local -xf temp/b.tar
rm temp/b.tar
tar -C temp --force-local -rf ~/jackal.tar .


echo "View jackal.tar"
tar -tvf ~/jackal.tar
echo "End view"
