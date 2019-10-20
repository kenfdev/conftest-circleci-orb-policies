package main

import data.functions

deny[msg] {
  any_commands_jobs_executors_parameters_misses_description
  msg := "All commands, jobs, executors, parameters should have a description."
}

any_commands_jobs_executors_parameters_misses_description {
  commands := input.commands[_]
  not functions.has_key(commands, "description")
}
any_commands_jobs_executors_parameters_misses_description {
  jobs := input.jobs[_]
  not functions.has_key(jobs, "description")
}
any_commands_jobs_executors_parameters_misses_description {
  executors := input.executors[_]
  not functions.has_key(executors, "description")
}
any_commands_jobs_executors_parameters_misses_description {
  parameters := input.parameters[_]
  not functions.has_key(parameters, "description")
}
