validate_email()
{
	if [[ "$1" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$ ]]
    then
        return 0
    else
        return 1
    fi
}

validate_input()
{
  if [ $# -eq 0 ]
  then
    echo "> ERROR: No arguments supplied!"
    return 1
  else
  	return 0
  fi
}
