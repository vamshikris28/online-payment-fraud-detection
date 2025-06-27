# 🛡️ Online Payment Fraud Detection using Machine Learning

This minor project proposes a **hybrid machine learning model** to detect fraudulent online payments. It combines supervised (Random Forest), unsupervised (Isolation Forest), and deep learning (Autoencoder) techniques for real-time fraud detection.

---

## 👨‍💻 Team Members

- **V. Vamshi Krishna** (22VE1A67C1)  
- **V. Varun Kumar** (22VE1A67C0)  
- **V. Rumnitha ** (22VE1A67C3)  
- **B. Vaishnavi** (23VE5A6707)  

---

## 🎯 Objective

To build a robust fraud detection system using a **weighted ensemble** of three different machine learning models:
- Random Forest (Supervised)
- Isolation Forest (Unsupervised)
- Autoencoder (Deep Learning)

---

## 🛠️ Technologies Used

- **Python 3.8+**
- **Scikit-learn**
- **TensorFlow**
- **Flask** (for backend/web integration)
- **Visual Studio Code (VS Code)**

---

## 📊 Dataset

- [Credit Card Fraud Detection Dataset – Kaggle](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)
- Highly imbalanced dataset with anonymized features

⚠️ *Note: Dataset is not uploaded to GitHub due to licensing restrictions. Place it in the `dataset/` folder manually.*

---

## 🧠 Algorithms Used

| Algorithm         | Type          | Weight in Ensemble |
|------------------|---------------|--------------------|
| Random Forest     | Supervised    | 50%                |
| Isolation Forest  | Unsupervised  | 30%                |
| Autoencoder       | Deep Learning | 20%                |

---

## 📁 Project Structure

online-payment-fraud-detection/
├── README.md
├── opfd.ipynb
├── requirements.txt
├── models/
│ ├── rf_model.pkl
│ ├── iso_model.pkl
│ ├── autoencoder.h5
│ ├── ae_threshold.pkl
│ └── scaler.pkl
├── dataset/
│ └── creditcard.csv
├── screenshots/
│ ├── TC01.png
│ ├── TC02.png
│ └── ...
└── docs/
└── mr_proj.pdf

---

## 📷 Output Screenshots

Screenshots from 8 different test cases (TC01–TC08) are available in the `screenshots/` folder:
- TC01: Valid Transaction – Low Risk
- TC02: Suspicious Amount – High Risk
- TC03: VVVR Chatbot Prompt
- TC04: Missing Fields
- TC05: High Frequency Requests
- TC06: Duplicate Transactions
- TC07: Empty Form
- TC08: Offline Mode

---

## 📈 Evaluation Metrics

- **Accuracy**: 80–85%
- **Precision, Recall, F1-score**: Computed for each model
- **Low false positive rate** using ensemble learning

---

## 🔒 Future Scope

- Add login/register user management system
- Pricing model to restrict free usage
- Integrate real-time payment gateway APIs
- Cloud deployment (Heroku, AWS, or Azure)
- Behavioral Biometrics & Federated Learning

---

## 📝 Project Report

Complete PDF report available in `docs/mr_proj.pdf`.

---

## 🚀 Getting Started

1. Clone the repo  
 -- git clone https://github.com/your-username/online-payment-fraud-detection.git
 -- cd online-payment-fraud-detection

2. Install dependencies
 -- pip install -r requirements.txt

3. Open and run the VS Code
 -- Open opfd.ipynb in VS Code, run the cells in interactive Python mode

📩 Contact
For queries or collaboration:
GitHub Discussions
LinkedIn







