#!bin/bash

EXPECTED="Hello, World!"
OUTPUT=$(node -e "console.log(require('./app')('Test'))")

if [ "$OUTPUT" = "Hello, Test!" ]; then
    echo "Test passed!"
else
    echo "Test failed: Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi
