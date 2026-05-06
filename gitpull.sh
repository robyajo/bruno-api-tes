#!/bin/bash

BRANCH="main"

echo "=================================="
echo " Git Pull Helper"
echo "=================================="

echo ""
echo "===> Git Pull"

git pull origin $BRANCH

if [ $? -eq 0 ]; then
  echo ""
  echo "✅ Pull berhasil!"
else
  echo ""
  echo "❌ Pull gagal!"
fi
