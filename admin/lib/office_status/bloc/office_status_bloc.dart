import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'office_status_event.dart';
part 'office_status_state.dart';

class OfficeStatusBloc extends Bloc<OfficeStatusEvent, OfficeStatusState> {
  OfficeStatusBloc() : super(const OfficeStatusInitial()) {
    on<CustomOfficeStatusEvent>(_onCustomOfficeStatusEvent);
  }

  FutureOr<void> _onCustomOfficeStatusEvent(
    CustomOfficeStatusEvent event,
    Emitter<OfficeStatusState> emit,
  ) {
    // TODO: Add Logic
  }
}
