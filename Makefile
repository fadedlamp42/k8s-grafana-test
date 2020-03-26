init: #run-once configuration to create monitoring namespace and install grafana/prometheus
	@chmod +x tools/*
	kubectl apply -f namespace.yaml
	@./tools/install-deps.sh

proxy: #setup local grafana dashboard
	@./tools/graf-proxy.sh
