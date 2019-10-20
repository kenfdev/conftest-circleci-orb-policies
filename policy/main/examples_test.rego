package main

test_has_no_examples_key {
  has_no_examples with input as {}
}

test_has_no_examples_detail {
  has_no_examples with input as { "examples": {} }
}

test_has_an_example {
  not has_no_examples with input as { "examples": { "exampleA": {}}}
}

test_any_orb_version_not_x_y {
  any_orb_version_not_x_y with input as {
    "examples": {
      "exampleA": {
        "usage": {
          "orbs": {
            "cli": "some-orb@1.2.3",
            "cli2": "some-orb@x.y"
          }
        }
      }
    }
  }
}
