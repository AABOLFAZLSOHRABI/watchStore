# Watch Store

{English | [فارسی](README.fa.md)}

A modern Flutter e-commerce application for buying and selling watches, built with BLoC state management and responsive design.

## Features

- **Authentication**: OTP-based phone number verification and user registration
- **Product Catalog**: Browse watches by categories (Classic, Smart, Digital, Desktop)
- **Shopping Cart**: Add products to cart and manage quantities
- **User Profile**: Manage personal information and addresses
- **Order Tracking**: Monitor order status and history
- **Responsive Design**: Optimized for different screen sizes using ScreenUtil
- **Persian Language Support**: Full RTL support for Persian users

## Tech Stack

- **Framework**: Flutter
- **State Management**: BLoC Pattern
- **Navigation**: GoRouter for declarative routing
- **Networking**: Dio for API communication
- **UI Components**: Custom widgets with Material Design
- **Fonts**: Dana (Local) and Google Fonts integration
- **Icons/Images**: Flutter SVG and Cached Network Image support
- **Responsive**: ScreenUtil for adaptive layouts
- **Loading States**: Skeletonizer for modern shimmer effects
- **Architecture**: Modular Layered Architecture

## Getting Started

### Prerequisites

- Flutter SDK (^3.9.2)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone https://github.com/AABOLFAZLSOHRABI/watchStore.git
cd watch_store
```

2. Install dependencies:
```bash
flutter pub get
```

3. Generate required files:
```bash
flutter pub run build_runner build
flutter pub run flutter_gen_runner
```

4. Run the app:
```bash
flutter run
```

### Build Commands

- **Debug Build**: `flutter run`
- **Release Build**: `flutter build apk` or `flutter build ios`
- **Web Build**: `flutter build web`

## Project Structure

```
lib/
├── components/          # Reusable UI components and themes
├── gen/                # Generated files (assets, fonts)
├── res/                # Resources (colors, strings, dimensions)
├── route/              # Navigation and route definitions
├── screens/            # App screens and feature-specific UI
├── widgets/            # Global custom widgets
└── main.dart           # App entry point
```

## Key Dependencies

- `flutter_bloc`: State management
- `go_router`: Declarative routing
- `dio`: HTTP client for networking
- `flutter_screenutil`: Responsive design utilities
- `skeletonizer`: Shimmer loading effects
- `cached_network_image`: Optimized image loading
- `flutter_svg`: SVG image support
- `carousel_slider`: Smooth product carousels

## Development

### Code Style

This project follows Flutter's recommended linting rules defined in `analysis_options.yaml`.

### Testing

Run tests with:
```bash
flutter test
```

### Code Generation

Regenerate code after making changes to annotated classes:
```bash
flutter pub run build_runner build
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests and linting
5. Submit a pull request

## License

This project is private and not intended for public distribution.
