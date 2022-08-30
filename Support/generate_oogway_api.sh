rm -rf oogway_api


openapi-generator-cli generate

cd oogway_api

# Fleshes out the new project and generates other files such as *.g.dart files
flutter pub get
flutter pub run build_runner build