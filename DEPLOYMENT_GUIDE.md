# VisionCare Deployment Guide

## Architecture
- **Frontend**: Vercel (Static Hosting)
- **Backend**: Railway (Python/Flask Server)
- **Model**: Stored in Backend/model/model.h5

---

## 🚀 Frontend Deployment on Vercel

### Prerequisites
- GitHub account
- Vercel account (free at https://vercel.com)

### Steps

1. **Push to GitHub** (Already done ✅)
   ```bash
   git push origin main
   ```

2. **Connect to Vercel**
   - Go to https://vercel.com/new
   - Click "Import Git Repository"
   - Select your VisionCare repository
   - Framework: **Next.js** (will be auto-detected, or select **Other**)
   - Root Directory: **Frontend**
   - Click "Deploy"

3. **Vercel will automatically:**
   - Build and host your frontend
   - Generate a URL (e.g., `visioncare.vercel.app`)
   - Deploy on every push to main

---

## 🚀 Backend Deployment on Railway

### Prerequisites
- GitHub account
- Railway account (free at https://railway.app)

### Steps

1. **Connect Railway to GitHub**
   - Go to https://railway.app/dashboard
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Authorize Railway with GitHub
   - Select your VisionCare repository

2. **Configure Railway**
   - Railway should auto-detect Python
   - Set Start Command (if needed):
     ```
     gunicorn -w 4 -b 0.0.0.0:$PORT Backend.app:app
     ```
   - Environment Variables:
     ```
     FLASK_ENV=production
     ```

3. **Deploy**
   - Click "Deploy"
   - Railway will build and deploy automatically
   - Get your backend URL (e.g., `visioncare-backend.railway.app`)

---

## 🔗 Connect Frontend to Backend

### Update API Endpoint
In `Frontend/index.html` and `Frontend/processing.html`, update:

```javascript
const API_URL = window.location.hostname === 'localhost' 
    ? 'http://localhost:5000' 
    : 'https://visioncare-backend.railway.app';  // Replace with your Railway URL
```

---

## ✅ Deployment Checklist

- [ ] Frontend deployed on Vercel
- [ ] Backend deployed on Railway
- [ ] Backend URL updated in frontend files
- [ ] CORS enabled on backend (already configured)
- [ ] Model file (model.h5) exists in Backend/model/
- [ ] Test the deployed app

---

## 📝 Troubleshooting

### Issue: "Cannot connect to server"
- Ensure Railway backend is running
- Check if CORS is enabled in Flask
- Verify API_URL in frontend code

### Issue: Model not loading on Railway
- Check if model.h5 is in repository
- Or upload as a Railway environment variable/volume

### Issue: Timeout errors
- Railway has no timeout limits (unlike Vercel Functions)
- If still timing out, check backend logs on Railway dashboard

---

## 🔄 Continuous Deployment

Both Vercel and Railway auto-deploy on every push to main:
```bash
git add .
git commit -m "Your message"
git push origin main
```

Done! ✅

