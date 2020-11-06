package main

import (
	"golang-repository-template/internal/private"
	"golang-repository-template/pkg/external"

	"log"
)

func main() {
	if imported := external.UsersCanImport(); !imported {
		// Package from /pkg
		log.Println("Not Imported")
	}
	if sharing := private.ShouldNotBeShared(); !sharing {
		// Package from /internal
		log.Println("Shared")
	}
	log.Println("Yay")
}
