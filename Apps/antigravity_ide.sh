#!/usr/bin/env bash

set -e

if ! command -v curl >/dev/null 2>&1; then
    echo "Error: curl is not installed."
    echo "Install it first with:"
    echo "sudo apt install curl"
    exit 1
fi

echo "Creating keyrings directory..."
sudo mkdir -p /etc/apt/keyrings

echo "Downloading repository signing key..."
curl -fsSL https://us-central1-apt.pkg.dev/doc/repo-signing-key.gpg \
    | sudo gpg --dearmor -o /etc/apt/keyrings/antigravity-repo-key.gpg

echo "Adding Antigravity repository..."
echo "deb [signed-by=/etc/apt/keyrings/antigravity-repo-key.gpg] https://us-central1-apt.pkg.dev/projects/antigravity-auto-updater-dev/ antigravity-debian main" \
    | sudo tee /etc/apt/sources.list.d/antigravity.list > /dev/null

echo "Updating package lists..."
sudo apt update

echo "Installing Antigravity..."
sudo apt install -y antigravity

echo "✅ Done!"



