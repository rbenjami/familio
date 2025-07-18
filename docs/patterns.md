# Technical Patterns

## BLoC Architecture
- **State**: Manages app state.
```dart
part '<file_name>.freezed.dart';

enum UiStatus { initial, loading, success, ... }

@freezed
abstract class ExampleState with _$ExampleState {
  const factory ExampleState({
    @Default(UiStatus.initial) UiStatus uiStatus,
    String? data,
    required Object otherData,
    String? error,
  }) = _ExampleState;
}
```

- **Event**: Handles user interactions.
```dart
@immutable
sealed class ExampleEvent {
  const ExampleEvent();
}

class DataSubmitted extends ExampleEvent {
  final String data;
  const DataSubmitted(this.data);
}

class OtherDataSubmitted extends ExampleEvent {
  final Object otherData;
  const OtherDataSubmitted(this.otherData);
}

class ActionRequested extends ExampleEvent {}
```

- **Bloc**: Combines State and Event.
```dart
class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  final ExampleRepository _exampleRepository;

  ExampleBloc(this._exampleRepository)
    : super(ExampleState()) {
    on<ExampleEvent>(_onExampleEvent);
  }

  Future<void> _onExampleEvent(
    ExampleEvent event,
    Emitter<ExampleState> emit,
  ) async {
    emit(state.copyWith(loading: true, error: null));
    try {
      final data = await _exampleRepository.action();
      emit(state.copyWith(loading: false, data: data));
    } catch (e, s) {
      getIt<LoggingService>().debug(e, s, s);
      emit(state.copyWith(loading: false, error: e.toString()));
    }
  }
```

## State Management
- Bloc is used for managing app state. Ensure all events and states are clearly defined in their respective files.
- Event and State classes should be immutable sealed classes.


## Navigation
- Auto_route is used for navigation. Ensure all routes are clearly defined in their respective files.
- Avoid named routes.
Example:
```dart
context.router.push(HomeRoute());
```

## Localization
- Intl is used for localization. Ensure all strings are clearly defined in their respective files.
Example:
```dart
context.s.exampleString;
```

## Context Extensions
- Context extensions are used to provide utility functions for the app. Ensure all extensions are clearly defined in their respective files.
Example:
```dart
context.theme; // ThemeData
context.colorScheme; // ColorScheme
context.textTheme; // TextTheme
context.s; // S
```

