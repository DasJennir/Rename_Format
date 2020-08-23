#!/bin/bash

echo 'Note: only type the file format, do not type the dot'
echo 'What is the currently file type ? ' 
read currently
echo 'What is the new file format ? ' 
read new_format

 for file in *.$currently; do
   name=$(basename "$file" .$currently)
   mv "$file" "$name.$new_format"
 done
