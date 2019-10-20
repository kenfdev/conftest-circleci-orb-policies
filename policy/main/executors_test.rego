package main

test_has_no_executors_key {
  has_no_default_executor with input as {}
}

test_has_no_default_executor {
  has_no_default_executor with input as { "executors": { "non-default-executor": {}}}
}
