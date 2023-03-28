# Nginx Deployment

```bash
# Création d'un nginx deployment
kubectl apply -f deployment.yaml

# Le apply fonctionne également avec une url
kubectl apply -f https://k8s.io/examples/application/deployment.yaml

# Afficher les informations à propos du deploiement
kubectl describe deployment nginx-deployment

# List des Pods crée par le deploiement
kubectl get pods -l app=nginx

# Affichage des informations à propos du Pod
kubectl describe pod <pod-name>
```

# Update du Deployment avec une version Nginx plus récente

```bash
# Création d'un nginx deployment
kubectl apply -f deployment-update.yaml

# Le apply fonctionne également avec une url
kubectl apply -f https://k8s.io/examples/application/deployment-update.yaml

# List des Pods crée par le deploiement
kubectl get pods -l app=nginx

# Affichage des informations à propos du Pod
kubectl describe pod <pod-name>
```

# Scaling de l'application en augmentant le replica count

```bash
# Création d'un nginx deployment
kubectl apply -f deployment-scale.yaml

# Le apply fonctionne également avec une url
kubectl apply -f https://k8s.io/examples/application/deployment-scale.yaml

# List des Pods crée par le deploiement
kubectl get pods -l app=nginx
```

# Suppresion du deployment

```bash
# Suppresion d'un nginx deployment
kubectl delete -f deployment-scale.yaml

# Le delete fonctionne également avec une url
kubectl delete -f https://k8s.io/examples/application/deployment-scale.yaml

# List des Pods crée par le deploiement (0 suite à la suppression)
kubectl get pods -l app=nginx
```
