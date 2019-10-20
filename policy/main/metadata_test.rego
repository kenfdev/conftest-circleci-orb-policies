package main

test_commands_misses_description {
  i := {
    "commands": {
      "commandA": {
      }
    },
    "jobs": {
      "jobA": {
        "description": "some description"
      }
    },
    "executors": {
      "executorA": {
        "description": "some description"
      }
    },
    "parameters": {
      "parameterA": {
        "description": "some description"
      }
    }
  }

  any_commands_jobs_executors_parameters_misses_description with input as i
}

test_jobs_misses_description {
  i := {
    "commands": {
      "commandA": {
        "description": "some description"
      }
    },
    "jobs": {
      "jobA": {
      }
    },
    "executors": {
      "executorA": {
        "description": "some description"
      }
    },
    "parameters": {
      "parameterA": {
        "description": "some description"
      }
    }
  }

  any_commands_jobs_executors_parameters_misses_description with input as i
}

test_executors_misses_description {
  i := {
    "commands": {
      "commandA": {
        "description": "some description"
      }
    },
    "jobs": {
      "jobA": {
        "description": "some description"
      }
    },
    "executors": {
      "executorA": {
      }
    },
    "parameters": {
      "parameterA": {
        "description": "some description"
      }
    }
  }

  any_commands_jobs_executors_parameters_misses_description with input as i
}

test_parameters_misses_description {
  i := {
    "commands": {
      "commandA": {
        "description": "some description"
      }
    },
    "jobs": {
      "jobA": {
        "description": "some description"
      }
    },
    "executors": {
      "executorA": {
        "description": "some description"
      }
    },
    "parameters": {
      "parameterA": {
      }
    }
  }

  any_commands_jobs_executors_parameters_misses_description with input as i
}

test_all_commands_jobs_executors_parameters_have_description {
  i := {
    "commands": {
      "commandA": {
        "description": "some description"
      }
    },
    "jobs": {
      "jobA": {
        "description": "some description"
      }
    },
    "executors": {
      "executorA": {
        "description": "some description"
      }
    },
    "parameters": {
      "parameterA": {
        "description": "some description"
      }
    }
  }

  not any_commands_jobs_executors_parameters_misses_description with input as i
}
