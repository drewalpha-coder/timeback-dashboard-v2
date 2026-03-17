#!/bin/bash
# TimeBack Dashboard Setup
# Run this once to set up the dashboard on your computer

echo "=== TimeBack Dashboard Setup ==="
echo ""

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 is required. Install it from https://python.org"
    exit 1
fi

echo "Installing Python dependencies..."
pip3 install -r requirements.txt

echo "Installing Playwright browsers..."
python3 -m playwright install chromium

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Before starting the dashboard:"
echo "  1. Open Google Chrome"
echo "  2. Go to https://alpha.timeback.com and sign in with your Google account"
echo "  3. Keep Chrome open"
echo ""
echo "To start the dashboard:"
echo "  python3 app.py"
echo ""
echo "Then open http://localhost:5050 in your browser."
