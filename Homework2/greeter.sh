#!/bin/bash

echo "= GREETER SCRIPT ="
echo ""

if [ $# -lt 3 ]; then
    echo "Error: Not enough arguments"
    echo "Received: $# arguments"
    echo "Required: 3 arguments"
    echo ""
    echo "Usage: $0 <First Name> <Last Name> <Group>"
    echo "Example: $0 Ivan Ivanov Bio305»
    exit 1
fi

FIRST=$1
LAST=$2
GROUP=$3

echo "Arguments received:"
echo "  First name: $FIRST"
echo "  Last name:  $LAST"
echo "  Group:      $GROUP"
echo ""
echo "Welcome, $FIRST $LAST from group $GROUP!"
echo "========================="


echo ""
echo "Script info:"
echo "  Script name: $0"

