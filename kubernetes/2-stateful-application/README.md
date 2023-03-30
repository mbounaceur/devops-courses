# MySQL Deployment and PV

```bash
# Création du PV et PVC 
kubectl apply -f mysql-pv.yaml

# Le apply fonctionne également avec une url
kubectl apply -f https://k8s.io/examples/application/mysql/mysql-pv.yaml

# Pareil pour le deploiement MySQL
kubectl apply -f mysql-deploy.yaml

# Inspecter les logs de démarrage
kubectl logs -f <pod>

# Ou bien
kubectl apply -f https://k8s.io/examples/application/mysql/mysql-deployment.yaml

# Afficher les informations à propos du deploiement
kubectl describe deployment mysql

# List des Pods crée par le deploiement
kubectl get pods -l app=mysql

# Affichage des informations à propos du Pod
kubectl describe pvc mysql-pv-claim

# Affichage des services 
kubectl get service # On peut voir un service mysql crée par le manifest

# Connection à l'instance MySQL
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword
```

Une fois connecté, on peut créer des DATBASES TABLES etc..

```sql
CREATE DATABASE test;
USE test;
```

On peut s'amuser à tuer le pod mysql, il sera recrée automatiquement car celui-ci fait parti d'un deploiement et on pourra constater que la base de donnée test existe encore.

Suppression des composants Kubernetes

```sql
kubectl delete deployment,svc mysql
kubectl delete pvc mysql-pv-claim
kubectl delete pv mysql-pv-volume
```
