// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package otlploggrpc_test

import (
	"context"

	"github.com/hanzoai/telemetry-go/exporters/otlp/otlplog/otlploggrpc"
	"github.com/hanzoai/telemetry-go/log/global"
	"github.com/hanzoai/telemetry-go/sdk/log"
)

func Example() {
	ctx := context.Background()
	exp, err := otlploggrpc.New(ctx)
	if err != nil {
		panic(err)
	}

	processor := log.NewBatchProcessor(exp)
	provider := log.NewLoggerProvider(log.WithProcessor(processor))
	defer func() {
		if err := provider.Shutdown(ctx); err != nil {
			panic(err)
		}
	}()

	global.SetLoggerProvider(provider)

	// From here, the provider can be used by instrumentation to collect
	// telemetry.
}
