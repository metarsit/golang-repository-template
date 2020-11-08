#!/usr/bin/env bash

# Warning:
# Running this script in a GO project will append
# to your go.mod and go.sum file. This file is 
# recommended to be run on /tmp or $HOME folder.

declare USEFUL_PACKAGES=(
    # An autocompletion daemon for the Go programming language
    "github.com/stamblerre/gocode"

    # A tool that provides list of available Go packages that can be imported
    "github.com/uudashr/gopkgs/cmd/gopkgs"

    # Simple utility for extracting a JSON representation of the declarations in a Go source file
    "github.com/ramya-rao-a/go-outline"

    # A utility for extracting a JSON representation of the package symbols from a go source tree
    "github.com/newhook/go-symbols"

    # Tools provide a variety of cool packages like:
    # guru    : This tool provides the find references and find interface implementations features
    # gorename: This tool provides the rename symbol feature
    "golang.org/x/tools/..."

    # A tool to generate method stubs for implementing an interface
    "github.com/josharian/impl"

    # A tool to generate Go tests for specific source files or an entire directory
    "github.com/cweill/gotests/..."

    # A tool to fill a struct literal with default values
    "github.com/davidrjenni/reftools/cmd/fillstruct"

    # A tool to modify/update field tags in structs
    "github.com/fatih/gomodifytags"
)

# Loop to go get
for pkg in ${USEFUL_PACKAGES[*]}
do
    echo "GO Getting: ${pkg}"
    go get -u ${pkg}
done
