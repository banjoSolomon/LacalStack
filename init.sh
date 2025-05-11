#!/bin/bash
echo "📦 Building containers..."
docker-compose build

echo "🚀 Starting services..."
docker-compose up
#init.sh