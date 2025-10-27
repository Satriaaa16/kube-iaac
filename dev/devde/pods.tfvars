kubedeploy = "test-readiness"
img-app    = "nginx"
port	   = 80

# readiness probe
  # request
cpu-req="25m"
memo-req="20Mi"
  # limit
cpu-limit="30m"
memo-limit="30Mi"
