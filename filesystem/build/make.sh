#!/bin/bash

echo "int main() { return 0; }" > make.c
gcc -static make.c -o ../true
rm make.c
