#!/bin/bash

# ===== CONFIG =====
BRANCH="main"
# ==================

# Minta commit message
echo "=================================="
echo " Masukkan pesan commit Git"
echo "=================================="
read -p "Commit message: " COMMIT_MSG

# Validasi kosong
if [ -z "$COMMIT_MSG" ]; then
  echo "❌ Commit message tidak boleh kosong!"
  exit 1
fi

echo ""
echo "===> Git Add"
git add .

echo ""
echo "===> Git Commit"
git commit -m "$COMMIT_MSG"

# Cek apakah commit berhasil
if [ $? -ne 0 ]; then
  echo "❌ Commit gagal!"
  exit 1
fi

echo ""
echo "===> Git Push"
git push origin $BRANCH

# Cek push berhasil
if [ $? -eq 0 ]; then
  echo ""
  echo "✅ Berhasil push ke branch $BRANCH"
else
  echo ""
  echo "❌ Push gagal!"
fi
