# 🛡️ Online Payment Fraud Detection using Machine Learning

This minor project proposes a **hybrid machine learning model** to detect fraudulent online payments. It combines supervised (Random Forest), unsupervised (Isolation Forest), and deep learning (Autoencoder) techniques for real-time fraud detection.
🔗 **Live Demo:** [Try the Fraud Detection Web App](https://cosmic-biscotti-823e7c.netlify.app/)
---

## 👨‍💻 Team Members

- **V. Vamshi Krishna** (22VE1A67C1)  
- **V. Varun Kumar** (22VE1A67C0)  
- **V. Rumnitha** (22VE1A67C3)  
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

⚠️ *Note: Dataset is not uploaded to GitHub due to licensing restrictions.*

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
│ ├── models.pkl
├── dataset/
│ └── creditcard.csv
├── screenshots/
│ ├── TC01.png
│ ├── TC02.png
│ └── ...
└── docs/
└── documentation.pdf

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

Complete PDF report available in `docs/documentation.pdf`.

---

## 🚀 Getting Started

1. Clone the repo  
 -- git clone https://github.com/your-username/online-payment-fraud-detection.git
 -- cd online-payment-fraud-detection

2. Install dependencies
 -- pip install -r requirements.txt

3. Open and run the VS Code
 -- Open opfd.ipynb in VS Code, run the cells in interactive Python mode.

📩 Contact
For questions or collaboration, feel free to reach out to any of the team members:

| Name               | Role                                       | GitHub                                    | Email                             | LinkedIn                             |
|--------------------|--------------------------------------------|-------------------------------------------|-----------------------------------|--------------------------------------|
| V Vamshi Krishna   | Model Training & Ensemble Integration      | [@vamshikris28](https://github.com/vamshikris28) | vallabudasvamshikrishna28@gmail.com        | [linkedin.com/in/vamshikrishna]( www.linkedin.com/in/vamshi-krishna-807961281) |
| V Varun Kumar      | Data Preprocessing & Backend Development   | [@Varun-1312](https://github.com/Varun-1312)       | vvarun1312@gmail.com           | [linkedin.com/in/varunkumar](https://www.linkedin.com/in/varahala-varun-89227a282/)       |
| V Rumnitha         | Research, UML Diagrams & Documentation     | [@RumnithaVaripally](https://github.com/RumnithaVaripally)         | varipally.rumnitha@gmail.com              | [linkedin.com/in/vrumnitha](https://www.linkedin.com/in/rumnitha-varipally-0611362a5/)         |
| B Vaishnavi        | UI Design & Testing                        | [@vaishu707](https://github.com/Vaishu707)       | vaishnavi1644@gmail.com             | [linkedin.com/in/bvaishnavi](https://www.linkedin.com/in/vaishnavi-goud-a30024252/)       |






