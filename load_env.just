set dotenv-required := true
set dotenv-load := true

home_dir := env('HOME')

# comment test
[doc('default: list commands')]
list:
  @just --justfile load_env.just --list

# need to load the environment variables from .env
@printout:
  echo "DEBUG_MODE="${DEBUG_MODE}

@machine_name:
  echo "Machine name: {{arch()}} {{os()}} {{os_family()}} {{num_cpus()}}"

@print_home:
  echo "Home directory: {{home_dir}}"

@directory_test:
  echo "Home directory: {{home_dir()}}"
  echo "Invocation directory: {{invocation_dir()}}"
  echo "Justfile: {{justfile()}}"
  echo "Justfile directory: {{justfile_dir()}}"
  echo "source justfile: {{source_file()}}"
  echo "source directory: {{source_dir()}}"
  echo "just_executable: {{just_executable()}}"
  echo "just_pid: {{just_pid()}}"
  echo "encode url {{encode_uri_component('https://example.com/just_test?param1=value1&param2=value2')}}"
