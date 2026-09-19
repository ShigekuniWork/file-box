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