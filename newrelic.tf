terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 3.5.3" # Update this line
    }
  }
}

provider "newrelic" {
  account_id = "1002291348"
  api_key = "NRAK-KVTYSUPWQSNSS4KSY8IOX0MOVB0"   # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}
resource "newrelic_alert_policy" "foo" {
  name = "Example"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}