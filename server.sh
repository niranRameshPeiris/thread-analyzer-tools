#!/bin/sh
# Start both apps in background
cd /app/thread-cpu-analyzer && npm install && npm start &
cd /app/thread-viz-by-peiris && npm install && npm start &
wait