#!/usr/bin/bash
# dependencies
. lib/errors.sh
. lib/helper_functions.sh
. lib/validations.sh

FILENAME="$1"

echo -e "***********************\n*** Email Validator ***\n***********************\n"
echo -e "> Analysing $FILENAME ..."

# Validate Input
validate_input $FILENAME

# Process Filename
process_file $FILENAME

# Finally
trap : 0

echo >&2 '
************
*** DONE *** 
************
'
