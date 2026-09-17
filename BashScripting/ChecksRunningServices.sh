#!/bin/bash

echo "======================================"
echo "      Running Services"
echo "======================================"

systemctl list-units --type=service --state=running

echo
echo "======================================"
echo "      Service Check Complete"
echo "======================================"