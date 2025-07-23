# Environment variables
mode := env_var_or_default("MODE", "dev")

# Default recipe
default:
    @just --list

# Build all binaries in debug mode
build:
    @echo "Building all binaries in debug mode..."
    cargo build

# Build all binaries in release mode
build-release:
    @echo "Building all binaries in release mode..."
    cargo build --release

# Build specific binary
build-bin bin:
    @echo "Building {{bin}} binary..."
    cargo build --bin {{bin}}

# Build specific binary in release mode
build-bin-release bin:
    @echo "Building {{bin}} binary in release mode..."
    cargo build --bin {{bin}} --release

# Run main program
run-main: (build-bin "main")
    cargo run --bin main

# Run config program
run-config: (build-bin "config")
    cargo run --bin config

# Run based on target argument
run target="main":
    @if [ "{{target}}" = "main" ]; then just run-main; elif [ "{{target}}" = "config" ]; then just run-config; else echo "Unknown target: {{target}}"; fi

# Clean build artifacts
clean:
    cargo clean
    rm -f main config test_main main.exe config.exe test_main.exe

# Test runner
test:
    @echo "Running tests..."
    cargo test
    @echo "All tests passed!"

# Format code
fmt:
    cargo fmt

# Check code
check:
    cargo check

# Clippy linting
clippy:
    cargo clippy