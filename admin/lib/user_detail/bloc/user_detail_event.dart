part of 'user_detail_bloc.dart';

abstract class UserDetailEvent  extends Equatable {
  const UserDetailEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_user_detail_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomUserDetailEvent extends UserDetailEvent {
  /// {@macro custom_user_detail_event}
  const CustomUserDetailEvent();
}
