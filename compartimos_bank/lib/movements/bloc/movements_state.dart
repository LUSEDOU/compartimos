part of 'movements_bloc.dart';

/// {@template movements_state}
/// MovementsState description
/// {@endtemplate}
class MovementsState extends Equatable {
  /// {@macro movements_state}
  const MovementsState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current MovementsState with property changes
  MovementsState copyWith({
    String? customProperty,
  }) {
    return MovementsState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template movements_initial}
/// The initial state of MovementsState
/// {@endtemplate}
class MovementsInitial extends MovementsState {
  /// {@macro movements_initial}
  const MovementsInitial() : super();
}
