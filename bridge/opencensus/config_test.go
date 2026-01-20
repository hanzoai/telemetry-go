// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package opencensus // import "github.com/hanzoai/telemetry-go/bridge/opencensus"

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/hanzoai/telemetry-go"
	"github.com/hanzoai/telemetry-go/trace/noop"
)

func TestNewTraceConfig(t *testing.T) {
	globalTP := noop.NewTracerProvider()
	customTP := noop.NewTracerProvider()
	otel.SetTracerProvider(globalTP)
	for _, tc := range []struct {
		desc     string
		opts     []TraceOption
		expected traceConfig
	}{
		{
			desc: "default",
			expected: traceConfig{
				tp: globalTP,
			},
		},
		{
			desc: "overridden",
			opts: []TraceOption{
				WithTracerProvider(customTP),
			},
			expected: traceConfig{
				tp: customTP,
			},
		},
	} {
		t.Run(tc.desc, func(t *testing.T) {
			cfg := newTraceConfig(tc.opts)
			assert.Equal(t, tc.expected, cfg)
		})
	}
}
