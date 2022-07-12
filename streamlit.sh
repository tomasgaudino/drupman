#!/usr/bin/bash
# Install python venv
sudo apt install python3-pip

#Install pipenv (pip3 install pipenv not working)
sudo apt install pipenv

# Create and activate new environment
mkdir hummingbots && cd hummingbots
pipenv shell

# Expected output >> "Successfully created virtual environment!"

# Install streamlit
pip install pipenv --upgrade
pipenv install streamlit
pipenv install openpyxl

git clone https://github.com/tomasgaudino/streambot.git

python3 -c streamlit run Home.py
