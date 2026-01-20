// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package propagation_test

import (
	"github.com/hanzoai/telemetry-go"
	"github.com/hanzoai/telemetry-go/propagation"
)

func ExampleSetTextMapPropagator() {
	// Create a new composite text map propagator.
	propagator := propagation.NewCompositeTextMapPropagator(
		propagation.TraceContext{},
		propagation.Baggage{},
	)

	// Set it as the global text map propagator.
	otel.SetTextMapPropagator(propagator)
}
