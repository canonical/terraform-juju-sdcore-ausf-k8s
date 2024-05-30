resource "juju_application" "ausf" {
  name = "ausf"
  model = var.model_name

  charm {
    name = "sdcore-ausf-k8s"
    channel = var.channel
  }
  resources = {
      ausf-image = "gatici/sdcore-ausf:1.4.0"
  }
  units = 1
  trust = true
}

