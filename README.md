# k8s-grafana-test
Testing Grafana and Prometheus usage and features

## Requirements
- Helm v3
- Basic kubernetes cluster (tested on minikube)

## Tools
```
install-deps.sh: Installs Grafana and Prometheus, deploys to cluster in "monitoring" namespace
graf-proxy.sh: Echos Grafana admin credentials and internal Prometheus endpoint, then starts proxy on https://localhost:3000
```

## Usage
Call scripts in tools/ directly or simply `make init` and `make proxy`
