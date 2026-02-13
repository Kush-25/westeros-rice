#!/usr/bin/env bash

# Westeros Customiser
# Run with: bash setup.sh

set -euo pipefail

echo "====================================="
echo "  Welcome to Westeros Customiser    "
echo "  Pledge your allegiance...         "
echo "====================================="

# Quick check for KDE
if [[ -z "${KDE_SESSION_VERSION:-}" ]]; then
    echo "Warning: This works best on KDE Plasma."
    echo "Continuing anyway? (y/N)"
    read -r choice
    [[ "$choice" =~ ^[Yy]$ ]] || exit 0
fi

# House selection menu
echo ""
echo "Choose your house:"
echo "1) House Stark     (Winter is Coming)"
echo "2) House Lannister (Hear Me Roar!)"
echo "3) House Targaryen (Fire and Blood)"
echo "4) Quit"
echo ""
read -p "Enter number (1-4): " choice

case $choice in
    1)
        HOUSE="stark"
        echo "The North remembers... Applying Stark theme!"
        # Placeholder: we'll add real commands here
        ;;
    2)
        HOUSE="lannister"
        echo "A Lannister always pays his debts. Applying gold & crimson!"
        ;;
    3)
        HOUSE="targaryen"
        echo "Dracarys! Applying black & red fire theme."
        ;;
    *) exit 0 ;;
esac

# Future steps: apply wallpaper, colors, etc.
echo ""
echo "Theme applied for House $HOUSE!"
echo "(This is just the skeleton — more coming soon)"
echo "Valar morghulis."