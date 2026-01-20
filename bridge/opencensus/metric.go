// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package opencensus // import "github.com/hanzoai/telemetry-go/bridge/opencensus"

import (
	"context"

	ocmetricdata "go.opencensus.io/metric/metricdata"
	"go.opencensus.io/metric/metricproducer"

	internal "github.com/hanzoai/telemetry-go/bridge/opencensus/internal/ocmetric"
	"github.com/hanzoai/telemetry-go/sdk/instrumentation"
	"github.com/hanzoai/telemetry-go/sdk/metric"
	"github.com/hanzoai/telemetry-go/sdk/metric/metricdata"
)

// MetricProducer implements the [github.com/hanzoai/telemetry-go/sdk/metric.Producer] to provide metrics
// from OpenCensus to the OpenTelemetry SDK.
type MetricProducer struct {
	manager *metricproducer.Manager
}

// NewMetricProducer returns a metric.Producer that fetches metrics from
// OpenCensus.
func NewMetricProducer(...MetricOption) *MetricProducer {
	return &MetricProducer{
		manager: metricproducer.GlobalManager(),
	}
}

var _ metric.Producer = (*MetricProducer)(nil)

// Produce fetches metrics from the OpenCensus manager,
// translates them to OpenTelemetry's data model, and returns them.
func (p *MetricProducer) Produce(context.Context) ([]metricdata.ScopeMetrics, error) {
	producers := p.manager.GetAll()
	data := []*ocmetricdata.Metric{}
	for _, ocProducer := range producers {
		data = append(data, ocProducer.Read()...)
	}
	otelmetrics, err := internal.ConvertMetrics(data)
	if len(otelmetrics) == 0 {
		return nil, err
	}
	return []metricdata.ScopeMetrics{{
		Scope: instrumentation.Scope{
			Name:    scopeName,
			Version: Version(),
		},
		Metrics: otelmetrics,
	}}, err
}
