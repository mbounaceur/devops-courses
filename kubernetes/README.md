# Installation de Minikube

Minikube est un outil qui permet de créer un cluster Kubernetes local sur une machine individuelle. Cela permet aux développeurs de tester leurs applications Kubernetes en local avant de les déployer sur un environnement de production.

## Prérequis

- Un système d'exploitation compatible : Linux, macOS ou Windows
- Un hyperviseur installé : VirtualBox, Hyper-V, KVM ou VMware
- Un outil de ligne de commande : PowerShell, Command Prompt ou Terminal

## Installation

# Télécharger Minikube

```bash
# Téléchargement de la dernière version de minikube pour linux AMD64
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

# Ajouter les permissions d'exécution
chmod +x minikube

# Déplacer l'exécutable dans le répertoire local bin
sudo mv minikube /usr/local/bin/

# Vérifier l'installation de Minikube
minikube version

# Démarrer Minikube
minikube start
```

# Installation de Kubectl

```bash
# Télécharger la dernière version de kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Ajouter les permissions d'exécution
chmod +x ./kubectl

# Déplacer l'exécutable dans le répertoire local bin
sudo mv ./kubectl /usr/local/bin/kubectl

# Vérifiez que kubectl est installé en exécutant la commande :
kubectl version --client
```
