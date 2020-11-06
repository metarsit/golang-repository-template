package external

import (
	"testing"
)

func TestUsersCanImport(t *testing.T) {
	if canImport := UsersCanImport(); !canImport {
		t.FailNow()
	}
}
