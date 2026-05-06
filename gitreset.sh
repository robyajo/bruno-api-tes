#!/bin/bash

echo "=================================="
echo " Git Reset Helper"
echo "=================================="

echo "1. Reset perubahan file"
echo "2. Reset commit terakhir"
echo "3. Hard reset ke remote"
echo ""

read -p "Pilih menu [1-3]: " MENU

case $MENU in

1)
    echo ""
    echo "===> Reset perubahan file"
    git restore .
    echo "✅ Perubahan dibatalkan"
    ;;

2)
    echo ""
    echo "===> Reset commit terakhir"
    git reset --soft HEAD~1
    echo "✅ Commit terakhir dibatalkan"
    ;;

3)
    echo ""
    echo "⚠️ Semua perubahan lokal akan hilang!"
    read -p "Yakin? (y/n): " CONFIRM

    if [ "$CONFIRM" = "y" ]; then
        git fetch origin
        git reset --hard origin/main
        echo "✅ Hard reset selesai"
    else
        echo "❌ Dibatalkan"
    fi
    ;;

*)
    echo "❌ Menu tidak valid"
    ;;
esac
