import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'user_search_event.dart';
part 'user_search_state.dart';

class UserSearchBloc extends Bloc<UserSearchEvent, UserSearchState> {
  UserSearchBloc() : super(const UserSearchInitial()) {
    on<CustomUserSearchEvent>(_onCustomUserSearchEvent);
  }

  FutureOr<void> _onCustomUserSearchEvent(
    CustomUserSearchEvent event,
    Emitter<UserSearchState> emit,
  ) {
    // TODO: Add Logic
  }
}
