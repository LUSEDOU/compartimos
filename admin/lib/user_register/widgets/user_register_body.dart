import 'package:flutter/material.dart';
import 'package:admin/user_register/bloc/bloc.dart';

/// {@template user_register_body}
/// Body of the UserRegisterPage.
///
/// Add what it does
/// {@endtemplate}
class UserRegisterBody extends StatelessWidget {
  /// {@macro user_register_body}
  const UserRegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserRegisterBloc, UserRegisterState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
