terraform {
  source = "./stack"
  
  before_hook "before_hook_1" {
    commands     = ["init", "apply"]
    execute      = ["cp", "/mnt/workspace/source/state-credentials.tf", "state-credentials.tf"]
  }
}
