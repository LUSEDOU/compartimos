import 'package:flutter/material.dart';
import 'package:admin/user_register/bloc/bloc.dart';
import 'package:admin/user_register/widgets/user_register_body.dart';

/// {@template user_register_page}
/// A description for UserRegisterPage
/// {@endtemplate}
class UserRegisterPage extends StatelessWidget {
  /// {@macro user_register_page}
  const UserRegisterPage({super.key});

  /// The static route for UserRegisterPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const UserRegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserRegisterBloc(),
      child: const Scaffold(
        body: UserRegisterView(),
      ),
    );
  }    
}

/// {@template user_register_view}
/// Displays the Body of UserRegisterView
/// {@endtemplate}
class UserRegisterView extends StatelessWidget {
  /// {@macro user_register_view}
  const UserRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserRegisterBody();
  }
}
