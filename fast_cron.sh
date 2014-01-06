#!/bin/bash

FILE=/Users/lsmolic/Sites/activate_mobile/tmp/test.txt
function file_exists()
{
  if [ -f $FILE ];
  then
    rm -f /Users/lsmolic/Sites/activate_mobile/tmp/test.txt
    /Applications/TextEdit.app/Contents/MacOS/TextEdit
  fi    
}


function begin_loop()
{
i=5
while [ $i -le 10 ]
do
 file_exists
 sleep 2
 i=5
done
}

begin_loop
