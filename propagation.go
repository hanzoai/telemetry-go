// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package otel // import "github.com/hanzoai/telemetry-go"

import (
	"github.com/hanzoai/telemetry-go/internal/global"
	"github.com/hanzoai/telemetry-go/propagation"
)

// GetTextMapPropagator returns the global TextMapPropagator. If none has been
// set, a No-Op TextMapPropagator is returned.
func GetTextMapPropagator() propagation.TextMapPropagator {
	return global.TextMapPropagator()
}

// SetTextMapPropagator sets propagator as the global TextMapPropagator.
func SetTextMapPropagator(propagator propagation.TextMapPropagator) {
	global.SetTextMapPropagator(propagator)
}
