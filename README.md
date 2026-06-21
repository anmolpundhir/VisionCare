# 🩺 Diabetic Retinopathy Detection using CNN

A deep learning-based web application that detects **Diabetic Retinopathy (DR)** from retinal images using a **Convolutional Neural Network (CNN)** with **Long-Range Dependency Units** and **InceptionV3**.

The system allows users to upload retinal images and receive **real-time predictions** on disease severity through a simple web interface.

---

## 🚀 Key Features

- 📤 Upload retinal images via web interface  
- 🧠 CNN-based deep learning model for DR classification  
- ⚡ Real-time prediction using Flask backend  
- 🎯 Detects severity levels of diabetic retinopathy  
- 🌐 Lightweight and user-friendly UI  

---

## 🏗 System Architecture

### 🔬 Machine Learning

- Built using **TensorFlow** and **Keras**
- Uses:
  - CNN layers for feature extraction  
  - Long-range dependency units  
  - **InceptionV3** for improved performance  
- Image preprocessing:
  - Resizing  
  - Normalization  
- Dataset: **Messidor**

---

### ⚙ Backend

- Developed using **Flask**
- Handles:
  - Image upload  
  - Model inference  
  - Sending predictions to frontend  

---

### 🎨 Frontend

- Built with **HTML & CSS**
- Provides:
  - Image upload interface  
  - Display of prediction results  

---

## 💻 Tech Stack

| Category          | Technology |
|------------------|-----------|
| Machine Learning | TensorFlow, Keras, Python |
| Backend          | Flask |
| Frontend         | HTML, CSS |
| Dataset          | Messidor |

---

## 📂 Project Structure
├── model/  
│ ├── cnn_model.py # Model architecture & training  
│ ├── model.h5 # Trained model  
├── Backend/  
│ ├── app.py # Flask backend  
├── Frontend/  
│ ├── index.html # UI  
│ ├── styles.css  
├── requirements.txt  
└── README.md


---

## 🗂 Dataset

**Messidor Dataset**

- Public retinal image dataset  
- Used for DR detection  
- Preprocessing applied before training  
- Split:
  - 80% Training  
  - 20% Validation  

---

## ⚙️ Installation & Setup

### 1️⃣ **Clone Repository**

```bash
git clone https://github.com/anmolpundhir/Diabetic-Retinopathy.git
cd Diabetic-Retinopathy
```

### 2️⃣ **Install Dependencies**

```bash
pip install -r requirements.txt
```
### 3️⃣ **Train Model**

```bash
python model/cnn_model.py
```

### 4️⃣ **Run Application**

```bash
python Backend/app.py
```
### 5️⃣ **Open in Browser**

http://127.0.0.1:5000/

## 📈 Future Improvements
🔍Improve model accuracy using advanced architectures (EfficientNet, Vision Transformers)  
🧪Enhance preprocessing (contrast enhancement, augmentation)  
☁ Deploy on cloud (AWS / Render / Hugging Face Spaces)  
📱Add mobile-friendly UI

## 🤝 Contributing

Contributions are welcome!
Feel free to fork the repo and submit pull requests.

## 📚 Acknowledgment

Based on the research paper:  
"A Deep Convolutional Neural Network for Diabetic Retinopathy Detection via Mining Local and Long-Range Dependence"  
by Xiaoling Luo et al.

## 📜 License

This project is licensed under the MIT License.

## 📬 Contact

For queries or suggestions:

Open an issue on GitHub  
Or connect via email
