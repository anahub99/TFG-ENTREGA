package k8srequiredlabels

deny[msg] {
  input.kind == "Pod"
  input.apiVersion == "v1"
  latest := input.spec.containers[_].image == "*:latest"
  latest
  msg := "El uso de la etiqueta 'latest' no está permitido para imágenes de contenedor."
}