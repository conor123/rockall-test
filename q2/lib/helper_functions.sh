process_file()
{
  MYOUTFILE="logs/invalid_emails.txt"
  if [ -f $FILENAME ]
  then
    i=0
    while read -r line
    do
      email_address=$line
      ((i++))
      echo "> checking $email_address"
      if validate_email $email_address
      then
        echo "> VALIDATED: $email_address"
      else
        echo "> NOT VALID: $email_address"
        echo "$i. $email_address" >> $MYOUTFILE
      fi
    done < $FILENAME
  else
    echo "> Cannot read $FILENAME" 
    exit 1
  fi
}