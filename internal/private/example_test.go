package private

import (
	"testing"
)

func TestShouldNotBeShared(t *testing.T) {
	if shared := ShouldNotBeShared(); !shared {
		t.FailNow()
	}
}
