# Wordpress with MySQL

```bash
# Création du PV et PVC 
kubectl apply -k ./

# On vérifie si le secret existes
kubectl get secrets

# On vérifie le PVC
kubectl get pvc

# On vérifie les PODS
kubectl get pods

# On vérifie que le service
kubectl get services wordpress

# On supprime tout
kubectl delete -k ./
```

L'option -k (ou --kustomize) permet de spécifier un dossier contenant un fichier kustomization.yaml. Ce fichier spécifie les ressources et les configurations à appliquer en utilisant des références à des fichiers YAML. Par exemple, si vous exécutez la commande kubectl apply -k ., Kubernetes va chercher un fichier kustomization.yaml dans le dossier courant et utiliser ses références pour créer des objets Kubernetes à partir des fichiers YAML inclus.
