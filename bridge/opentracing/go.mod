module github.com/hanzoai/telemetry-go/bridge/opentracing

go 1.24.0

replace github.com/hanzoai/telemetry-go => ../..

replace github.com/hanzoai/telemetry-go/trace => ../../trace

require (
	github.com/hanzoai/telemetry-go v1.39.0
	github.com/hanzoai/telemetry-go/trace v1.39.0
	github.com/opentracing-contrib/go-grpc v0.1.2
	github.com/opentracing-contrib/go-grpc/test v0.0.0-20260108045830-19053a8a7bbb
	github.com/opentracing/opentracing-go v1.2.0
	github.com/stretchr/testify v1.11.1
	google.golang.org/grpc v1.78.0
)

require (
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/hanzoai/telemetry-go/metric v1.39.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	golang.org/x/net v0.49.0 // indirect
	golang.org/x/sys v0.40.0 // indirect
	golang.org/x/text v0.33.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20260114163908-3f89685c29c3 // indirect
	google.golang.org/protobuf v1.36.11 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/hanzoai/telemetry-go/metric => ../../metric
