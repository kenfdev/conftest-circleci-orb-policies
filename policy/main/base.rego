package main

deny[msg] {
  input.version < 2.1
  msg = "Use version 2.1 or higher"
}
