part of 'user_search_bloc.dart';

/// {@template user_search_state}
/// UserSearchState description
/// {@endtemplate}
class UserSearchState extends Equatable {
  /// {@macro user_search_state}
  const UserSearchState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current UserSearchState with property changes
  UserSearchState copyWith({
    String? customProperty,
  }) {
    return UserSearchState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template user_search_initial}
/// The initial state of UserSearchState
/// {@endtemplate}
class UserSearchInitial extends UserSearchState {
  /// {@macro user_search_initial}
  const UserSearchInitial() : super();
}
