GRAF=$(kubectl get pods --namespace monitoring -l "app.kubernetes.io/name=grafana" -o jsonpath="{.items[0].metadata.name}")
PASS=$(kubectl get secret --namespace monitoring grafana -o jsonpath="{.data.admin-password}" | base64 --decode)
PROM=$(kubectl get pods --namespace monitoring -l "app=prometheus, component=pushgateway" -o jsonpath="{.items[0].metadata.name}")
PROM_END=$(kubectl describe --namespace monitoring service prometheus-server | grep End | sed 's/[A-Za-z ]*//g' | sed 's/://')

echo Login into localhost:3000 with credentials admin/$PASS
echo "Add prometheus hosted from http://$PROM_END (server access)"
echo

kubectl --namespace monitoring port-forward $GRAF 3000
