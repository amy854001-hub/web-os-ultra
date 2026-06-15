#!/bin/bash

# WebOS Ultra Server Installer
# For Linux / Termux Server environments

echo "🚀 Starting WebOS Ultra Server Setup..."
echo "----------------------------------------"

# 1. Update system packages
echo "📦 Updating package lists..."
if [ -x "$(command -v apt)" ]; then
    sudo apt update -y && sudo apt install python3 -y
elif [ -x "$(command -v pkg)" ]; then
    # For Termux users
    pkg update -y && pkg install python -y
fi

# 2. Verify Python installation
if ! [ -x "$(command -v python3)" ]; then
  echo "❌ Error: Python3 could not be installed automatically."
  echo "Please install Python3 manually and run this script again."
  exit 1
fi

# 3. Create a quick-launch shortcut command
echo "🔧 Creating global system command 'webos-server'..."
cat << 'EOF' > webos-server
#!/bin/bash
echo "🌐 WebOS Ultra Server starting on http://localhost:8000"
echo "Press Ctrl+C to stop the server."
python3 -m http.server 8000
EOF

# Make it executable
chmod +x webos-server

# Try to move it to system binaries so they can run it from anywhere
if [ -d "/usr/local/bin" ]; then
    sudo mv webos-server /usr/local/bin/webos-server 2>/dev/null || mv webos-server ./webos-server
    echo "✅ Success! You can now start the host by typing: webos-server"
else
    echo "✅ Success! Start your host server by running: ./webos-server"
fi

echo "----------------------------------------"
echo "🎉 Installation Complete!"
echo "To host right now, run your server and open http://localhost:8000 in your browser."
