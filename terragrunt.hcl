terraform {
  source = "./stack"
  
  before_hook "copy-creds" {
    commands     = ["init", "apply"]
    execute      = ["cp", "/mnt/workspace/source/state-credentials.tf", "state-credentials.tfx"]
  }
  
  before_hook "ls" {
    commands     = ["init", "apply"]
    execute      = ["ls"]
  }
}
