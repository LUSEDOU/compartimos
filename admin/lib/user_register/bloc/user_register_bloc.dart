import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'user_register_event.dart';
part 'user_register_state.dart';

class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc() : super(const UserRegisterInitial()) {
    on<CustomUserRegisterEvent>(_onCustomUserRegisterEvent);
  }

  FutureOr<void> _onCustomUserRegisterEvent(
    CustomUserRegisterEvent event,
    Emitter<UserRegisterState> emit,
  ) {
    // TODO: Add Logic
  }
}
