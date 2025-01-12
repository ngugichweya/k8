# Spring Boot Transactions API

A Spring Boot application to manage transactions, with MongoDB integration, containerized deployment, and CI/CD automation using GitHub Actions. The application is deployed locally to Minikube using Kubernetes.

---

## Features
1. `/transactions` endpoint to query transactions.
2. MongoDB backend for storing and retrieving transaction data.
3. Dockerized application for easy portability.
4. CI/CD pipeline with GitHub Actions.
5. Deployment to Minikube with Kubernetes manifests.

---

## Prerequisites
1. [Java 17](https://adoptopenjdk.net/)
2. [Maven](https://maven.apache.org/)
3. [Docker](https://www.docker.com/)
4. [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
5. [Minikube](https://minikube.sigs.k8s.io/docs/)

---

## Setup Instructions

### Clone the Repository and Setup
```bash
git clone <repository-url>
cd <repository-name>


./mvnw clean package -DskipTests

docker build -t transactions:latest .
docker run -p 8081:8081 transactions:latest

curl http://localhost:8081/transactions

minikube start

kubectl apply -f k8s/mongo-deployment.yaml
kubectl apply -f k8s/mongo-service.yaml
kubectl apply -f k8s/dceployment.yaml
kubectl apply -f k8s/service.yaml

