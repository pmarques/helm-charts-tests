#!/usr/bin/env bash

CHART_VALUES=~/workspace/k8s-cd/charts/zigbee2mqtt/values.yaml
kubectl helm template -n zigbee2mqtt zigbee2mqtt zigbee2mqtt/zigbee2mqtt --version 1.37.1 -f "${CHART_VALUES}" --debug | kubectl diff -f -
