#!/bin/bash


##########lab4 Q1 #############
mkdir testchangemode
cd testchangemode
touch file1.txt file2 file3.sh 
for i in `find /home/khattab/testchangemode -type f`
# for i in `ls -la | grep '^-'`  ## grep begining with dasg -
do
chmod +x $i
# echo $i
done


#######lab4 Q2 ###############


# #!/bin/bash
# ####################################
# #
# # Backup to NFS mount script.
# #
# ####################################

# # What to backup. 
# backup_files=`find /home/khattab -type f`

# # Where to backup to.
# dest="/home/khattab/backup"
# # Create archive filename.
# day=`date`
# hostname=`hostname`
# archive_file="$hostname-$day.tgz"

# # Print start status message.
# echo "Backing up $backup_files to $dest/$archive_file"
# date
# echo

# # Backup the files using tar.
# tar czf $dest/$archive_file $backup_files

# # Print end status message.
# echo
# echo "Backup finished"
# date

# # Long listing of files in $dest to check file sizes.
# ls -lh $dest