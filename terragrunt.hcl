terraform {
  source = "./stack"
}

remote_state {
  backend = "http"

  config = {
    address  = "https://spacelift.io/state/${get_env("TF_VAR_spacelift_stack_id")}"
    username = get_env("TF_VAR_spacelift_run_id")
    password = get_env("SPACELIFT_API_TOKEN")
  }

  generate = {
    path      = "/mnt/workspace/source/state-credentials.tf"
    if_exists = "overwrite"
  }
}
