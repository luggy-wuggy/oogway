#! /bin/bash

# This script uses the OpenAPI CLI tool to autogen code via the openapitools.json config

rm -rf oogway/lib/swagger_generated_code

cd oogway

# Fleshes out the new project and generates other files such as *.g.dart files
flutter pub get
flutter pub run build_runner build