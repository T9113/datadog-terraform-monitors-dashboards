resource "datadog_service_level_objective" "api_availability" {
  name        = "99.9% API Availability SLO"
  type        = "metric"
  description = "Tracks successful HTTP responses over a 30 day window"
  thresholds {
    timeframe = "30d"
    target    = 99.9
  }
}
