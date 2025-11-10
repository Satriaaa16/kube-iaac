kubedeploy = "test-svc"
img-app    = "nginx"
port	   = 80
applabel   = "iac-nginx"

# readiness probe
  # request
cpu-req="25m"
memo-req="20Mi"
  # limit
cpu-limit="30m"
memo-limit="30Mi"
