mod alice
mod bob

alias hello_b := hello_basic

list:
  @just --justfile say_name.just --list

@hello name:
  just --justfile say_name.just {{name}}::{{name}}

@hello_basic:
  echo "Hello"
