terraform {
  required_providers {
    datadog = { source = "DataDog/datadog", version = "~> 3.30" }
  }
}

resource "datadog_monitor" "latency" {
  name    = "API High Latency p95"
  type    = "query alert"
  message = "API latency exceeds 500ms @pagerduty"
  query   = "avg(last_5m):p95:trace.http.request.duration{env:production} > 0.5"
}
