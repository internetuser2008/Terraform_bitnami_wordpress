resource "helm_release" "wordpress" {
  name       = "wordpress"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "wordpress"

  values = [
    "${file("wordpress-values.yaml")}"
  ]

  set_sensitive {
    name  = "controller.adminUser"
    value = var.wordpress_admin_user
  }

  set_sensitive {
    name  = "controller.adminPassword"
    value = var.wordpress_admin_password
  }
}