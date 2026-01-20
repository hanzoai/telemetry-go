module github.com/hanzoai/telemetry-go/bridge/opencensus/test

go 1.24.0

require (
	github.com/hanzoai/telemetry-go v1.39.0
	github.com/hanzoai/telemetry-go/bridge/opencensus v1.39.0
	github.com/hanzoai/telemetry-go/sdk v1.39.0
	github.com/hanzoai/telemetry-go/trace v1.39.0
	go.opencensus.io v0.24.0
)

require (
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/golang/groupcache v0.0.0-20241129210726-2c02b8208cf8 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/hanzoai/telemetry-go/metric v1.39.0 // indirect
	github.com/hanzoai/telemetry-go/sdk/metric v1.39.0 // indirect
	golang.org/x/sys v0.40.0 // indirect
)

replace github.com/hanzoai/telemetry-go => ../../..

replace github.com/hanzoai/telemetry-go/bridge/opencensus => ../

replace github.com/hanzoai/telemetry-go/sdk => ../../../sdk

replace github.com/hanzoai/telemetry-go/trace => ../../../trace

replace github.com/hanzoai/telemetry-go/metric => ../../../metric

replace github.com/hanzoai/telemetry-go/sdk/metric => ../../../sdk/metric
