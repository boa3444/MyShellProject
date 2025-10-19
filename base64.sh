#!/bin/bash

echo "Hi there" | base64

echo "Decoded:"
echo "SGkgdGhlcmUK" | base64 -d

