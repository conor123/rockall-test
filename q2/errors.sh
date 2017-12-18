abort()
{
    echo >&2 '
***************
*** ABORTED ***
***************
'
    echo "> An error occurred. Exiting!" >&2
    exit 1
}

trap 'abort' 0

set -e