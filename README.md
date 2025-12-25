# 💻 Laptop Price Prediction System

An end-to-end **machine learning regression application** that predicts laptop prices based on hardware specifications. The project demonstrates the complete ML lifecycle, including model training, ensemble learning, API deployment, and containerization.
Image link:
https://hub.docker.com/repository/docker/aashi2801/laptoppricepredictor/general

---

## 🚀 Project Overview

- Implemented and evaluated multiple regression models such as Linear Regression, Ridge, Lasso, Decision Tree, Random Forest, KNN, SVM, AdaBoost, Gradient Descent, and XGBoost.
- Improved prediction performance using **stacking ensemble learning** with Gradient Descent, XGBoost, and Random Forest.
- Deployed the final model using **FastAPI** for real-time inference and integrated a **Streamlit web interface**.
- Containerized the complete application using **Docker** and published the image to Docker Hub.

---

## 🛠 Tech Stack

- **Programming Language:** Python  
- **Machine Learning:** Scikit-Learn, XGBoost  
- **API Framework:** FastAPI  
- **Frontend:** Streamlit  
- **Containerization:** Docker  

---

## 🐳 Docker Usage

### Pull the Docker Image
```bash
docker pull aashi2801/laptoppricepredictor:latest

docker run -p 8000:8000 aashi2801/laptoppricepredictor
