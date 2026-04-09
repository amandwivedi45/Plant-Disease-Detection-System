#!/bin/bash
# Render Deployment Script for Plant Disease Detection API

echo "🚀 Starting deployment..."

# Install dependencies
echo "📦 Installing dependencies..."
pip install -r requirements-deploy.txt

# Verify model files exist
echo "🔍 Checking model files..."
if [ ! -f "models/best_model.h5" ]; then
    echo "❌ Model file not found: models/best_model.h5"
    exit 1
fi

if [ ! -f "labels.json" ]; then
    echo "❌ Labels file not found: labels.json"
    exit 1
fi

echo "✅ All model files found"

# Start the application
echo "🎯 Starting FastAPI application..."
exec uvicorn app.main:app --host 0.0.0.0 --port $PORT --workers 1