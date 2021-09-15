//go:build tools

// Dependencies tracking for a module.
// Include imports that are needed in module vendor.
// This file will not be imported during a build.

package tools

import _ "github.com/gogo/protobuf/gogoproto"
