abort()
{
  echo "> An error occurred. Exiting!" >&2
  echo >&2 '
***************
*** ABORTED ***
***************
'
  exit 1
}

trap 'abort' 0

set -e