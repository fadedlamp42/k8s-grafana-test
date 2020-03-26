# k8s-grafana-test
Testing Grafana and Prometheus usage and features

## Requirements
- Helm v3
- Basic kubernetes cluster (tested on minikube)

## Tools
```
install-deps.sh: Installs Grafana and Prometheus and deploys to cluster in "monitoring" namespace
graf-proxy.sh: Echos Grafana admin credentials and starts proxy on https://localhost:3000
```
