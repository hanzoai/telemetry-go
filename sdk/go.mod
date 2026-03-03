module github.com/hanzoai/telemetry-go/sdk

go 1.26

replace github.com/hanzoai/telemetry-go => ../

require (
	github.com/go-logr/logr v1.4.3
	github.com/google/go-cmp v0.7.0
	github.com/google/uuid v1.6.0
	github.com/stretchr/testify v1.11.1
	github.com/hanzoai/telemetry-go v1.40.0
	github.com/hanzoai/telemetry-go/metric v1.40.0
	github.com/hanzoai/telemetry-go/sdk/metric v1.40.0
	github.com/hanzoai/telemetry-go/trace v1.40.0
	go.uber.org/goleak v1.3.0
	golang.org/x/sys v0.41.0
)

require (
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.opentelemetry.io/auto/sdk v1.2.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/hanzoai/telemetry-go/trace => ../trace

replace github.com/hanzoai/telemetry-go/metric => ../metric

replace github.com/hanzoai/telemetry-go/sdk/metric => ./metric
