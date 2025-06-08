part of 'app_bloc.dart';

abstract class AppEvent  extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_app_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomAppEvent extends AppEvent {
  /// {@macro custom_app_event}
  const CustomAppEvent();
}
