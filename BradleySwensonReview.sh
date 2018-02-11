#Nice script that runs without errors!

#To make things more efficient and easier you could replace

#       /home/user/Desktop/devices.txt

#with

 #     ~/Desktop/devices

#The ~/ is the default home directory so that way each person running the script wont have to edit it.

#Also when using the output command ">" to output the results of a command to a file you don't need 
#to first create that file as it will create it for you(You could very well know this and just wanted 
#to make use of the touch command). If a file already exists with the name devices.txt when you run 
#"lsscsi > /home/user/Desktop/devices.txt" it completely replaces the file.

#and if you wanted to later output more information to that file you could use the command ">>" to append the output at the end of the file. 

#_______________________________________________________

#ORIGINAL BELOW

#!/bin/bash


# The following commands write the information for attached devices to a text f$
#replace "user" with the correct profile name.

touch /home/user/Desktop/devices.txt
lsscsi > /home/user/Desktop/devices.txt

# The command bellow captures info about harddisk A on the system.

touch /home/user/Desktop/devices2.txt
udevadm info --query=all --name=/dev/sda > /home/user/Desktop/devices2.txt