# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Familio** is a Flutter mobile application for family coordination and management. It's a mobile-first SaaS application that helps families organize schedules, tasks, and household activities.

### Key Features (MVP)
- Household management with member invitation system
- Child profile and schedule management
- Family task/todo management with assignment capabilities
- Real-time collaboration between family members
- Firebase integration for authentication and data persistence

## Architecture

### Clean Architecture Pattern
The project follows Clean Architecture principles with clear separation of concerns:

- **Domain Layer** (`lib/domain/`): Contains business logic, entities, and repository interfaces
- **Data Layer** (`lib/data/`): Implements repositories, data sources, and models
- **Presentation Layer** (`lib/presentation/`): UI components, BLoC state management, and routing
- **Core Layer** (`lib/core/`): Shared utilities, themes, and services

### Key Dependencies
- **State Management**: BLoC pattern using `flutter_bloc`
- **Dependency Injection**: `get_it` with `injectable` for automatic registration
- **Routing**: `auto_route` for type-safe navigation
- **Firebase**: Authentication, Firestore, Analytics, Crashlytics
- **Networking**: `dio` with `retrofit` for API calls
- **Logging**: `talker` suite for comprehensive logging
- **Code Generation**: `freezed`, `json_serializable`, `build_runner`
- **Icones**: `phosphor_flutter` for icon. Use `PhosphorIcon` and `PhosphorIconsDuotone` for icons.

## Development Commands

### Code Generation
```bash
# Generate all code (routes, dependency injection, JSON serialization)
dart run build_runner build

# Watch for changes and regenerate automatically
dart run build_runner watch

# Clean generated files and regenerate
dart run build_runner build --delete-conflicting-outputs
```

### Running the App
```bash
# Run on development device
flutter run

# Run with flavor (if configured)
flutter run --flavor dev
flutter run --flavor prod

# Run tests
flutter test

# Run integration tests
flutter test integration_test/
```

### Code Quality
```bash
# Run Flutter linter
flutter analyze

# Format code
dart format .

# Check for unused dependencies
flutter pub deps
```

## Architecture Patterns

### Dependency Injection
- Uses `get_it` as service locator with `injectable` for automatic registration
- All services are registered in `lib/di/injection.dart`
- Modules are organized by feature in `lib/di/modules/`
- Always use `@singleton`, `@lazySingleton`, or `@injectable` annotations

### State Management
- BLoC pattern for complex state management
- Each feature has its own BLoC in `lib/presentation/blocs/`
- Events and states are defined using `freezed` for immutability
- Use `context.read<BlocName>()` for one-time access, `context.watch<BlocName>()` for listening

### Navigation
- `auto_route` for type-safe navigation
- Route definitions in `lib/presentation/router/app_router.dart`
- Generated routes in `app_router.gr.dart` (auto-generated)
- Use `context.router.push()` for navigation

### Logging
- Comprehensive logging setup using `talker` suite
- Separate loggers for different concerns (BLoC, Dio, general)
- Logs are configured in `lib/core/logging/logger_service.dart`
- Use `LoggerService` for application logging

### Firebase Integration
- Firebase services are configured in `lib/core/firebase/`
- Authentication, Firestore, Analytics, and Crashlytics are integrated
- Firebase configuration is in `firebase_options.dart` (auto-generated)

## Code Generation Requirements

The project heavily relies on code generation. Always run `dart run build_runner build` after:
- Adding new routes to `AppRouter`
- Adding new injectable services
- Modifying data models with JSON serialization
- Adding new BLoC events/states

## Testing Strategy

- Unit tests for business logic in `test/`
- Widget tests for UI components
- Integration tests in `integration_test/`
- Use `flutter_test` for testing framework
- Mock dependencies using `mockito` or manual mocks

## Firebase Configuration

- Firebase project is configured with `firebase_core`
- Authentication via `firebase_auth`
- Data persistence with Firestore
- Analytics and crash reporting enabled
- Configuration files: `firebase_options.dart`, `firebase.json`

## UI/UX Patterns

- Material Design 3 with custom theming in `lib/core/theme/`
- Responsive design with portrait-only orientation
- Reusable widgets in `lib/presentation/widgets/`
- Custom components for avatars, buttons, cards, inputs, and feedback
- Light/dark theme support configured in `app_theme.dart`