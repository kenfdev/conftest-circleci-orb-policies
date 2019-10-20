package main

import data.functions

deny[msg] {
  has_no_default_executor
  msg := "Must include a 'default' executor."
}

has_no_default_executor {
  not functions.has_key(input, "executors")
}

has_no_default_executor {
  functions.has_key(input, "executors")
  not functions.has_key(input.executors, "default")
}
