terraform {
  source = "./stack"
  
  before_hook "ls" {
    commands     = ["show"]
    execute      = ["terragrunt", "init"]
  }
}
