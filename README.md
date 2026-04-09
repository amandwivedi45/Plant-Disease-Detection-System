#🌱 Plant Disease Detection System
A modern, production-ready plant disease detection application that uses deep learning to identify plant diseases from leaf images. Built with FastAPI backend and React TypeScript frontend, this system can detect diseases across multiple plant species including Apple, Corn, Grape, Potato, Tomato, Mango, Citrus, and Rice.

✨ Features
🎯 AI-Powered Detection: Deep learning model trained on 30+ plant disease classes
🖼️ Image Upload: Drag-and-drop interface for easy image submission
⚡ Fast Predictions: Real-time disease classification with confidence scores
🔄 Multiple Model Support: TensorFlow, PyTorch, and ONNX inference adapters
🌐 Modern Web Interface: React + TypeScript frontend with responsive design
🚀 Production Ready: FastAPI backend with comprehensive testing and monitoring
☁️ Cloud Deployment: Ready for deployment on Render (backend) and Vercel (frontend)
🔒 Secure: Built-in rate limiting, CORS protection, and input validation
🏗️ Project Structure
Plant Disease Detection/
├── 📊 PlantDiseaseDetection.ipynb    # Model training notebook
├── 🚀 backend/                       # FastAPI backend application
│   ├── app/                         # Main application code
│   ├── models/                      # Trained ML models
│   └── tests/                       # Backend tests
├── 🌐 frontend/                      # React TypeScript frontend
│   ├── src/                         # Frontend source code
│   └── public/                      # Static assets
├── 🤖 ML_Model/                      # Model artifacts and test images
└── 📜 scripts/                       # Utility scripts
🎯 Supported Plant Diseases
The model can detect 30+ diseases across multiple plant species:

🍎 Apple
Apple Scab, Black Rot, Cedar Apple Rust, Healthy
🌽 Corn (Maize)
Cercospora Leaf Spot, Common Rust, Northern Leaf Blight, Healthy
🍇 Grape
Black Rot, Esca (Black Measles), Leaf Blight, Healthy
🥔 Potato
Early Blight, Late Blight, Healthy
🍅 Tomato
Bacterial Spot, Early Blight, Late Blight, Leaf Mold, Septoria Leaf Spot, Spider Mites, Target Spot, Yellow Leaf Curl Virus, Mosaic Virus, Healthy
🥭 Other Crops
Mango Anthracnose, Citrus Canker, Rice Blast
🛠️ Tech Stack
Frontend
React 18 with TypeScript
Vite for blazing fast development
Tailwind CSS for styling
React Router for navigation
TanStack Query for data fetching
React Dropzone for file uploads
Lucide Icons for UI icons
Backend
FastAPI for high-performance API
Pydantic for data validation
Uvicorn/Gunicorn for ASGI serving
Redis for caching and rate limiting
Pillow for image processing
Multi-model support (TensorFlow, PyTorch, ONNX)
🚀 Quick Start
Prerequisites
Python 3.11+
Node.js 18+ and npm
Git
4GB RAM minimum (8GB recommended)
1. Clone Repository
git clone https://github.com/pkparthk/Plant-Disease-Detection.git
cd "Plant Disease Detection"
2. Backend Setup
cd backend

# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Start the API server
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
3. Frontend Setup
cd frontend

# Install dependencies
npm install

# Start development server
npm run dev
4. Access the Application
Frontend: http://localhost:5173 (Vite dev server)
Backend API: http://localhost:8000
API Documentation: http://localhost:8000/docs
Health Check: http://localhost:8000/health
5. Test the Application
Open http://localhost:5173 in your browser
Upload a plant leaf image using drag-and-drop
View AI prediction results with confidence scores
📊 Model Training & Development
Training Notebook
The PlantDiseaseDetection.ipynb notebook contains the complete model training pipeline:

# Install Jupyter if not already installed
pip install jupyter notebook

# Launch the training notebook
jupyter notebook PlantDiseaseDetection.ipynb
Notebook Contents:

📈 Data loading and preprocessing with augmentation
🏗️ CNN model architecture with transfer learning
🎯 Training loop with validation monitoring
💾 Model export to multiple formats (H5, Keras, SavedModel)
📊 Performance evaluation and visualization
Training Scripts
Additional utilities in scripts/ directory:

# Enhanced model creation
python scripts/create_improved_model.py

# Quick model evaluation
python scripts/quick_eval.py

# Dataset expansion tools
python scripts/expand_diseases.py

# Comprehensive evaluation
python scripts/evaluate.py
📋 Development Setup
Local Development (Without Docker)
Backend Setup
cd backend

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
pip install -r requirements-deploy.txt

# Start development server
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
Frontend Setup
cd frontend

# Install dependencies
npm install

# Start development server
npm run dev
Frontend
cd frontend

# Build
npm run build
🔧 Advanced Configuration
Environment Variables
Create a .env file in the backend directory:

# backend/.env
ENVIRONMENT=development
LOG_LEVEL=debug
MODEL_PATH=models/best_model.h5
CORS_ORIGINS=http://localhost:5173, http://localhost:3000
MAX_FILE_SIZE=10485760  # 10MB in bytes
RATE_LIMIT_REQUESTS=100
RATE_LIMIT_WINDOW=60
Supported Model Formats
The application supports multiple ML frameworks through adapters:

TensorFlow: .h5, .keras, SavedModel directory
PyTorch: .pth, .pt (coming soon)
ONNX: .onnx (coming soon)
Model File Structure
backend/models/
├── best_model.h5          # Main TensorFlow model
├── class_mapping.json     # Class index mappings
├── class_names.txt        # Human-readable labels
└── tensorflow_model/      # SavedModel format
    ├── saved_model.pb
    ├── assets/
    └── variables/
☁️ Cloud Deployment
Backend Deployment (Render)
The backend is configured for deployment on Render using render.yaml:

Fork this repository to your GitHub account
Connect your GitHub account to Render
Create a new Web Service from your forked repository
Render will automatically deploy using the configuration in render.yaml
Environment Variables for Render:

ENVIRONMENT: production
MODEL_PATH: models/best_model.h5
CORS_ORIGINS: Your frontend URL
LOG_LEVEL: info
Frontend Deployment (Vercel)
The frontend is configured for deployment on Vercel using vercel.json:

Install Vercel CLI: npm install -g vercel
Navigate to frontend directory: cd frontend
Deploy: vercel --prod
Alternatively, connect your GitHub repository to Vercel dashboard for automatic deployments.

Service Profiles
Default: Core services (frontend, backend, redis)
database: Add PostgreSQL for data persistence
monitoring: Add Prometheus and Grafana
production: Production-optimized settings
📊 Performance & Monitoring
Health Checks
The API provides health monitoring endpoints:

# Check application health
curl http://localhost:8000/api/health

# Get model information
curl http://localhost:8000/model/info
Performance Metrics
Prediction Latency: ~100-500ms (CPU), ~50-200ms (GPU)
Supported Image Formats: JPG, PNG, JPEG
Max Image Size: 10MB
Model Size: ~85MB (TensorFlow H5 format)
Classes Supported: 30+ plant disease types
Logging
The application includes structured logging:

Request/response logging
Error tracking with stack traces
Performance timing
Model prediction confidence scores
🔐 Security Features
Input Validation
File type verification (images only)
File size limits (10MB maximum)
Image format validation
Content-type verification
API Security
CORS configuration for cross-origin requests
Rate limiting (configurable)
Input sanitization
Error message sanitization
🧪 Testing
Running Tests
Backend Tests:

cd backend

# Run all tests
pytest
Frontend Tests:

cd frontend

# Run all tests
npm test

# Run with coverage
npm run test:coverage
Test Structure
backend/tests/ - Backend API and model tests
frontend/src/__tests__/ - Frontend component tests
