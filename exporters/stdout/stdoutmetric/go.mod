module github.com/hanzoai/telemetry-go/exporters/stdout/stdoutmetric

go 1.24.0

require (
	github.com/hanzoai/telemetry-go v1.39.0
	github.com/hanzoai/telemetry-go/metric v1.39.0
	github.com/hanzoai/telemetry-go/sdk v1.39.0
	github.com/hanzoai/telemetry-go/sdk/metric v1.39.0
	github.com/stretchr/testify v1.11.1
)

require (
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/hanzoai/telemetry-go/trace v1.39.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	golang.org/x/sys v0.40.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/hanzoai/telemetry-go/metric => ../../../metric

replace github.com/hanzoai/telemetry-go => ../../..

replace github.com/hanzoai/telemetry-go/sdk/metric => ../../../sdk/metric

replace github.com/hanzoai/telemetry-go/trace => ../../../trace

replace github.com/hanzoai/telemetry-go/sdk => ../../../sdk
