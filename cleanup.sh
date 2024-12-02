#!/bin/sh

find . -name Package.resolved -exec rm -rf {} \;
rm quote/Sources/QuoteService.swift
rm -rf quote/.build
rm -rf quote/.index-build
rm quote/Sources/QuoteService.swift
rm quote/samconfig.toml
rm quote/Package.swift
rm -rf helloWorld/MyLambda

