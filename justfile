_default:
    @just --list

# Golangのformat & lint
[group('lint')]
go-lint:
    golangci-lint run ./...

# Golangのformat & lint(修正あり)
[group('lint')]
go-lint-fix:
    golangci-lint run ./... --fix

# Golangのaudit
[group('audit')]
go-audit:
    govulncheck ./...

# bufのformat & lint
[group('buf')]
buf-lint:
    buf lint
    buf format --diff --exit-code

# bufのformat & lint
[group('buf')]
buf-lint-fix:
    buf lint
    buf format -w

# bufのコード生成
[group('buf')]
buf-gen:
    buf generate
