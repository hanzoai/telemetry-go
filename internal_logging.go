// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package otel // import "github.com/hanzoai/telemetry-go"

import (
	"github.com/go-logr/logr"

	"github.com/hanzoai/telemetry-go/internal/global"
)

// SetLogger configures the logger used internally to opentelemetry.
func SetLogger(logger logr.Logger) {
	global.SetLogger(logger)
}
