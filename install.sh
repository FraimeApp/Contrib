#!/bin/bash

cd /workspace/ProcessingService

apt-get update && apt-get install -y python3.10-venv python3.10-dev

python3.10 -m venv venv

source venv/bin/activate

venv/bin/pip install -r requirements.txt

venv/bin/python3.10 /workspace/ProcessingService/run_processing.py
