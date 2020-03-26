POD=$(kubectl get pods -l "app.kubernetes.io/name=grafana" -o jsonpath="{.items[0].metadata.name}")
PASS=$(kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode)
echo Login into localhost:3000 with credentials admin/$PASS
PROM=$(kubectl get pods -l "app=prometheus, component=pushgateway" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace default port-forward $POD 3000
