part of 'user_register_bloc.dart';

/// {@template user_register_state}
/// UserRegisterState description
/// {@endtemplate}
class UserRegisterState extends Equatable {
  /// {@macro user_register_state}
  const UserRegisterState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current UserRegisterState with property changes
  UserRegisterState copyWith({
    String? customProperty,
  }) {
    return UserRegisterState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template user_register_initial}
/// The initial state of UserRegisterState
/// {@endtemplate}
class UserRegisterInitial extends UserRegisterState {
  /// {@macro user_register_initial}
  const UserRegisterInitial() : super();
}
