# Simple API Kubernetes Project

This project demonstrates a basic setup of a Node.js API application running in a Kubernetes environment. The application uses Express.js and is packaged in a Docker container, then deployed to Kubernetes using a ReplicaSet.

## Project Structure

- **app.js**: The main application file for the Express.js API.
- **Dockerfile**: The Dockerfile used to build the Docker image for the API.
- **package.json**: Contains metadata about the project and dependencies.
- **node_modules/**: Directory containing all the installed npm packages (not included in the repository).
- **replicaset.yaml**: The Kubernetes manifest file to create a ReplicaSet for the API.

## Getting Started

### Prerequisites

- **Docker**: Install Docker to build and run the container locally.
- **Node.js**: Install Node.js to run the application locally.
- **Kubernetes**: A Kubernetes cluster is needed to deploy the application. Minikube or any managed Kubernetes service will work.
- **kubectl**: Kubernetes command-line tool to manage Kubernetes clusters.

### Installation

1. **Clone the Repository**:  <br />
   git clone https://github.com/yourusername/simple-api-kubernetes.git  <br />
   cd simple-api-kubernetes  <br />
- create a hidden file (.env)  <br />
- fill it as: <br />
   FIRSTNAME: "your first name"  <br />
   LASTNAME: "your last name"  <br />
2. **Install Dependencies**:
 $ npm install
3. **Run the Application Locally**:  <br />
Start the application:  <br />
 $ npm start  <br />
- The application should be running on http://localhost:3000  <br />
### Docker Setup
1. **Build the Docker Image**:  <br />
 $ docker build -t bendibhafededdine/simple-api-proj:v1.0 .  <br />
2. **Run the Docker Container**:  <br />
 $ docker run -p 3000:3000 bendibhafededdine/simple-api-proj:v1.0  <br />

 - The application should be accessible at http://localhost:3000  <br />

### Kubernetes Deployment  <br />
1. **Create a ReplicaSet**:  <br />
- Apply the replicaset.yaml to create a ReplicaSet in your Kubernetes cluster:  <br />
 $ kubectl create -f replicaset-def.yaml  <br />
2. **Check the Deployment**:  <br />
- Verify that the ReplicaSet and pods are running:  <br />
 $ kubectl get rs  <br />
 $ kubectl get pods  <br />

3. **Cleanup**  <br />
 - To delete the ReplicaSet and associated pods:  <br />
  $ kubectl delete replicaset myapp-replicaset  <br />

###
- **License**  <br />
This project is licensed under the MIT License - see the LICENSE file for details.
