helm repo add fluent https://fluent.github.io/helm-charts
helm upgrade fluent-bit fluent/fluent-bit -f fluentbit-values.yaml