Apply all manifests (знаходяться в папці .infrastructure):

kubectl apply -f .infrastructure/namespace.yml 
kubectl apply -f .infrastructure/todoapp-pod.yml
kubectl apply -f .infrastructure/busybox.yml

Щоб провірити:
kubectl get pods -n todoapp

Test ToDo application using port-forward:
kubectl port-forward pod/<todoapp-pod-name> 8080:8080 -n todoapp

^ підставити треба pod name, із kubectl get pods

після в браузері відкрити: http://localhost:8080 , очікуєм результат - todo app




Test application using BusyBox container:

kubectl exec -it pod/<busybox-pod-name> -n todoapp -- sh

Всередині контейнера:
curl http://todoapp:8080
curl http://todoapp:8080/api/readiness/
curl http://todoapp:8080/api/liveness/