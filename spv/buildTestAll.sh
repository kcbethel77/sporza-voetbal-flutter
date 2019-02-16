#!/usr/bin/env bash
##### Main #####

flutter packages get
flutter packages pub run build_runner build

# Enable once we have tests
# flutter test

# Enable once we have ui tests
# flutter drive --target test_driver/**

##### Service Layer #####
cd service_layer
flutter packages get
flutter packages pub run build_runner build
flutter test

##### Ui #####
cd ../ui
flutter packages get
flutter test

##### Common #####
cd ../common
flutter packages get
flutter packages pub run build_runner build

# Enable once we have tests
# flutter test