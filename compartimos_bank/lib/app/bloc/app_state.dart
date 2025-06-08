part of 'app_bloc.dart';

/// {@template app_state}
/// AppState description
/// {@endtemplate}
class AppState extends Equatable {
  /// {@macro app_state}
  const AppState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current AppState with property changes
  AppState copyWith({
    String? customProperty,
  }) {
    return AppState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template app_initial}
/// The initial state of AppState
/// {@endtemplate}
class AppInitial extends AppState {
  /// {@macro app_initial}
  const AppInitial() : super();
}
