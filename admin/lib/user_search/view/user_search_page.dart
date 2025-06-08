import 'package:admin/user_search/bloc/bloc.dart';
import 'package:admin/user_search/widgets/user_search_body.dart';
import 'package:flutter/material.dart';

/// {@template user_search_page}
/// A description for UserSearchPage
/// {@endtemplate}
class UserSearchPage extends StatelessWidget {
  /// {@macro user_search_page}
  const UserSearchPage({super.key});

  /// The static route for UserSearchPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const UserSearchPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserSearchBloc(),
      child: const Scaffold(
        body: UserSearchView(),
      ),
    );
  }    
}

/// {@template user_search_view}
/// Displays the Body of UserSearchView
/// {@endtemplate}
class UserSearchView extends StatelessWidget {
  /// {@macro user_search_view}
  const UserSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserSearchBody();
  }
}
