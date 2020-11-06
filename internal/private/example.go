package private

// ShouldNotBeShared is an example function to show
// that the package within /internal folder should
// not be shared and used by end users
func ShouldNotBeShared() bool {
	return true
}
