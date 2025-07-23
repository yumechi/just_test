set dotenv-required := true
set dotenv-load := true

# comment test
[doc('default: list commands')]
list:
  @just --justfile load_env.just --list

# need to load the environment variables from .env
@printout:
  echo "DEBUG_MODE="${DEBUG_MODE}