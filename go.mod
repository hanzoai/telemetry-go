module github.com/hanzoai/telemetry-go

go 1.26.1

require (
	github.com/cespare/xxhash/v2 v2.3.0
	github.com/go-logr/logr v1.4.3
	github.com/go-logr/stdr v1.2.2
	github.com/google/go-cmp v0.7.0
	github.com/hanzoai/telemetry-go/metric v1.40.0
	github.com/hanzoai/telemetry-go/trace v1.40.0
	github.com/stretchr/testify v1.11.1
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/kr/pretty v0.3.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/rogpeppe/go-internal v1.14.1 // indirect
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/hanzoai/telemetry-go/trace => ./trace

replace github.com/hanzoai/telemetry-go/metric => ./metric
