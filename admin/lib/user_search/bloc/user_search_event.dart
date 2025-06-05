part of 'user_search_bloc.dart';

abstract class UserSearchEvent  extends Equatable {
  const UserSearchEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_user_search_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomUserSearchEvent extends UserSearchEvent {
  /// {@macro custom_user_search_event}
  const CustomUserSearchEvent();
}
