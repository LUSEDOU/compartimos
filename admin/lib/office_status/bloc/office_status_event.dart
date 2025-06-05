part of 'office_status_bloc.dart';

abstract class OfficeStatusEvent  extends Equatable {
  const OfficeStatusEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_office_status_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomOfficeStatusEvent extends OfficeStatusEvent {
  /// {@macro custom_office_status_event}
  const CustomOfficeStatusEvent();
}
