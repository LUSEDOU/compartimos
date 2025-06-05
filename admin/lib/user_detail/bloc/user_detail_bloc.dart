import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'user_detail_event.dart';
part 'user_detail_state.dart';

class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  UserDetailBloc() : super(const UserDetailInitial()) {
    on<CustomUserDetailEvent>(_onCustomUserDetailEvent);
  }

  FutureOr<void> _onCustomUserDetailEvent(
    CustomUserDetailEvent event,
    Emitter<UserDetailState> emit,
  ) {
    // TODO: Add Logic
  }
}
