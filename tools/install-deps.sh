#!/bin/bash

#whereis check instead of -x; uncertain of default helm location
helm_location=$(whereis helm)
if [ "$helm_location" != "helm:" ]; then 
    echo "helm found, installing prometheus + grafana"
else
    echo "helm not found, please see https://helm.sh/docs/intro/quickstart/"
    exit
fi

helm install prometheus stable/prometheus -n monitoring
helm install grafana stable/grafana -n monitoring
