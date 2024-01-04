#!/bin/bash

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "Flutter is not installed. Please install Flutter first."
    exit 1
fi

# Check if pubspec.yaml file exists
if [ ! -f "pubspec.yaml" ]; then
    echo "pubspec.yaml file not found. Please make sure you are in the correct directory."
    exit 1
fi

# Run 'flutter pub get' command to install packages
flutter clean
flutter pub add flutter_svg
flutter pub add flutter_bloc
flutter pub add equatable
flutter pub add flutter_dotenv
flutter pub add flutter_secure_storage
flutter pub add fluttertoast
flutter pub add easy_localization
flutter pub add dartz
flutter pub add get_it
flutter pub add intl
flutter pub add google_fonts
flutter pub add dio
flutter pub add pretty_dio_logger
flutter pub add logger
flutter pub add sentry_flutter
flutter pub add cached_network_image
flutter pub add mockito
flutter pub get
