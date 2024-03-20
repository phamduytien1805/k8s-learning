Deploy elastic operator
Install custom resource definitions:
kubectl create -f https://download.elastic.co/downloads/eck/2.11.1/crds.yaml

Install the operator with its RBAC rules:
kubectl apply -f https://download.elastic.co/downloads/eck/2.11.1/operator.yaml

Deploy an elasticsearch cluster
kubectl apply -f monitoring-logging/eck/elasticsearch.yaml 

Deploy an kibana
kubectl apply -f monitoring-logging/eck/elasticsearch.yaml 

Deploy fluent-bit using helm
helm repo add fluent https://fluent.github.io/helm-charts
helm install fluent-bit fluent/fluent-bit -f  monitoring-logging/eck/fluentbit-values.yaml
helm upgrade fluent-bit fluent/fluent-bit -f  monitoring-logging/eck/fluentbit-values.yaml