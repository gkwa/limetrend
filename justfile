set shell := ["bash", "-uc"]

default:
    @just --list

format:
    just --unstable --fmt
    ruff format .
    ruff check --fix .

costs:
    limetrend dynamodb

costs-custom:
    limetrend cost dynamodb --days=60

clean:
    rm -rf dist/