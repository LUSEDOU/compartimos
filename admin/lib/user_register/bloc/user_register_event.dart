part of 'user_register_bloc.dart';

abstract class UserRegisterEvent  extends Equatable {
  const UserRegisterEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_user_register_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomUserRegisterEvent extends UserRegisterEvent {
  /// {@macro custom_user_register_event}
  const CustomUserRegisterEvent();
}
