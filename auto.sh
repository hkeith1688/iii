#! /bin/bash

cd /C/Users/orozc/pic
ls
while true
do
  fc="$(ls | wc -l)"
  echo $fc
  if [ $fc -gt 0 ];
    then
      FILES=/c/Users/orozc/pic/*
      for f in $FILES
      do
        echo $f
        /mingw64/bin/git add $f
        /mingw64/bin/git commit -m "$(date +%H-%M-%S)"
        /mingw64/bin/git remote add origin git@github.com:orozcohsu/iii.git
        /mingw64/bin/git push -u origin master
        /mingw64/bin/git remote remove origin
      done
  fi;
  rm -rf /c/Users/orozc/pic/*
  sleep 3
done
