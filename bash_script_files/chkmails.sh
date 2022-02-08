
# username="moero2019@gmail.com"
# password="mohamedsalma2019"
# echo
# curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" |  grep -oPm1 "(?<=<title>)[^<]+" | sed '1d'