part of 'movements_bloc.dart';

abstract class MovementsEvent  extends Equatable {
  const MovementsEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_movements_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomMovementsEvent extends MovementsEvent {
  /// {@macro custom_movements_event}
  const CustomMovementsEvent();
}
