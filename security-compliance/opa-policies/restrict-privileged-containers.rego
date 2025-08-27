package kubernetes.admission

deny[msg] {
  input.request.kind.kind == "Pod"
  c := input.request.object.spec.containers[_]
  c.securityContext.privileged == true
  msg := sprintf("Privileged container %s is not allowed", [c.name])
}
