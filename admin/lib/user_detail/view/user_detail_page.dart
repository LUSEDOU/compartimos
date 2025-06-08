import 'package:admin/user_detail/bloc/bloc.dart';
import 'package:admin/user_detail/widgets/user_detail_body.dart';
import 'package:flutter/material.dart';

/// {@template user_detail_page}
/// A description for UserDetailPage
/// {@endtemplate}
class UserDetailPage extends StatelessWidget {
  /// {@macro user_detail_page}
  const UserDetailPage({super.key});

  /// The static route for UserDetailPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const UserDetailPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserDetailBloc(),
      child: const Scaffold(
        body: UserDetailView(),
      ),
    );
  }    
}

/// {@template user_detail_view}
/// Displays the Body of UserDetailView
/// {@endtemplate}
class UserDetailView extends StatelessWidget {
  /// {@macro user_detail_view}
  const UserDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserDetailBody();
  }
}
