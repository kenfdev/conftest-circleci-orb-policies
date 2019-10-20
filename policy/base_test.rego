package main

test_deny_with_invalid_version {
  deny["Use version 2.1 or higher"] with input as { "version": 2.0 }
}