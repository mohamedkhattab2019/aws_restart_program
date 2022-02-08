#!/bin/bash                                                                                                      

DAY="$(date +%Y_%m_%d)"                                                                                           

SAVE="labsuser@127.0.0.1:/tmp"                                                                                    

BACKUP="/home/labsuser/$DAY-backup-companyA.tar.gz"                                                               

sudo tar -csvpzf $BACKUP /home/labsuser/companyA                                                                  

scp $BACKUP $SAVE                                                                                                 

rm $BACKUP  