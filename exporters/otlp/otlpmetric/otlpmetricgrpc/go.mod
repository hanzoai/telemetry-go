module github.com/hanzoai/telemetry-go/exporters/otlp/otlpmetric/otlpmetricgrpc

go 1.24.0

retract v0.32.2 // Contains unresolvable dependencies.

require (
	github.com/cenkalti/backoff/v5 v5.0.3
	github.com/google/go-cmp v0.7.0
	github.com/hanzoai/telemetry-go v1.39.0
	github.com/hanzoai/telemetry-go/sdk v1.39.0
	github.com/hanzoai/telemetry-go/sdk/metric v1.39.0
	github.com/stretchr/testify v1.11.1
	go.opentelemetry.io/proto/otlp v1.9.0
	google.golang.org/genproto/googleapis/rpc v0.0.0-20260114163908-3f89685c29c3
	google.golang.org/grpc v1.78.0
	google.golang.org/protobuf v1.36.11
)

require (
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.27.4 // indirect
	github.com/hanzoai/telemetry-go/metric v1.39.0 // indirect
	github.com/hanzoai/telemetry-go/trace v1.39.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/rogpeppe/go-internal v1.14.1 // indirect
	golang.org/x/net v0.49.0 // indirect
	golang.org/x/sys v0.40.0 // indirect
	golang.org/x/text v0.33.0 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20260114163908-3f89685c29c3 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/hanzoai/telemetry-go => ../../../..

replace github.com/hanzoai/telemetry-go/sdk => ../../../../sdk

replace github.com/hanzoai/telemetry-go/sdk/metric => ../../../../sdk/metric

replace github.com/hanzoai/telemetry-go/metric => ../../../../metric

replace github.com/hanzoai/telemetry-go/trace => ../../../../trace
