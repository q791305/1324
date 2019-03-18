#!/bin/bash

cd /c/pic

while true
do
	fc="$(ls|wc -l)"
	if [ $fc -gt 0 ];then
	
			FILES=/c/pic/*	
			for f in $FILES 
			do
				/mingw64/bin/git add $f
				/mingw64/bin/git commit -m "$(date +%H-%M-%S)"
				/mingw64/bin/git remote add origin https://github.com/q791305/1324.git
				/mingw64/bin/git push -u origin master
				/mingw64/bin/git remote remove origin			
			done
	fi;
	
	rm -rf /c/pic/*
	sleep 3
done


