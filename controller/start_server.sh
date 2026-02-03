#!/bin/bash

# ============================================
# Portfolio - Local Server Launcher
# For Mac and Linux
# ============================================

echo ""
echo "========================================"
echo "Portfolio Local Server"
echo "========================================"
echo ""

# Check if Python 3 is installed
if command -v python3 &> /dev/null; then
    echo "[SUCCESS] Python 3 detected!"
    echo ""
    echo "Starting local server..."
    echo ""
    echo "Open your browser and go to:"
    echo ""
    echo "  http://localhost:8000"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo ""
    python3 -m http.server 8000

# Check if Python 2 is installed
elif command -v python &> /dev/null; then
    echo "[SUCCESS] Python detected!"
    echo ""
    echo "Starting local server..."
    echo ""
    echo "Open your browser and go to:"
    echo ""
    echo "  http://localhost:8000"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo ""
    python -m SimpleHTTPServer 8000

# Try with Node.js http-server
elif command -v http-server &> /dev/null; then
    echo "[SUCCESS] http-server detected!"
    echo ""
    echo "Starting local server..."
    echo ""
    http-server -p 8000

else
    echo "[ERROR] Neither Python nor Node.js http-server is installed!"
    echo ""
    echo "Install Python from: https://www.python.org/downloads"
    echo ""
    echo "Or install Node.js http-server:"
    echo "  npm install -g http-server"
    echo ""
    echo "Then run:"
    echo "  http-server -p 8000"
fi
