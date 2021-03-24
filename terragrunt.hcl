terraform {
  source = "./stack"
}

remote_state = {
  path      = "/mnt/workspace/source/state_credentials.tf"
  if_exists = "skip"
}
