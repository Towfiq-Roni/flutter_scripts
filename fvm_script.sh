#!/bin/bash

# Check if FVM is installed
if ! command -v fvm &> /dev/null; then
    echo "FVM is not installed. Please install FVM first."
    exit 1
fi

# Check if pubspec.yaml file exists
if [ ! -f "pubspec.yaml" ]; then
    echo "pubspec.yaml file not found. Please make sure you are in the correct directory."
    exit 1
fi

# Run 'fvm flutter clean' command to clean the project
fvm flutter clean

# Add the required packages using 'fvm flutter pub add' command
fvm flutter pub add flutter_svg
fvm flutter pub add flutter_bloc
fvm flutter pub add equatable
fvm flutter pub add flutter_dotenv
fvm flutter pub add flutter_secure_storage
fvm flutter pub add fluttertoast
fvm flutter pub add easy_localization
fvm flutter pub add dartz
fvm flutter pub add get_it
fvm flutter pub add intl
fvm flutter pub add google_fonts
fvm flutter pub add dio
fvm flutter pub add pretty_dio_logger
fvm flutter pub add logger
fvm flutter pub add sentry_flutter
fvm flutter pub add cached_network_image
fvm flutter pub add mockito

# Run 'fvm flutter pub get' command to install the packages
fvm flutter pub get
