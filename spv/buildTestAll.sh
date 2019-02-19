#!/usr/bin/env bash

flutter packages get
flutter packages pub run build_runner build
flutter test
