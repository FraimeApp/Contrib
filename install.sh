#!/bin/bash

cd /workspace

apt-get update && apt-get install -y git

git clone https://${GITHUB_TOKEN}@github.com/FraimeApp/ProcessingService

cd /workspace/ProcessingService

apt-get install -y python3.10-venv python3.10-dev

python3.10 -m venv venv

source venv/bin/activate

venv/bin/pip install -r requirements.txt