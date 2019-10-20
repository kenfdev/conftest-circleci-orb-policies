package main

import data.functions

deny[msg] {
  has_no_examples
  msg := "There should be at least one example"
}

deny[msg] {
  any_orb_version_not_x_y
  msg := "Show orb version as x.y (patch version may not need to be included)."
}

has_no_examples {
  count(input.examples) < 1
}

has_no_examples {
  not functions.has_key(input, "examples")
}

any_orb_version_not_x_y {
  orb_name := input.examples[_].usage.orbs[_]
  not endswith(orb_name, "x.y")
}
