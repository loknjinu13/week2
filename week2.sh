#!/bin/bash
echo "Author:Fongoh"
echo "Date:Jan 21 2018"
echo "Objective:Linux Commands I now Understand"

#Create a file
touch Net1
#Create 2 directories
mkdir Chapter2 Chapter3
#Let's check our file and directoies
ls
#Let's move our File to Chapter2
mv Net1 Chapter2
#let's change directory to Chapter2
cd Chapter2
#lets's check the permissions of our file Net1
ls -l Net1
#let's collect system information and output to file Net2
head /proc/cpuinfo > Net2
#let's check the difference between Net1 and Net2
diff -u Net1 Net2
#lets present Net2 in print format and filtered
cat Net2 | sort | uniq | pr
#let's append more information to Net2 redirecting
mkdir --version >> Net2
#let's show the appended Net2 file
cat Net2 | fmt | pr
#let's copy Net2 to Net3
cp Net2 Net3
#let's compress Net1 Net2 Net3 after confirming they are all in Chapter2
tar cvvf Ourdocs.tar Net1 Net2 Net3
#let's copy Ourdocs.tar to Chapter3 Directory
cp Ourdocs.tar Chapter3
#Check the move
ls -la
#let's change directory to home
cd
#let's go to Chapter3 directory
cd Chapter3
#let's check if our archived file is present with its file format
ls -la
#End of Script.
