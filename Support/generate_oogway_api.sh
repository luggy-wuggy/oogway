rm -rf oogway_api


# openapi-generator-cli generate


openapi-generator generate -i openapi.yaml -g dart-dio -o oogway_api --additional-properties=pubName=oogway_api

cd oogway_api

# Fleshes out the new project and generates other files such as *.g.dart files
flutter pub get
flutter pub run build_runner build