// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package global // import "github.com/hanzoai/telemetry-go/log/global"

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/hanzoai/telemetry-go/log"
	"github.com/hanzoai/telemetry-go/log/noop"
)

func TestMultipleGlobalLoggerProvider(t *testing.T) {
	type provider struct{ log.LoggerProvider }

	p1, p2 := provider{}, noop.NewLoggerProvider()

	SetLoggerProvider(&p1)
	SetLoggerProvider(p2)

	assert.Equal(t, p2, GetLoggerProvider())
}
