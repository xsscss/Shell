#!/bin/bash
a=1
while test $a -le 5;#while后面必须加命令
do 
echo "$a"
((a++));
done

