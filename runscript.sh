#!/bin/bash
cd /app
python app.py &
sleep 60
pkill python
