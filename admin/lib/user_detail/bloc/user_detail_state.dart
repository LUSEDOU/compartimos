part of 'user_detail_bloc.dart';

/// {@template user_detail_state}
/// UserDetailState description
/// {@endtemplate}
class UserDetailState extends Equatable {
  /// {@macro user_detail_state}
  const UserDetailState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current UserDetailState with property changes
  UserDetailState copyWith({
    String? customProperty,
  }) {
    return UserDetailState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template user_detail_initial}
/// The initial state of UserDetailState
/// {@endtemplate}
class UserDetailInitial extends UserDetailState {
  /// {@macro user_detail_initial}
  const UserDetailInitial() : super();
}
