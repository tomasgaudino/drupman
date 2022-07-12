#!/usr/bin/bash

echo "🕛 Updating and upgrading software..."
sudo apt-get update
sudo apt-get upgrade
echo "✅ Software updated and upgraded."

# Install python venv
echo "🕛 Installing python..."
sudo apt install python3-pip
echo "✅ Python installed."
echo ""


#Install pipenv (pip3 install pipenv not working)
echo "🕛 Installing pipenv..."
sudo apt install pipenv
echo "✅ Pipenv installed."
echo ""

# Create and activate new environment
echo "🕛 Creating virtual environment..."
mkdir hummingbots && cd hummingbots
pipenv shell >/dev/null
echo "✅ Virtual environment created."

# Expected output >> "Successfully created virtual environment!"

# Install streamlit
echo "🕛 Installing streamlit and openpyxl..."
pip install pipenv --upgrade
pipenv install streamlit
pipenv install openpyxl
echo "✅ Streamlit and openpyxl installed."

echo "🕛 Cloning Hummingbots streamlit repo..."
git clone https://github.com/tomasgaudino/streambot.git
echo "✅ Virtual environment created."

echo "🕛 Running streamlit..."
python3 -c streamlit run Home.py
