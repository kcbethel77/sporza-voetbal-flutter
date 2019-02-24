# Sporza Voetbal Flutter

Try out to port [Sporza Voetbal][1] in to a Flutter app.

## Live Templates
Optionally:
Import the Dart live template in IDEA by using *FILE > IMPORT SETTINGS*.  
Then look for the live-templates.jar in the project.

## Handy Commands

### Run the build runner code generator
```
flutter packages pub run build_runner build
```

### Run the Flutter Static analysis tool

```
flutter analyze
``` 

### Run the tests

#### Unit Test

```
flutter test
```

#### Widget Test

The idea is the same as snapshot test in React Native.  
To regenerate a golden set run

```
flutter test --update-goldens
```

#### Integration tests

[https://flutter.io/docs/cookbook/testing/integration](https://flutter.io/docs/cookbook/testing/integration)

```
flutter drive --target test_driver/cache.dart
```

[1]: https://play.google.com/store/apps/details?id=be.vrt.mobile.android.sporza.voetbal

