#!/bin/bash

read filename

if [ -e $filename ];
then
	echo "File exists"
	cat $filename
else
	cat > $filename
	echo "File created and your typed content was saved"
fi

