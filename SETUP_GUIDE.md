# VisionCare - Setup & Troubleshooting Guide

## Problem: "Failed to Fetch" Error

This error occurs when the frontend cannot connect to the backend server. Here's how to fix it:

---

## ✅ Solution: Start the Backend Server

### **Quick Start (Windows)**

1. Navigate to the Backend folder:
   ```
   cd "c:\Users\ASUS\OneDrive\Desktop\VisionCare\Backend"
   ```

2. Run the startup script:
   ```
   start_server.bat
   ```

   OR manually run:
   ```
   python app.py
   ```

### **What You Should See**

When the server starts successfully:
```
============================================================
  VisionCare Backend Server Starting...
============================================================
  Model loaded from: model/model.h5
  Uploads folder: uploads
  Server running on: http://0.0.0.0:5000
  Access from frontend: http://localhost:5000
============================================================
```

---

## 📋 Complete Workflow

1. **Start Backend Server** (Command Prompt 1)
   ```
   cd Backend
   python app.py
   ```
   Wait until you see "Running on http://0.0.0.0:5000"

2. **Open Frontend** (In Browser)
   - Open: `c:\Users\ASUS\OneDrive\Desktop\VisionCare\Frontend\index.html`
   - Or serve it via a local web server

3. **Upload & Process**
   - Click the upload icon
   - Select a retina image
   - Click "Upload and Process"
   - Wait for results on the processing page

---

## 🔧 Troubleshooting

### Error: "Python not recognized"
- **Solution**: Install Python from https://www.python.org/downloads/
- Make sure to check "Add Python to PATH" during installation

### Error: "Module not found" (Flask, TensorFlow, etc.)
- **Solution**: Install dependencies:
  ```
  cd "c:\Users\ASUS\OneDrive\Desktop\VisionCare"
  pip install -r requirements.txt
  ```

### Error: "Port 5000 already in use"
- **Solution**: Another app is using port 5000
- Either close that app or change the port in `app.py` and update `index.html` & `processing.html`

### Error: "model/model.h5 not found"
- **Solution**: Make sure your trained model is in:
  ```
  Backend/model/model.h5
  ```

### Error: "uploads folder permission denied"
- **Solution**: Make sure you have write permissions in the Backend folder
- Run command prompt as Administrator if needed

---

## 📊 Improved Error Messages

The updated frontend now provides clearer error messages:

- ✅ "Cannot connect to server. Is the backend running on http://localhost:5000?"
- ✅ "Server error" messages with details
- ✅ Console logging (open Browser DevTools F12 to see details)

Check your browser's DevTools console (F12) for detailed error logs.

---

## 🎯 Keep the Server Running

The backend server must be running while you use the application.
- Keep the terminal/command prompt open
- Don't close it until you're done using the application
- Press `Ctrl+C` in the terminal to stop the server

---

## ✨ What Was Improved

1. **Backend Logging**: Now shows detailed status messages
2. **Error Handling**: Better error messages in both backend and frontend
3. **User Feedback**: Loading states and progress indicators
4. **Startup Script**: Easy one-click server startup (Windows)
5. **Validation**: Better validation of uploaded files and responses

---

## 📧 Support

If issues persist:
1. Check the backend terminal for error messages
2. Open Browser DevTools (F12) and check Console tab
3. Make sure Python and dependencies are installed correctly
4. Verify the model file exists at Backend/model/model.h5
