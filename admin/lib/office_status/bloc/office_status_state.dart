part of 'office_status_bloc.dart';

/// {@template office_status_state}
/// OfficeStatusState description
/// {@endtemplate}
class OfficeStatusState extends Equatable {
  /// {@macro office_status_state}
  const OfficeStatusState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current OfficeStatusState with property changes
  OfficeStatusState copyWith({
    String? customProperty,
  }) {
    return OfficeStatusState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template office_status_initial}
/// The initial state of OfficeStatusState
/// {@endtemplate}
class OfficeStatusInitial extends OfficeStatusState {
  /// {@macro office_status_initial}
  const OfficeStatusInitial() : super();
}
