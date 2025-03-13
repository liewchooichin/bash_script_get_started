#!/bin/bash
# Using here document and redirection.
# open file descriptor 3 for writing to output.txt.
exec 3> here_out.txt
# Get the output from cat.
cat <<EOF >&3
This output is redirected to fd 3.
Today is $(date).
EOF
# Close the fd 3.
exec 3>&-
# Show the output
cat here_out.txt
