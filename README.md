# 🌱 Plant Disease Detection System

A modern, production-ready **Plant Disease Detection Web Application** that uses **Deep Learning** to identify plant diseases from leaf images.

Built with a **FastAPI backend** and **React (TypeScript) frontend**, this system supports multiple crops like Apple, Corn, Grape, Potato, Tomato, Mango, Citrus, and Rice.

---

## ✨ Features

- 🎯 **AI-Powered Detection** – Trained on 30+ plant disease classes  
- 🖼️ **Image Upload** – Drag & drop interface for easy usage  
- ⚡ **Fast Predictions** – Real-time classification with confidence scores  
- 🔄 **Multi-Model Support** – TensorFlow, PyTorch, ONNX (extensible)  
- 🌐 **Modern UI** – Responsive React + TypeScript frontend  
- 🚀 **Production Ready** – FastAPI backend with testing & monitoring  
- ☁️ **Cloud Deployment** – Supports Render (backend) & Vercel (frontend)  
- 🔒 **Secure** – Rate limiting, CORS, and input validation  

---

## 🏗️ Project Structure
Plant Disease Detection/
├── PlantDiseaseDetection.ipynb
├── backend/
│ ├── app/
│ ├── models/
│ └── tests/
├── frontend/
│ ├── src/
│ └── public/
├── ML_Model/
└── scripts/

---

## 🌿 Supported Plant Diseases

### 🍎 Apple
- Apple Scab  
- Black Rot  
- Cedar Apple Rust  
- Healthy  

### 🌽 Corn (Maize)
- Cercospora Leaf Spot  
- Common Rust  
- Northern Leaf Blight  
- Healthy  

### 🍇 Grape
- Black Rot  
- Esca (Black Measles)  
- Leaf Blight  
- Healthy  

### 🥔 Potato
- Early Blight  
- Late Blight  
- Healthy  

### 🍅 Tomato
- Bacterial Spot  
- Early Blight  
- Late Blight  
- Leaf Mold  
- Septoria Leaf Spot  
- Spider Mites  
- Target Spot  
- Yellow Leaf Curl Virus  
- Mosaic Virus  
- Healthy  

### 🥭 Other Crops
- Mango Anthracnose  
- Citrus Canker  
- Rice Blast  

---

## 🛠️ Tech Stack

### Frontend
- React 18 + TypeScript  
- Vite  
- Tailwind CSS  
- React Router  
- TanStack Query  
- React Dropzone  
- Lucide Icons  

### Backend
- FastAPI  
- Pydantic  
- Uvicorn / Gunicorn  
- Redis  
- Pillow  
- TensorFlow / PyTorch / ONNX  

---

## 🚀 Quick Start

### Prerequisites
- Python 3.11+  
- Node.js 18+  
- Git  
- 4GB RAM (8GB recommended)  

---

### 1️⃣ Clone Repository

```bash
git clone https://github.com/pkparthk/Plant-Disease-Detection.git
cd "Plant Disease Detection"

2️⃣ Backend Setup
cd backend

# Create virtual environment
python -m venv venv

# Activate environment
# Windows:
venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run server
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000

3️⃣ Frontend Setup
cd frontend

npm install
npm run dev

🔧 Scripts
python scripts/create_improved_model.py
python scripts/quick_eval.py
python scripts/expand_diseases.py
python scripts/evaluate.py

☁️ Deployment
Backend (Render)
Connect GitHub repo
Auto-deploy via render.yaml
npm install -g vercel
cd frontend
vercel --prod

🔐 Security
File validation (type & size)
Input sanitization
Rate limiting
Secure CORS policies
