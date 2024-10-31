### Android running and building:
    1. Running:
        • flutter run --flavor dev --dart-define=FLAVOR=dev
        • flutter run --flavor staging --dart-define=FLAVOR=staging
        • flutter run --flavor prod --dart-define=FLAVOR=prod

    2. Building apk:
        • flutter build apk --flavor dev --dart-define=FLAVOR=dev
        • flutter build apk --flavor staging --dart-define=FLAVOR=staging
        • flutter build apk --flavor prod --dart-define=FLAVOR=prod

    3. Building appbundle:
        • flutter build appbundle --flavor dev --dart-define=FLAVOR=dev
        • flutter build appbundle --flavor staging --dart-define=FLAVOR=staging
        • flutter build appbundle --flavor prod --dart-define=FLAVOR=prod