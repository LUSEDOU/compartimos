import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'movements_event.dart';
part 'movements_state.dart';

class MovementsBloc extends Bloc<MovementsEvent, MovementsState> {
  MovementsBloc() : super(const MovementsInitial()) {
    on<CustomMovementsEvent>(_onCustomMovementsEvent);
  }

  FutureOr<void> _onCustomMovementsEvent(
    CustomMovementsEvent event,
    Emitter<MovementsState> emit,
  ) {
    // TODO: Add Logic
  }
}
