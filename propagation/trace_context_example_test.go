// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package propagation_test

import (
	"github.com/hanzoai/telemetry-go"
	"github.com/hanzoai/telemetry-go/propagation"
)

func ExampleTraceContext() {
	tc := propagation.TraceContext{}
	// Register the TraceContext propagator globally.
	otel.SetTextMapPropagator(tc)
}
